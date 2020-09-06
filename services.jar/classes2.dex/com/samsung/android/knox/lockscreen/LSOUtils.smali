.class public Lcom/samsung/android/knox/lockscreen/LSOUtils;
.super Ljava/lang/Object;
.source "LSOUtils.java"


# static fields
.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static MAX_IMAGE_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LSO_LSOUtils"

.field static final TEMP_DIR:Ljava/lang/String; = ".tmp"

.field static final TEMP_LSO_DIR:Ljava/lang/String; = ".lso"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDataLocalDirectory(Landroid/content/Context;)V
    .registers 2

    const-string v0, ".tmp"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->cleanDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static cleanDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_22
    return-void
.end method

.method public static convertDipToPixel(Landroid/content/Context;I)I
    .registers 5

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_10
    invoke-static {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static convertImageFormatToSize(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmapBySize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_10

    :cond_c
    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_10
    invoke-static {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_83

    if-nez p1, :cond_7

    goto/16 :goto_83

    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_11
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_7a

    nop

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_72

    :cond_22
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v4, 0x0

    move-object v5, v0

    :try_start_2f
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_3f
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    if-lez v7, :cond_4a

    invoke-virtual {v5, v6, v3, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3f

    :cond_4a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_57

    nop

    :try_start_4e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    nop

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    nop

    return-object p1

    :catchall_57
    move-exception v3

    if-eqz v4, :cond_60

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_60

    :catch_5e
    move-exception v3

    goto :goto_66

    :cond_60
    :goto_60
    if-eqz v5, :cond_65

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_65
    throw v3
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_66} :catch_5e

    :goto_66
    nop

    const-string v4, "LSO_LSOUtils"

    const-string v5, "copyFile() : fail to save image: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_72
    :goto_72
    const-string v3, "LSO_LSOUtils"

    const-string v4, "copyFile() : created file not exist. "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_7a
    move-exception v3

    const-string v4, "LSO_LSOUtils"

    const-string v5, "copyFile() : fail to create new file: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_83
    :goto_83
    const-string v1, "LSO_LSOUtils"

    const-string v2, "copyFile() : invalid request. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ".tmp"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ".tmp"

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x0

    return-object v1

    :cond_26
    if-nez p3, :cond_2a

    const-string p3, ""

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5a

    if-eqz p1, :cond_5a

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V

    :cond_5a
    return-object v1
.end method

.method public static createRippleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_1c

    sub-int v7, v2, v1

    int-to-float v7, v7

    div-float v3, v7, v6

    goto :goto_21

    :cond_1c
    sub-int v7, v1, v2

    int-to-float v7, v7

    div-float v4, v7, v6

    :goto_21
    nop

    :try_start_22
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6, p0, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3c} :catch_3d

    goto :goto_54

    :catch_3d
    move-exception v6

    const-string v7, "LSO_LSOUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createRippleImage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-object v0
.end method

.method public static createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->createRippleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-static {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .registers 19

    move/from16 v1, p1

    move/from16 v2, p2

    move v0, v1

    if-le v0, v2, :cond_8

    move v0, v2

    :cond_8
    move v3, v0

    const/4 v0, 0x0

    move-object v4, v0

    :try_start_b
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmapSize(Ljava/io/File;)Landroid/graphics/Point;

    move-result-object v5

    const/4 v6, 0x1

    iget v7, v5, Landroid/graphics/Point;->y:I

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    if-le v7, v2, :cond_3c

    iget v7, v5, Landroid/graphics/Point;->x:I

    if-le v7, v1, :cond_3c

    int-to-double v12, v3

    iget v7, v5, Landroid/graphics/Point;->y:I

    iget v14, v5, Landroid/graphics/Point;->x:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-double v14, v7

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-double v7, v7

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v6, v7

    goto :goto_77

    :cond_3c
    iget v7, v5, Landroid/graphics/Point;->y:I

    if-le v7, v2, :cond_5a

    int-to-double v12, v2

    iget v7, v5, Landroid/graphics/Point;->y:I

    int-to-double v14, v7

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-double v7, v7

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v6, v7

    goto :goto_77

    :cond_5a
    iget v7, v5, Landroid/graphics/Point;->x:I

    if-le v7, v1, :cond_77

    int-to-double v12, v1

    iget v7, v5, Landroid/graphics/Point;->x:I

    int-to-double v14, v7

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-double v7, v7

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v6, v7

    :cond_77
    :goto_77
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v8, Ljava/io/FileInputStream;
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_80} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_80} :catch_92

    move-object/from16 v9, p0

    :try_start_82
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v8, v0, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8d} :catch_90
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8d} :catch_8e

    goto :goto_a7

    :catch_8e
    move-exception v0

    goto :goto_95

    :catch_90
    move-exception v0

    goto :goto_a0

    :catch_92
    move-exception v0

    move-object/from16 v9, p0

    :goto_95
    const-string v5, "LSO_LSOUtils"

    const-string v6, "decodeFile: error occurs. "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a8

    :catch_9d
    move-exception v0

    move-object/from16 v9, p0

    :goto_a0
    const-string v5, "LSO_LSOUtils"

    const-string v6, "decodeFile: ioexception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a7
    nop

    :goto_a8
    return-object v4
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "LSO_LSOUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile() : File deleted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_22
    const-string v1, "LSO_LSOUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile() : Delete operation has failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    :goto_38
    goto :goto_50

    :catch_39
    move-exception v0

    const-string v1, "LSO_LSOUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile() error occurs. fileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    return-void
