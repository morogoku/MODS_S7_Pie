.class public Lcom/android/systemui/keyguardimage/KeyguardImageProvider;
.super Landroid/content/ContentProvider;
.source "KeyguardImageProvider.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field private mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external deletes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "image/png"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 11

    const-string v0, "KeyguardImageProvider"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "keyguard_image_provider.flag"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "s_view_cover_capture.png"

    const-string v4, "lockscreen_capture_port.png"

    const-string v5, "lockscreen_capture_land.png"

    const-string v6, "lockscreen_capture_dex.png"

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    array-length v5, v2

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v2, v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const-string v9, "KeyguardImageProvider"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    const/4 v5, 0x2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/systemui/keyguardimage/ImageCreator;

    new-instance v6, Lcom/android/systemui/keyguardimage/ClockImageCreator;

    iget-object v7, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/keyguardimage/ClockImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v6, v2, v3

    new-instance v6, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;

    iget-object v7, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v6, v2, v4

    new-instance v6, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;

    iget-object v7, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v6, v2, v5

    iput-object v2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v2, :cond_5

    new-array v2, v5, [Lcom/android/systemui/keyguardimage/ImageCreator;

    new-instance v5, Lcom/android/systemui/keyguardimage/ClockImageCreator;

    iget-object v6, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/systemui/keyguardimage/ClockImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    new-instance v3, Lcom/android/systemui/keyguardimage/FloatingShortcutImageCreator;

    iget-object v5, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/systemui/keyguardimage/FloatingShortcutImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    :cond_5
    return v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "KeyguardImageProvider"

    const-string/jumbo v1, "openFile() %s / pid: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->createImageOption(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "KeyguardImageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openFile() imageOption "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v2, v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v3, "floating"

    const-class v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->getLockShortcutType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFloatingShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    :goto_0
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    :try_start_0
    array-length v6, v3

    :goto_1
    const/4 v7, 0x0

    if-ge v4, v6, :cond_2

    aget-object v8, v3, v4

    invoke-interface {v8, v0, v5}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_1

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v11, v5, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-virtual {v2, v9, v10, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    nop

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "tmp.png"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v10

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_1
    move-exception v11

    :try_start_6
    invoke-virtual {v7, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    :goto_3
    throw v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "KeyguardImageProvider"

    const-string/jumbo v10, "openFile() failed to delete a tmp file"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    new-instance v7, Ljava/io/File;

    const-string v9, "keyguard_image.png"

    invoke-direct {v7, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "KeyguardImageProvider"

    const-string/jumbo v10, "openFile() failed to delete a previous file: keyguard_image.png"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_6

    move-object v7, v8

    goto :goto_5

    :cond_6
    const-string v9, "KeyguardImageProvider"

    const-string/jumbo v10, "openFile() created"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_8

    const-string v9, "KeyguardImageProvider"

    const-string/jumbo v10, "openFile() failed but use a previous file"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_9

    const/high16 v9, 0x10000000

    invoke-static {v7, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    return-object v9

    :cond_9
    new-instance v9, Ljava/io/FileNotFoundException;

    const-string/jumbo v10, "operation failed"

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_3
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createImage failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyguardImageProvider"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/FileNotFoundException;

    const-string/jumbo v7, "operation failed"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    const-string v1, "KeyguardImageProvider"

    const-string/jumbo v2, "wrong uri"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "wrong uri"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const-string v0, "KeyguardImageProvider"

    const-string v1, "not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "illegal state"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external queries"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
