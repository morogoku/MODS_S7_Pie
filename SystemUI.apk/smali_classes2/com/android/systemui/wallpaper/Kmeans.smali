.class public Lcom/android/systemui/wallpaper/Kmeans;
.super Ljava/lang/Object;
.source "Kmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;,
        Lcom/android/systemui/wallpaper/Kmeans$DominantColorResult;
    }
.end annotation


# static fields
.field private static DEFAULT_COLOR_NUM:I

.field private static DOMINANTC_COLOR_WEIGHT:[F

.field private static GRAYSCALE_COLOR_WEIGHT:[F

.field public static GRAYSCALE_LIMITE_BRIGHTNESS:F

.field public static GRAYSCALE_LIMITE_SATURATION:F

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Kmeans"

    sput-object v0, Lcom/android/systemui/wallpaper/Kmeans;->TAG:Ljava/lang/String;

    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_SATURATION:F

    sput v0, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_BRIGHTNESS:F

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/wallpaper/Kmeans;->DOMINANTC_COLOR_WEIGHT:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_COLOR_WEIGHT:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateCenter(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    div-int v3, v0, v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v2, v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v1, v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method public static checkGayScale_with_value([F)Z
    .locals 3

    const/4 v0, 0x1

    aget v1, p0, v0

    sget v2, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_SATURATION:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x2

    aget v1, p0, v1

    sget v2, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_BRIGHTNESS:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method static colorDistance_hsv_square2([F[F[F)F
    .locals 7

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v3, v1

    :cond_0
    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    aget v4, p0, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    aget v5, p1, v4

    aget v6, p0, v4

    sub-float/2addr v5, v6

    aget v0, p2, v0

    mul-float/2addr v1, v0

    aget v0, p2, v2

    mul-float/2addr v3, v0

    aget v0, p2, v4

    mul-float/2addr v5, v0

    mul-float v0, v1, v1

    mul-float v2, v3, v3

    add-float/2addr v0, v2

    mul-float v2, v5, v5

    add-float/2addr v0, v2

    return v0
.end method

.method public static kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v10, p1}, Lcom/android/systemui/wallpaper/Kmeans;->kMeans_hsv([I[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    move-result-object v0

    return-object v0
.end method

.method static kMeans_hsv([I[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    array-length v3, v1

    new-array v4, v3, [Lcom/android/systemui/wallpaper/Kmeans$DominantColorResult;

    const/16 v5, 0xa

    new-array v5, v5, [Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    new-array v6, v3, [I

    new-array v7, v3, [[F

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x3

    if-ge v9, v3, :cond_0

    aget v11, v1, v9

    aput v11, v6, v9

    new-array v10, v10, [F

    aput-object v10, v7, v9

    aget v10, v6, v9

    aget-object v11, v7, v9

    invoke-static {v10, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    array-length v9, v0

    new-array v9, v9, [[F

    const/4 v11, 0x0

    :goto_1
    array-length v12, v0

    if-ge v11, v12, :cond_1

    new-array v12, v10, [F

    aput-object v12, v9, v11

    aget v12, v0, v11

    aget-object v13, v9, v11

    invoke-static {v12, v13}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    new-array v10, v3, [Z

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_2

    aget-object v12, v7, v11

    invoke-static {v12}, Lcom/android/systemui/wallpaper/Kmeans;->checkGayScale_with_value([F)Z

    move-result v12

    aput-boolean v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v2, :cond_c

    new-array v12, v3, [Ljava/util/ArrayList;

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v3, :cond_3

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    :goto_5
    array-length v14, v0

    if-ge v13, v14, :cond_7

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v15, 0x0

    aget-object v8, v9, v13

    invoke-static {v8}, Lcom/android/systemui/wallpaper/Kmeans;->checkGayScale_with_value([F)Z

    move-result v8

    move/from16 v17, v14

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v3, :cond_6

    aget-boolean v18, v10, v14

    const/16 v19, 0x0

    if-nez v18, :cond_4

    if-nez v8, :cond_4

    aget-object v1, v9, v13

    move-object/from16 v20, v4

    aget-object v4, v7, v14

    move-object/from16 v21, v10

    sget-object v10, Lcom/android/systemui/wallpaper/Kmeans;->DOMINANTC_COLOR_WEIGHT:[F

    invoke-static {v1, v4, v10}, Lcom/android/systemui/wallpaper/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v1

    cmpg-float v4, v1, v17

    if-gez v4, :cond_5

    move v4, v1

    move v10, v14

    move/from16 v17, v4

    move v15, v10

    goto :goto_7

    :cond_4
    move-object/from16 v20, v4

    move-object/from16 v21, v10

    if-eqz v18, :cond_5

    if-eqz v8, :cond_5

    aget-object v1, v9, v13

    aget-object v4, v7, v14

    sget-object v10, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_COLOR_WEIGHT:[F

    invoke-static {v1, v4, v10}, Lcom/android/systemui/wallpaper/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v1

    cmpg-float v4, v1, v17

    if-gez v4, :cond_5

    move v4, v1

    move v1, v14

    move v15, v1

    move/from16 v17, v4

    :cond_5
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v20

    move-object/from16 v10, v21

    move-object/from16 v1, p1

    goto :goto_6

    :cond_6
    move-object/from16 v20, v4

    move-object/from16 v21, v10

    aget-object v1, v12, v15

    aget v4, v0, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v20

    move-object/from16 v1, p1

    goto :goto_5

    :cond_7
    move-object/from16 v20, v4

    move-object/from16 v21, v10

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_9

    const/4 v4, 0x0

    aget-object v8, v12, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_8

    aget-object v8, v12, v1

    invoke-static {v8}, Lcom/android/systemui/wallpaper/Kmeans;->calculateCenter(Ljava/util/List;)I

    move-result v4

    :cond_8
    aput v4, v6, v1

    aget v8, v6, v1

    aget-object v10, v7, v1

    invoke-static {v8, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v1, v2, -0x1

    if-ne v11, v1, :cond_b

    const/high16 v1, 0x3f800000    # 1.0f

    array-length v4, v0

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/16 v16, 0x0

    :goto_9
    move/from16 v4, v16

    array-length v8, v7

    if-ge v4, v8, :cond_a

    new-instance v8, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    aget-object v10, v7, v4

    aget-object v13, v12, v4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v1

    invoke-direct {v8, v10, v13}, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;-><init>([FF)V

    aput-object v8, v5, v4

    add-int/lit8 v16, v4, 0x1

    goto :goto_9

    :cond_a
    goto :goto_a

    :cond_b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v20

    move-object/from16 v10, v21

    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_c
    move-object/from16 v20, v4

    move-object/from16 v21, v10

    :goto_a
    new-instance v1, Lcom/android/systemui/wallpaper/Kmeans$1;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/Kmeans$1;-><init>()V

    invoke-static {v5, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v5
.end method

.method public static makeClusterGroup_preset1(I)[I
    .locals 9

    sget v0, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    if-ge p0, v0, :cond_0

    sget p0, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    :cond_0
    new-array v0, p0, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, -0x1000000

    const/4 v3, 0x1

    aput v1, v0, v3

    const v1, -0x777778

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    :goto_0
    if-ge v1, p0, :cond_1

    const/4 v5, 0x3

    new-array v5, v5, [F

    sget v6, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    const/high16 v7, 0x43b40000    # 360.0f

    sget v8, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    sub-int v8, p0, v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, v5, v3

    aput v6, v5, v4

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
