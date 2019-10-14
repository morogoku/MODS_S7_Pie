.class public Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;
.super Landroid/database/ContentObserver;
.source "MtpPlaylistObserver.java"


# static fields
.field static cr:Landroid/content/ContentResolver;

.field static handle1:Landroid/os/Handler;

.field static mContext:Landroid/content/Context;

.field static mCount:I

.field static map:Ljava/util/LinkedHashMap;

.field static mtpJniInterface:Landroid/mtp/MTPJNIInterface;

.field private static mtpPlaylistObserver:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

.field static playlist_std_dir:Ljava/lang/String;

.field static playlist_test_std_dir:Ljava/lang/String;


# instance fields
.field handle:Landroid/os/Handler;

.field mPath:Ljava/lang/String;

.field mRowId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->handle1:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    const-string v1, ""

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->playlist_std_dir:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->playlist_test_std_dir:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpJniInterface:Landroid/mtp/MTPJNIInterface;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->handle1:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpPlaylistObserver:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->handle:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mRowId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;
    .locals 2

    const-class v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpPlaylistObserver:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerContentObserver()V
    .locals 4

    const-string v0, "MTPPlaObsrvr"

    const-string v1, "Inside registerContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->handle:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;-><init>(Landroid/os/Handler;)V

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->cr:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createPla(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Quick list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MTPPlaObsrvr"

    const-string v1, "Ignore Quick list.pla"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->playlist_std_dir:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "MTPPlaObsrvr"

    const-string v4, "plaDir creation failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ".pla"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpJniInterface:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v0}, Landroid/mtp/MTPJNIInterface;->sendPlaAdded(Ljava/lang/String;)V

    return-void
.end method

.method createPlaFiles()V
    .locals 13

    const-string v0, "MTPPlaObsrvr"

    const-string v1, " inside createplafiles"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->cr:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_0

    const-string v2, "MTPPlaObsrvr"

    const-string v3, "Cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sput v2, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    const-string v2, "MTPPlaObsrvr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist count is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    nop

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    const-string v6, "/Playlists"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->playlist_std_dir:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    const-string v6, "/Test.txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->playlist_test_std_dir:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->playlist_std_dir:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    const-string v7, "MTPPlaObsrvr"

    const-string v8, " inside try branch createplafiles"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "MTPPlaObsrvr"

    const-string v8, " plaDir creation fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v7, "MTPPlaObsrvr"

    const-string v8, " inside deleteing plas createplafiles"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v8, "MTPPlaObsrvr"

    const-string v9, " close cursor and return as paths is null!."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    const-string v11, "MTPPlaObsrvr"

    const-string v12, " inside deleteing plas createplafiles"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".pla"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->isPlaylistPresent(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "MTPPlaObsrvr"

    const-string v12, "path deletion failed"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v7

    const-string v8, "MTPPlaObsrvr"

    const-string v9, "exception during creation and deletion of playlist dir"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget v7, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    if-ge v5, v7, :cond_a

    :try_start_2
    const-string v7, "name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v7

    nop

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\\"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "*"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "?"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\""

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "<"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, ">"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mRowId:I

    const-string v7, "MTPPlaObsrvr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Row ID is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mRowId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_data"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    const-string v8, ".pla"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    const-string v8, ".pla"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    const-string v7, "MTPPlaObsrvr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPath is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v7, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    iget v8, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mRowId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    const-string v8, "Quick list.pla"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "MTPPlaObsrvr"

    const-string v8, "Ignore Quick list.pla"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    const-string v8, "/Playlists/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, ".pla"

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "MTPPlaObsrvr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playlist file path is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_9
    :goto_4
    const-string v7, "MTPPlaObsrvr"

    const-string v8, "playlist file name is having special character so not creating pla file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v7

    const-string v8, "MTPPlaObsrvr"

    const-string v9, "exception during getting playlist name"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public isPlaylistPresent(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "MTPPlaObsrvr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaylistPresent playlistPath= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v3, "MTPPlaObsrvr"

    const-string v4, "Cur is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const-string v4, "MTPPlaObsrvr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v3, :cond_1

    const-string v2, "MTPPlaObsrvr"

    const-string v4, "Count0, return false"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    const-string v4, "MTPPlaObsrvr"

    const-string v5, "Count not 0, return true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onChange(Z)V
    .locals 28

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "MTPPlaObsrvr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On change is called."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "MTPPlaObsrvr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI of the playlist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->cr:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    const-string v0, "MTPPlaObsrvr"

    const-string v4, "Content resolver is null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "MTPPlaObsrvr"

    const-string v4, "mContext is also null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->cr:Landroid/content/ContentResolver;

    :cond_1
    const/4 v10, 0x0

    move-object v11, v10

    :try_start_0
    sget-object v4, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->cr:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v4, v0

    nop

    if-nez v4, :cond_2

    const-string v0, "MTPPlaObsrvr"

    const-string v5, "Cursor cur is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const-string v0, "MTPPlaObsrvr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Count"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "mCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    sget v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v6, 0x0

    if-ge v5, v0, :cond_9

    :try_start_2
    const-string v0, "MTPPlaObsrvr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Case is for deletion. Count before deletion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPPlaObsrvr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Actual count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    sget v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    new-array v0, v0, [I

    const-string v7, "MTPPlaObsrvr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size of the integer array"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    :goto_0
    sget v8, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    if-ge v7, v8, :cond_3

    const-string v8, "_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mRowId:I

    iget v8, v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mRowId:I

    aput v8, v0, v7

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    sget-object v8, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "MTPPlaObsrvr"

    const-string v13, "checking for next playlist deleted"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v10, v13

    const/4 v7, 0x0

    :goto_2
    sget v13, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    if-ge v7, v13, :cond_5

    const-string v13, "MTPPlaObsrvr"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "inside for loop"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v0, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget v13, v0, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v6, :cond_7

    sget-object v13, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v9, v13

    const/4 v13, 0x0

    const-string v14, ".pla"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, ".pla"

    invoke-virtual {v10, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    goto :goto_4

    :cond_6
    const-string v14, "MTPPlaObsrvr"

    const-string v15, "In Delete playlistname already contains pla "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v10

    :goto_4
    sget-object v14, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpJniInterface:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v14, v13}, Landroid/mtp/MTPJNIInterface;->sendPlaRemoved(Ljava/lang/String;)V

    const-string v14, "MTPPlaObsrvr"

    const-string v15, "Playlist is deleted."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    goto/16 :goto_1

    :cond_8
    nop

    nop

    :goto_5
    move-object/from16 v25, v2

    move/from16 v26, v5

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v26, v5

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v26, v5

    goto/16 :goto_e

    :cond_9
    :try_start_3
    sget v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-le v5, v0, :cond_f

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    const-string v0, "MTPPlaObsrvr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Case is for adding the playlist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    const-string v0, "name"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "_data"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".pla"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "MTPPlaObsrvr"

    const-string v8, "playlist is created by MTP, so don\'t send event"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "\\"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "?"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "<"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, ">"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_6

    :cond_b
    const-string v7, "/Playlists/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "MTPPlaObsrvr"

    const-string v8, "Playlist  path contains Playlist so creating it."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->createPla(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const-string v7, "MTPPlaObsrvr"

    const-string v8, "Playlist  path contains Music folder so descarding it."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    :goto_6
    const-string v7, "MTPPlaObsrvr"

    const-string v8, "playlist file name is having special character so not sending sendPlaAdded"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const-string v7, "_id"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "MTPPlaObsrvr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In Creation Row ID is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MTPPlaObsrvr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InCreation Path is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, ".pla"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, ".pla"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    const-string v8, "MTPPlaObsrvr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "path is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-object v8, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    :cond_f
    :try_start_5
    const-string v0, "MTPPlaObsrvr"

    const-string v7, "Neither deleted nor added. Could be rename"

    invoke-static {v0, v7}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    const/4 v0, 0x0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move v8, v0

    :goto_8
    sget v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mCount:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ge v8, v0, :cond_10

    :try_start_6
    const-string v0, "_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mRowId:I

    const-string v0, "name"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    iget v0, v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mRowId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_10
    :try_start_7
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v9, v0

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v11, v0

    const/4 v0, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    move-object v14, v13

    move-object v13, v12

    move-object v12, v0

    move-object v0, v10

    :goto_9
    move-object v15, v0

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_1a

    move-object/from16 v16, v10

    :try_start_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_8
    .catch Ljava/util/ConcurrentModificationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v16, v0

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v0, v16

    :goto_a
    if-eqz v0, :cond_11

    :try_start_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v12, v16

    :cond_11
    :try_start_b
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v14, v16

    if-eqz v14, :cond_19

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_19

    if-eqz v12, :cond_19

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_12

    move-object/from16 v17, v0

    move-object/from16 v25, v2

    move/from16 v26, v5

    goto/16 :goto_c

    :cond_12
    const-string v16, "/"

    move-object/from16 v15, v16

    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    const-string v10, ".pla"

    invoke-virtual {v15, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "MTPPlaObsrvr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "playlist_name is "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v0, :cond_13

    :try_start_c
    const-string v0, "MTPPlaObsrvr"

    const-string v6, "It is not renamed"

    invoke-static {v0, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    nop

    move-object v0, v10

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_13
    :try_start_d
    const-string v0, "MTPPlaObsrvr"

    const-string v6, "The DB is renamed."

    invoke-static {v0, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, ""

    const/4 v6, 0x0

    sget-object v15, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v20, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    const-string v0, "name=\""

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v15, "_data"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v25, v2

    :try_start_e
    const-string v2, "MTPPlaObsrvr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move/from16 v26, v5

    :try_start_f
    const-string v5, "playlist path before updatePlaylistPath is"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MTPPlaObsrvr"

    const-string v3, "playlist path before updatePlaylistPath"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".M3U"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".PLS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    const-string v2, "MTPPlaObsrvr"

    const-string v3, "playlist is not renamed [exception case : m3u, pls]"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_1
    move-exception v0

    move/from16 v26, v5

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move/from16 v26, v5

    goto/16 :goto_e

    :cond_15
    move-object/from16 v25, v2

    move/from16 v26, v5

    move-object/from16 v15, v24

    :cond_16
    :try_start_10
    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "MTPPlaObsrvr"

    const-string v3, "Playlist is renamed through MTP "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pla"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MTPPlaObsrvr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v0

    const-string v0, "playlist_path after renamed through MTP is "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v13, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_17
    move-object/from16 v27, v0

    const-string v0, "/Playlists/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    move-object v0, v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pla"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    const-string v3, "MTPPlaObsrvr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rename 2nd case playlist_dir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   --  playlist_path  is    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MTPPlaObsrvr"

    const-string v5, "Rename 2nd case playlist_dir"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpJniInterface:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v12}, Landroid/mtp/MTPJNIInterface;->sendPlaRemoved(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v13, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpJniInterface:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v2}, Landroid/mtp/MTPJNIInterface;->sendPlaAdded(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v12, v2}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->updatePlaylistPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->playlist_std_dir:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    const-string v3, ".pla"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    const-string v3, "MTPPlaObsrvr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rename case"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MTPPlaObsrvr"

    const-string v5, "Rename case"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpJniInterface:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v12}, Landroid/mtp/MTPJNIInterface;->sendPlaRemoved(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v13, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpJniInterface:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v2}, Landroid/mtp/MTPJNIInterface;->sendPlaAdded(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v12, v2}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->updatePlaylistPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_b
    move-object v15, v10

    goto :goto_d

    :cond_19
    move-object/from16 v17, v0

    move-object/from16 v25, v2

    move/from16 v26, v5

    :goto_c
    const-string v0, "MTPPlaObsrvr"

    const-string v2, "either DbVal or hashValue is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1a
    move-object/from16 v25, v2

    move/from16 v26, v5

    :goto_d
    :try_start_11
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v26, v5

    goto :goto_10

    :catch_4
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v26, v5

    :goto_e
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :goto_f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    nop

    return-void

    :catchall_3
    move-exception v0

    :goto_10
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_5
    move-exception v0

    move-object/from16 v25, v2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MTPPlaObsrvr"

    const-string v1, "inside setContext()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->cr:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver$1;-><init>(Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->registerContentObserver()V

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mtpJniInterface:Landroid/mtp/MTPJNIInterface;

    return-void
.end method

.method updatePlaylistPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "MTPPlaObsrvr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePlaylistPath DbVal is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "MTPPlaObsrvr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePlaylistPath  hashValue is= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "MTPPlaObsrvr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePlaylistPath  playlist_path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {p3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MTPPlaObsrvr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePlaylistPath  playlistPathWithoutPla = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->playlist_test_std_dir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v7, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    move-wide v2, v7

    const-string v7, "MTPPlaObsrvr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In updatePlaylistPath dateModified is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "MTPPlaObsrvr"

    const-string v8, "In updatePlaylistPath file deleated "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v7, "MTPPlaObsrvr"

    const-string v8, "In updatePlaylistPath file not deleated "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v7, "name"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_data"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    if-nez v7, :cond_2

    return-void

    :cond_2
    sget-object v7, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v7, "MTPPlaObsrvr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "noOfRowsUpdated = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    const-string v7, "MTPPlaObsrvr"

    const-string v8, "playlist rename DB updation sucessful"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const-string v7, "MTPPlaObsrvr"

    const-string v8, "Playlist Rename DB updation failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