.end method

.method public static deleteRecursive(Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2b

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_21

    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2a
    return-void

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    nop

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    goto :goto_46

    :cond_30
    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_47

    :goto_46
    goto :goto_5e

    :catch_47
    move-exception v1

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    nop

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p1, p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    goto :goto_42

    :cond_2c
    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_43

    :goto_42
    goto :goto_5a

    :catch_43
    move-exception v1

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 13

    move v0, p1

    if-le p2, v0, :cond_4

    move v0, p2

    :cond_4
    invoke-static {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return-object v2

    :cond_c
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iput v5, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, p2

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p1

    iput v5, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    if-gtz v5, :cond_4b

    if-gtz v6, :cond_4b

    return-object v1

    :cond_4b
    if-lez v5, :cond_5c

    iget v7, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->right:I

    goto :goto_6c

    :cond_5c
    iget v7, v4, Landroid/graphics/RectF;->left:F

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v4, Landroid/graphics/RectF;->right:F

    :goto_6c
    if-lez v6, :cond_7d

    iget v7, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_8d

    :cond_7d
    iget v7, v4, Landroid/graphics/RectF;->top:F

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v4, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/RectF;->bottom:F

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v4, Landroid/graphics/RectF;->bottom:F

    :goto_8d
    nop

    :try_start_8e
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v2, v7

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v7, v1, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a8} :catch_a9

    goto :goto_b1

    :catch_a9
    move-exception v7

    const-string v8, "LSO_LSOUtils"

    const-string v9, "getBitmap: failed. "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b1
    return-object v2
.end method

.method public static getBitmapBySize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    nop

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    goto :goto_46

    :cond_30
    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_47

    :goto_46
    goto :goto_5e

    :catch_47
    move-exception v1

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmapBySize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    if-eqz v0, :cond_67

    invoke-static {v0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->resizeBitmapByScaleAndCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_67

    move-object v0, v1

    :cond_67
    return-object v0
.end method

.method private static getBitmapSize(Ljava/io/File;)Landroid/graphics/Point;
    .registers 6

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    :try_start_5
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, v0, Landroid/graphics/Point;->y:I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_42

    :catch_22
    move-exception v1

    const-string v2, "LSO_LSOUtils"

    const-string v3, "getBitmapSize: error occurs. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    :catch_2b
    move-exception v1

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmapSize: ioexception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    nop

    :goto_43
    return-object v0
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    nop

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable() - Image found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    goto :goto_46

    :cond_30
    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable() - Image not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_47

    :goto_46
    goto :goto_5e

    :catch_47
    move-exception v1

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable() error occurs. imagePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5e
    return-object v0
.end method

.method public static getMaxBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    nop

    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    goto :goto_42

    :cond_2c
    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_42} :catch_43

    :goto_42
    goto :goto_5a

    :catch_43
    move-exception v1

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-object v0
.end method

.method public static getMaxImageSize(Landroid/content/Context;)I
    .registers 5

    sget v0, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    if-lez v0, :cond_7

    sget v0, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    return v0

    :cond_7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_27

    iget v2, v0, Landroid/graphics/Point;->x:I

    sput v2, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    goto :goto_2b

    :cond_27
    iget v2, v0, Landroid/graphics/Point;->y:I

    sput v2, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    :goto_2b
    sget v2, Lcom/samsung/android/knox/lockscreen/LSOUtils;->MAX_IMAGE_SIZE:I

    return v2
.end method

.method public static getResourceDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_e
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getResourceString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_e
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isTablet()Z
    .registers 2

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static mkDir(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_38

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v0, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_3c

    :cond_2c
    const/4 v1, 0x1

    invoke-virtual {v2, v4}, Ljava/io/File;->setReadable(Z)Z

    invoke-virtual {v2, v4}, Ljava/io/File;->setWritable(Z)Z

    invoke-virtual {v2, v4, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move v0, v1

    goto :goto_3c

    :cond_38
    invoke-virtual {v2, v4, v0}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3d

    const/4 v0, 0x1

    :goto_3c
    goto :goto_56

    :catch_3d
    move-exception v0

    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mkDir() error occurs. dirPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    :goto_56
    return v0
.end method

.method public static resizeBitmapByScaleAndCropCenter(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_d

    return-object p0

    :cond_d
    const/4 v0, 0x0

    int-to-float v1, p1

    :try_start_f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_40

    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_40

    :cond_3f
    move v1, v3

    :cond_40
    :goto_40
    const-string v2, "LSO_LSOUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resizeBitmapByScaleAndCropCenter scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lt v2, p1, :cond_77

    if-lt v3, p2, :cond_77

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    goto :goto_7e

    :cond_77
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    :goto_7e
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    if-lt v2, p1, :cond_8c

    if-ge v3, p2, :cond_99

    :cond_8c
    sub-int v5, p1, v2

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-int v7, p2, v3

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_99
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_a6} :catch_a7

    return-object v0

    :catch_a7
    move-exception v1

    const-string v2, "LSO_LSOUtils"

    const-string/jumbo v3, "resizeBitmapAndCropCenter: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_4d

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_44

    :cond_17
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    move v2, v1

    :try_start_22
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_37

    :try_start_27
    invoke-static {p0, p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z

    move-result v4
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_32

    move v2, v4

    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    nop

    nop

    return v2

    :catchall_32
    move-exception v4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v4
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_37

    :catch_37
    move-exception v3

    const-string v4, "LSO_LSOUtils"

    const-string/jumbo v5, "saveBitmapToFile() : fail to save image: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v1

    :cond_44
    :goto_44
    const-string v2, "LSO_LSOUtils"

    const-string/jumbo v3, "saveBitmapToFile() : created file not exist: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_4d
    move-exception v2

    const-string v3, "LSO_LSOUtils"

    const-string/jumbo v4, "saveBitmapToFile() : fail to create new file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v1, 0x0

    return v1

    :cond_5
    const/16 v1, 0x64

    :try_start_7
    invoke-virtual {p0, p1, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    move v0, v1

    if-nez v0, :cond_16

    const-string v1, "LSO_LSOUtils"

    const-string/jumbo v2, "saveBitmapToOutputStream() : Bitmap write error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_19
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    :cond_16
    :goto_16
    goto :goto_23

    :catchall_17
    move-exception v1

    goto :goto_24

    :catch_19
    move-exception v1

    :try_start_1a
    const-string v2, "LSO_LSOUtils"

    const-string/jumbo v3, "saveBitmapToOutputStream() : error occurs. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    goto :goto_16

    :goto_23
    return v0

    :goto_24
    throw v1
.end method

.method public static scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 8

    move v0, p1

    if-le v0, p2, :cond_4

    move v0, p2

    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, p1, :cond_14

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, p2, :cond_12

    goto :goto_14

    :cond_12
    move-object v1, p0

    goto :goto_1a

    :cond_14
    :goto_14
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1b

    move-object v1, v2

    :goto_1a
    goto :goto_24

    :catch_1b
    move-exception v2

    const-string v3, "LSO_LSOUtils"

    const-string/jumbo v4, "scaledBitmap: error occurs. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-object v1
.end method
