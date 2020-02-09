.class public Lcom/android/systemui/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;,
        Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    }
.end annotation


# static fields
.field private static mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

.field private static mCroppedScale:F

.field private static mCurrentWhich:I

.field private static mIsAdaptiveColorMode:Z

.field private static mIsDesktopMode:Z

.field private static mIsEmergencyMode:Z

.field private static mIsOperatorWallpaper:Z

.field private static mIsUltraPowerSavingMode:Z

.field private static mLastAdaptiveColorDebugMsg:Ljava/lang/String;

.field public static mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLastAdaptiveColorDebugMsg:Ljava/lang/String;

    const/4 v1, 0x2

    sput v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCurrentWhich:I

    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsOperatorWallpaper:Z

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCroppedScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkIfNotThemeTypeDirectly(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_transparent"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "WallpaperUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SWP type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static copyFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .locals 10

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    const/4 v4, 0x0

    const/16 v5, 0x400

    :try_start_2
    new-array v6, v5, [B

    :goto_0
    invoke-virtual {v0, v6, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v3, v6, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v2, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v4, v2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    :goto_1
    :try_start_6
    invoke-static {v4, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_2
    :try_start_8
    invoke-static {v2, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    const-string v1, "WallpaperUtils"

    const-string v2, "Can not copy to file."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_4
    return v1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "WallpaperUtils : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Emergency mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  UltraPowerSavingMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  ExternalLiveWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  NotKWPType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  KWPType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  DeXMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    const-string v0, "  InfinityWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  InfinityName: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Adaptive colors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    goto :goto_0

    :cond_1
    const-string v1, "empty"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    - Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    - Msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLastAdaptiveColorDebugMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "empty"

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLastAdaptiveColorDebugMsg:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static getAdaptiveColorMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    return v0
.end method

.method public static getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 3

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-eqz v0, :cond_0

    const-string v0, "WallpaperUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdaptiveColorValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "WallpaperUtils"

    const-string v1, "getAdaptiveColorValue color is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static getBlendedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDisplayInfo(Landroid/content/Context;)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v2, v2

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070336

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070335

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v4, v6

    sub-float v4, v2, v4

    const/4 v6, 0x4

    new-array v13, v6, [F

    const/4 v15, 0x0

    aput v15, v13, v5

    div-float v5, v3, v2

    const/4 v14, 0x1

    aput v5, v13, v14

    div-float v5, v4, v2

    const/4 v7, 0x2

    aput v5, v13, v7

    const/4 v5, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v13, v5

    new-array v12, v6, [I

    fill-array-data v12, :array_0

    new-instance v5, Landroid/graphics/LinearGradient;

    int-to-float v11, v1

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v5

    move v15, v14

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    move-object/from16 v10, p1

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    int-to-float v9, v0

    int-to-float v11, v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v8

    move/from16 v19, v9

    move/from16 v20, v11

    move-object/from16 v21, v6

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v7

    :array_0
    .array-data 4
        -0x78000000
        -0x1
        -0x1
        -0x78000000
    .end array-data
.end method

.method public static getCurrentWhich()I
    .locals 1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCurrentWhich:I

    return v0
.end method

.method public static getDefaultColorCodeFromResource(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "black"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getDisplayInfo(Landroid/content/Context;)Landroid/view/DisplayInfo;
    .locals 4

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object v3
.end method

.method public static getEmergencyMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    return v0
.end method

.method public static getFileExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getOriginalVideoResolution(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 6

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "WallpaperUtils"

    const-string v4, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "WallpaperUtils"

    const-string v4, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    return-object v0

    :goto_2
    nop

    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v4, "WallpaperUtils"

    const-string v5, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    throw v2
.end method

.method public static getOutputVideoResolution(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 9

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getOriginalVideoResolution(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->getRemainedVideoCapacity()I

    move-result v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-lez v5, :cond_0

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-lez v5, :cond_0

    int-to-float v5, v4

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float v1, v5, v6

    goto :goto_0

    :cond_0
    const-string v5, "WallpaperUtils"

    const-string v6, "Can\'t Trim videofile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v5, "WallpaperUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remained size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", video ratio : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v5, v1

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    float-to-double v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Point;->y:I

    :cond_1
    iget v5, v0, Landroid/graphics/Point;->x:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_2

    iget v5, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Landroid/graphics/Point;->x:I

    :cond_2
    iget v5, v0, Landroid/graphics/Point;->y:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_3

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/graphics/Point;->y:I

    :cond_3
    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getUltraPowerSavingMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    return v0
.end method

.method public static getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6

    const-string v0, "WallpaperUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoFDFromPackage() pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WallpaperUtils"

    const-string v4, "Can not found package name"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "WallpaperUtils"

    const-string v3, "getVideoFDFromPackage() otherContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "WallpaperUtils"

    const-string v4, "getVideoFDFromPackage() assetManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v3

    const-string v4, "WallpaperUtils"

    const-string v5, "Can not access to openFd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static isChangedInfinityName(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "infinity name previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method public static isDexMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    return v0
.end method

.method public static isExternalLiveWallpaper(Landroid/content/Context;)Z
    .locals 7

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "WallpaperUtils"

    const-string v6, "Setting value about lockscreen_wallpaper not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    const-string v1, "WallpaperUtils"

    const-string v4, "external live wallpaper is true"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    return v1
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isLockType(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v1, :cond_2

    :cond_0
    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isSupportAdaptiveColor()Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    const-string v1, "WallpaperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", emergency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", upsm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isSupportDeletableTrim()Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MULTIMEDIA_EDITOR_PLUGIN_PACKAGES"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    const-string v6, "videotrimmer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v2, "WallpaperUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Videotrimmer can download: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isVideoTrimAvailable(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static setAdaptiveColorMode(Landroid/content/Context;Z)V
    .locals 3

    sput-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    const-string v0, "lockscreen_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "9010"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_0

    const-string v0, "lockscreen_pref"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "9009"

    const-string v2, "Adaptive color (Default)"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method protected static setAdaptiveColors(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 4

    sput-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p0, :cond_0

    const-string v2, "removed"

    goto :goto_0

    :cond_0
    const-string v2, "updated"

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/LogUtil;->getMsg(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLastAdaptiveColorDebugMsg:Ljava/lang/String;

    return-void
.end method

.method public static setCroppedScaled(F)V
    .locals 0

    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCroppedScale:F

    return-void
.end method

.method public static setCurrentWhich(I)V
    .locals 0

    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCurrentWhich:I

    return-void
.end method

.method public static setDexMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    return-void
.end method

.method public static setEmergencyMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    return-void
.end method

.method public static setOperatorWallpaper(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsOperatorWallpaper:Z

    return-void
.end method

.method public static setUltraPowerSavingMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    return-void
.end method
