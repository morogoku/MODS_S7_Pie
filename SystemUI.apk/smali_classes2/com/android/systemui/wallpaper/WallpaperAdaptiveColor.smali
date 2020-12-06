.class public Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;
.super Ljava/lang/Object;
.source "WallpaperAdaptiveColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WallpaperAdaptiveColor"

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InvertAdaptiveHsvColor([F[F)[[F
    .locals 7

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    const-string v1, "InvertAdaptiveHsvColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    invoke-static {p1, v5}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v0, v6

    aget-object v3, v0, v3

    aget-object v1, v0, v1

    invoke-static {v3, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    aget-object v1, v0, v2

    aget-object v2, v0, v5

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    return-object v0
.end method

.method private static adaptiveHsvColor([F[F)[[F
    .locals 7

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    const-string v1, "adaptiveHsvColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    invoke-static {p1, v5}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v0, v6

    aget-object v3, v0, v3

    aget-object v1, v0, v1

    invoke-static {v3, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    aget-object v1, v0, v2

    aget-object v2, v0, v5

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    return-object v0
.end method

.method private static colorTuning([FI)[F
    .locals 7

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x1

    aget v2, v0, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v1, :cond_4

    const v4, 0x3c23d70a    # 0.01f

    if-ne p1, v1, :cond_1

    const/16 v5, 0x9

    if-le v2, v5, :cond_0

    const/16 v5, 0x14

    if-lt v2, v5, :cond_5

    :cond_0
    rem-int/lit8 v5, v2, 0xa

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    aput v5, v0, v1

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_3

    const/16 v5, 0x13

    if-le v2, v5, :cond_2

    const/16 v5, 0x1e

    if-lt v2, v5, :cond_5

    :cond_2
    rem-int/lit8 v5, v2, 0xa

    int-to-float v5, v5

    const/high16 v6, 0x41a00000    # 20.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    aput v5, v0, v1

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    if-ne p1, v5, :cond_5

    const/16 v5, 0xa

    if-lt v2, v5, :cond_5

    rem-int/lit8 v5, v2, 0xa

    int-to-float v5, v5

    mul-float/2addr v5, v4

    aput v5, v0, v1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    const/4 v4, 0x0

    aput v4, v0, v1

    :cond_5
    :goto_0
    const v1, 0x3f7ae148    # 0.98f

    aput v1, v0, v3

    return-object v0
.end method

.method private static colorTuningHue([F[F)V
    .locals 7

    const/4 v0, 0x0

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_3

    const/high16 v4, 0x41a00000    # 20.0f

    if-le v1, v2, :cond_1

    const/16 v5, 0x154

    if-lt v1, v5, :cond_0

    aget v5, p1, v0

    sub-float/2addr v5, v4

    aput v5, p1, v0

    goto :goto_0

    :cond_0
    aget v5, p0, v0

    add-float/2addr v5, v4

    aput v5, p0, v0

    goto :goto_0

    :cond_1
    aget v5, p1, v0

    const/high16 v6, 0x43aa0000    # 340.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    aget v5, p0, v0

    sub-float/2addr v5, v4

    aput v5, p0, v0

    goto :goto_0

    :cond_2
    aget v5, p1, v0

    add-float/2addr v5, v4

    aput v5, p1, v0

    :cond_3
    :goto_0
    return-void
.end method

.method private static colorTuningInvert([FI)[F
    .locals 8

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x1

    aget v2, v0, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v4, 0x3e8a3d71    # 0.27f

    const/4 v5, 0x2

    if-lt v2, v1, :cond_5

    add-int/lit8 v2, v2, 0x28

    const/16 v6, 0x64

    const v7, 0x3c23d70a    # 0.01f

    if-lt v2, v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v0, v1

    goto :goto_0

    :cond_0
    int-to-float v6, v2

    mul-float/2addr v6, v7

    aput v6, v0, v1

    :goto_0
    aget v6, v0, v5

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne p1, v1, :cond_1

    add-int/lit8 v3, v3, -0x28

    goto :goto_1

    :cond_1
    if-ne p1, v5, :cond_2

    add-int/lit8 v3, v3, -0xa

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const/16 v3, 0x1b

    :cond_3
    :goto_1
    const/16 v1, 0x1b

    if-ge v3, v1, :cond_4

    aput v4, v0, v5

    goto :goto_2

    :cond_4
    int-to-float v1, v3

    mul-float/2addr v1, v7

    aput v1, v0, v5

    :goto_2
    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    const/4 v3, 0x0

    aput v3, v0, v1

    aput v4, v0, v5

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static getAdaptiveColorFromBitmap(Landroid/graphics/Bitmap;IZ)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 13

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdaptiveColorFromBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/systemui/wallpaper/Kmeans;->makeClusterGroup_preset1(I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/Kmeans;->kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->hsv_color:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->hsv_color:[F

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    if-eqz p2, :cond_0

    invoke-static {v2, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->InvertAdaptiveHsvColor([F[F)[[F

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-static {v2, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->adaptiveHsvColor([F[F)[[F

    move-result-object v5

    :goto_0
    new-instance v12, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    aget-object v1, v5, v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    aget-object v1, v5, v3

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    const/4 v1, 0x2

    aget-object v1, v5, v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v9

    const/4 v1, 0x3

    aget-object v1, v5, v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    const/4 v1, 0x4

    aget-object v1, v5, v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;-><init>(IIIII)V

    return-object v12
.end method
