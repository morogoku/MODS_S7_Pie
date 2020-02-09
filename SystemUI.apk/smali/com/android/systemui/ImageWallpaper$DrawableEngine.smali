.class Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation


# instance fields
.field private final MSG_UPDATE_WHITE_WALLPAPER_VAL:I

.field mBackground:Landroid/graphics/Bitmap;

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field private mBootFirstDraw:Z

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeightAtLastSurfaceSizeUpdate:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayWidthAtLastSurfaceSizeUpdate:I

.field mForceDraw:Z

.field mGetBackgroundHSV:Z

.field private mIsConfigurationChanged:Z

.field mIsLand:Z

.field private mLastDeviceHeight:I

.field private mLastDeviceWidth:I

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field mLastRotation:I

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastXTranslation:I

.field mLastYTranslation:I

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedsDrawAfterLoadingWallpaper:Z

.field mOffsetsChanged:Z

.field private mOnColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

.field private mRotationAtLastSurfaceSizeUpdate:I

.field mScale:F

.field mSmartCroppedResult:Landroid/graphics/Rect;

.field private mSurfaceRedrawNeeded:Z

.field private mSurfaceValid:Z

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;

.field private final mUnloadWallpaperCallback:Ljava/lang/Runnable;

.field mVisible:Z

.field private mWallpaperTiltSettingChanged:Landroid/database/ContentObserver;

.field private mWallpaperType:I

.field private mWallpaperTypeObserver:Landroid/database/ContentObserver;

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    new-instance v0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$DrawableEngine$NJnw285KGKe6wEAiXHs5XJx5qSc;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$DrawableEngine$NJnw285KGKe6wEAiXHs5XJx5qSc;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mUnloadWallpaperCallback:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsLand:Z

    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsConfigurationChanged:Z

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    const/16 v0, 0x2be

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->MSG_UPDATE_WHITE_WALLPAPER_VAL:I

    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceWidth:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceHeight:I

    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBootFirstDraw:Z

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOnColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTypeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    const-string v0, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWallpaperType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setFixedSizeAllowed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->canRotate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSmartCropRect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateBitmap(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Landroid/view/DisplayInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method private canRotate()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->isDexStandAloneMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    sget-boolean v2, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "sub_display_system_wallpaper_transparency"

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    nop

    :cond_2
    return v1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    if-eqz v11, :cond_8

    :try_start_0
    const-string v0, "ImageWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redrawing: left="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move v12, v5

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move v13, v5

    iget v5, v0, Landroid/view/DisplayInfo;->rotation:I

    move v14, v5

    int-to-float v5, v3

    iget-object v6, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v6, v7

    add-float v15, v5, v6

    int-to-float v5, v4

    iget-object v6, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v6, v7

    add-float v10, v5, v6

    if-ltz p2, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v0

    move v0, v10

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Landroid/graphics/Canvas;->save(I)I

    int-to-float v6, v3

    int-to-float v7, v4

    sget-object v16, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v5, v11

    move v8, v15

    move v9, v10

    move-object/from16 v17, v0

    move v0, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    const/high16 v5, -0x1000000

    invoke-virtual {v11, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    iget-object v5, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {v5, v6, v7, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string v6, "ImageWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redrawing in rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with surface size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsLand:Z

    if-eqz v6, :cond_6

    iget-object v6, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v6}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->canRotate()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v12

    move v8, v13

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$200()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v9}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v9

    if-eqz v9, :cond_2

    div-int/lit8 v9, v6, 0xa

    add-int/2addr v6, v9

    div-int/lit8 v9, v8, 0xa

    add-int/2addr v8, v9

    :cond_2
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v6

    int-to-float v7, v8

    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-direct {v9, v0, v0, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v9

    iget v7, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    iget v10, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    sub-int/2addr v10, v6

    int-to-float v10, v10

    div-float/2addr v10, v9

    sget-boolean v9, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    const/4 v3, 0x1

    if-ne v9, v3, :cond_3

    iget v9, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    sub-int/2addr v9, v6

    int-to-float v9, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v9, v16

    iget v9, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    sub-int/2addr v9, v8

    int-to-float v9, v9

    div-float v10, v9, v16

    :cond_3
    const-string v9, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "translatedX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",translatedY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    move v4, v10

    const/4 v9, 0x0

    move/from16 v19, v3

    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v3, :cond_5

    iget v3, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    const/high16 v9, 0x42b40000    # 90.0f

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    if-ne v14, v3, :cond_5

    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v3, :cond_5

    iget v3, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    int-to-float v3, v3

    sub-float v4, v3, v10

    const/high16 v9, 0x43870000    # 270.0f

    :cond_5
    move/from16 v3, v19

    :goto_2
    invoke-virtual {v11, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v11, v9}, Landroid/graphics/Canvas;->rotate(F)V

    move/from16 v20, v3

    const-string v3, "ImageWallpaper"

    move/from16 v21, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v6

    const-string v6, "mSmartCroppedResult: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iget-object v4, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v4, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    move/from16 v18, v0

    iget-object v0, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v11, v0, v3, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const-string v0, "ImageWallpaper"

    const-string v3, "drawWallpaperWithCanvas. draw finish"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-interface {v2, v11}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {v2, v11}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0

    :cond_8
    :goto_4
    return-void
.end method

.method private getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    return-void
.end method

.method private loadWallpaper(Z)V
    .locals 3

    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadWallpaper needDraw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", useCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$1500(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const-string v0, "ImageWallpaper"

    const-string v1, "Skipping loadWallpaper, already in flight "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    return-void
.end method

.method private scheduleUnloadWallpaper()V
    .locals 4

    const-string v0, "ImageWallpaper"

    const-string/jumbo v1, "scheduleUnloadWallpaper: unLoadWallpaper after 5000ms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mUnloadWallpaperCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mUnloadWallpaperCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unloadWallpaper(Z)V
    .locals 3

    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unloadWallpaper: forgetSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->hwuiDestroy()V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    return-void
.end method

.method private updateBitmap(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Landroid/graphics/Bitmap;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ImageWallpaper"

    const-string/jumbo v3, "updateBitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setWhiteBgSettings(Landroid/app/WallpaperColors;)V

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->canRotate()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSmartCropRect()V

    :cond_2
    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mBootFirstDraw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBootFirstDraw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;ZZ)Z

    iget-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBootFirstDraw:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->isDexDualViewMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2, v5}, Lcom/android/systemui/ImageWallpaper;->access$1502(Lcom/android/systemui/ImageWallpaper;Z)Z

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    iput-boolean v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    iput-boolean v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBootFirstDraw:Z

    return-void
.end method

.method private updateSmartCropRect()V
    .locals 30

    move-object/from16 v1, p0

    const-string v0, "ImageWallpaper"

    const-string/jumbo v2, "updateSmartCropRect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    const-string v2, "ImageWallpaper"

    const-string v3, "mBackground == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ImageWallpaper"

    const-string v3, "mBackground is recycled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v2, Landroid/view/DisplayInfo;->rotation:I

    iget-object v6, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v15, v7

    new-instance v7, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    invoke-direct {v7}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;-><init>()V

    move-object v14, v7

    new-instance v7, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v7}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    move-object v13, v7

    invoke-virtual {v13}, Lcom/samsung/android/media/face/SemFaceDetection;->init()I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v7

    mul-int v7, v6, v15

    new-array v7, v7, [I

    move-object v11, v7

    iget-object v7, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iget-object v7, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v11

    move v10, v6

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 v19, v12

    move/from16 v12, v17

    move-object/from16 v20, v13

    move v13, v6

    move/from16 v21, v0

    move-object v0, v14

    move v14, v15

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const-string v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bmpWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", bmpHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", deviceHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v8, 0x1

    if-eq v5, v8, :cond_3

    const/4 v9, 0x3

    if-ne v5, v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, v10

    nop

    :cond_3
    :goto_0
    if-eqz v8, :cond_4

    int-to-float v9, v4

    int-to-float v11, v3

    :goto_1
    div-float/2addr v9, v11

    goto :goto_2

    :cond_4
    int-to-float v9, v3

    int-to-float v11, v4

    goto :goto_1

    :goto_2
    move v11, v6

    int-to-float v12, v6

    mul-float/2addr v12, v9

    float-to-int v12, v12

    const-string v13, "ImageWallpaper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceRatio: "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", landBitmapWidth : "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", landBitmapHeight : "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x1000

    move-object/from16 v13, v18

    invoke-virtual {v0, v13, v6, v15, v10}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage([IIII)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v22, v2

    move-object/from16 v2, v19

    move-object/from16 v14, v20

    invoke-virtual {v14, v10, v2}, Lcom/samsung/android/media/face/SemFaceDetection;->run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    move-result v10

    move/from16 v23, v3

    const-string v3, "ImageWallpaper"

    move/from16 v24, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v5

    const-string v5, "Number of faces = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v4}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    const-string v5, "ImageWallpaper"

    move-object/from16 v26, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v6

    const-string v6, "faceRect is : ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v2, v5, :cond_5

    move-object v2, v4

    move-object v7, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v26

    move/from16 v6, v27

    goto :goto_3

    :cond_6
    move-object/from16 v26, v2

    move/from16 v27, v6

    invoke-virtual {v14}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    if-nez v10, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "ImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ findObjectRect() ] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v2

    :cond_7
    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recognizedRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v12, 0x2

    div-int/lit8 v5, v15, 0x2

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    sub-int v6, v5, v4

    move/from16 v28, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_8
    move/from16 v28, v5

    sub-int v5, v15, v4

    if-le v3, v5, :cond_9

    sub-int v5, v15, v12

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    if-lt v3, v4, :cond_a

    sub-int v5, v3, v4

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_a
    :goto_4
    iput-object v2, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    const-string v5, "ImageWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v2

    const-string v2, "[ findCropRect() of Real Image] : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseImage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang.LinkageError occurred when smart cropping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred when smart cropping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    nop

    :goto_6
    return-void
.end method


# virtual methods
.method drawFrame()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    return-void
.end method

.method drawFrame(Z)V
    .locals 24

    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v9, 0x8

    :try_start_0
    const-string v0, "drawWallpaper"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move v11, v1

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move v12, v1

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    move v13, v1

    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newRotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mLastRotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$1900(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->isDexModeChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-eq v13, v1, :cond_1

    iput v13, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    const-string v1, "ImageWallpaper"

    const-string/jumbo v2, "redraw is not needed, because rotation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v4, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    invoke-static {v1, v4}, Lcom/android/systemui/ImageWallpaper;->access$2002(Lcom/android/systemui/ImageWallpaper;I)I

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v13, v1, :cond_2

    if-nez p1, :cond_2

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$2000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v1

    iget-object v4, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$2100(Lcom/android/systemui/ImageWallpaper;)I

    move-result v4

    if-eq v1, v4, :cond_8

    :cond_2
    iput v13, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    iput v11, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    iput v12, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v7, v1, v0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ImageWallpaper"

    const-string v2, "SurfaceSize updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_2
    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v13, v1, :cond_4

    if-eqz p1, :cond_8

    :cond_4
    if-eq v13, v3, :cond_6

    const/4 v1, 0x3

    if-ne v13, v1, :cond_5

    goto :goto_0

    :cond_5
    iput-boolean v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsLand:Z

    goto :goto_1

    :cond_6
    :goto_0
    iput-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsLand:Z

    :goto_1
    const-string v1, "ImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsLand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsLand:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v7, v1, v0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ImageWallpaper"

    const-string v2, "SurfaceSize updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_7
    :try_start_3
    iput v13, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    move-object v14, v1

    invoke-interface {v14}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    move-object v15, v1

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    if-ne v1, v4, :cond_22

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    if-eq v1, v4, :cond_9

    move/from16 v21, v11

    goto/16 :goto_11

    :cond_9
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    move v6, v1

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v5, v1

    const-string v1, "ImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawFrame:[frame.width()]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "[frame.height()]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    if-ne v6, v1, :cond_b

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-eq v5, v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    move v1, v3

    :goto_3
    move v4, v1

    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "surfaceDimensionsChanged="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " mDisplayWidth="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mDisplayHeight="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_c

    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNewKeyboard : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v9}, Lcom/android/systemui/ImageWallpaper;->access$2000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mLastKeyboard : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v9}, Lcom/android/systemui/ImageWallpaper;->access$2100(Lcom/android/systemui/ImageWallpaper;)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mForceDraw = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    const/4 v9, 0x2

    if-le v1, v2, :cond_d

    if-eq v13, v3, :cond_e

    :cond_d
    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-ge v1, v2, :cond_f

    if-ne v13, v9, :cond_f

    :cond_e
    iput-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    :cond_f
    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_12

    if-nez v4, :cond_11

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v13, v2, :cond_11

    iget-boolean v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceRedrawNeeded:Z

    if-nez v2, :cond_11

    iget-object v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$2000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    iget-object v10, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v10}, Lcom/android/systemui/ImageWallpaper;->access$2100(Lcom/android/systemui/ImageWallpaper;)I

    move-result v10

    if-ne v2, v10, :cond_11

    iget-boolean v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    if-eqz v2, :cond_10

    goto :goto_4

    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    :cond_11
    :goto_4
    move v2, v3

    :goto_5
    move v1, v2

    iget-object v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v10, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v10}, Lcom/android/systemui/ImageWallpaper;->access$2000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v10

    invoke-static {v2, v10}, Lcom/android/systemui/ImageWallpaper;->access$2102(Lcom/android/systemui/ImageWallpaper;I)I

    goto :goto_8

    :cond_12
    if-nez v4, :cond_14

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v13, v2, :cond_14

    iget-boolean v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsConfigurationChanged:Z

    if-nez v2, :cond_14

    iget-boolean v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceRedrawNeeded:Z

    if-nez v2, :cond_14

    iget-boolean v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    const/4 v2, 0x0

    goto :goto_7

    :cond_14
    :goto_6
    move v2, v3

    :goto_7
    move v1, v2

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMirrorLinkEnabled()Z

    move-result v2

    move v10, v2

    iget-object v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eq v2, v10, :cond_15

    const-string v2, "ImageWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPrevMirrorLinkEnabled="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isMirrorLinkEnabled()="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2, v10}, Lcom/android/systemui/ImageWallpaper;->access$2202(Lcom/android/systemui/ImageWallpaper;Z)Z

    const/4 v1, 0x1

    :cond_15
    move v9, v1

    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSurfaceRedrawNeeded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceRedrawNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mForceDraw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", redrawNeeded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mOffsetsChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_16

    iget-boolean v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-nez v1, :cond_16

    const-string v1, "ImageWallpaper"

    const-string v2, "Suppressed drawFrame since redraw is not needed and offsets have not changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_16
    :try_start_4
    iput v13, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceRedrawNeeded:Z

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1a

    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reloading bitmap: mBackground, bgw, bgh, dw, dh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v3, :cond_17

    const/4 v3, 0x0

    goto :goto_9

    :cond_17
    iget-object v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v3, :cond_18

    const/4 v3, 0x0

    goto :goto_a

    :cond_18
    iget-object v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->isDexModeChanged()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V

    goto :goto_b

    :cond_19
    const/4 v1, 0x1

    invoke-direct {v7, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V

    :goto_b
    const-string v1, "ImageWallpaper"

    const-string v2, "Reloading, resuming draw later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1a
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsConfigurationChanged:Z

    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAX_TEXTURE_SIZE: 8192 mBackgroundWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mBackgroundHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_1c

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-le v1, v2, :cond_1b

    goto :goto_c

    :cond_1b
    move/from16 v20, v10

    move/from16 v21, v11

    goto/16 :goto_f

    :cond_1c
    :goto_c
    const-string v1, "ImageWallpaper"

    const-string v3, "crop the original background"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background size "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " exceeds the support maximum of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2000

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2000

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    const/16 v2, 0x2000

    if-le v1, v2, :cond_1d

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int v2, v1, v2

    goto :goto_d

    :cond_1d
    const/4 v2, 0x0

    :goto_d
    move v1, v2

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    const/16 v3, 0x2000

    if-le v2, v3, :cond_1e

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int/2addr v2, v3

    goto :goto_e

    :cond_1e
    const/4 v2, 0x0

    :goto_e
    const-string v3, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v10

    const-string v10, "cropWidth : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " cropHeight: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    div-int/lit8 v8, v1, 0x2

    div-int/lit8 v10, v2, 0x2

    move/from16 v21, v11

    iget v11, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    sub-int/2addr v11, v1

    move/from16 v22, v1

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    sub-int/2addr v1, v2

    invoke-static {v3, v8, v10, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v3, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    const-string v1, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "crop completed, backgroundWidth: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " backgroundHeight: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v6

    iget-object v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v5

    iget-object v8, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v8, v6, v1

    iget-object v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v10, v5, v1

    int-to-float v1, v8

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    mul-float/2addr v1, v2

    float-to-int v11, v1

    int-to-float v1, v10

    iget v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getMobileKeyboardHeight()I

    move-result v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_1f
    move v3, v1

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-eqz v4, :cond_20

    iput v6, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iput v5, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v4

    const-string v4, "mLastSurfaceWidth:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLastSurfaceHeight:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_20
    move/from16 v23, v4

    :goto_10
    if-nez v9, :cond_21

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    if-ne v11, v1, :cond_21

    iget v1, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    if-ne v3, v1, :cond_21

    const-string v1, "ImageWallpaper"

    const-string v2, "Suppressed drawFrame since the image has not actually moved an integral number of pixels."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_21
    :try_start_6
    iput v11, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    iput v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    const-string v1, "ImageWallpaper"

    const-string v2, "Redrawing wallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    move-object v2, v14

    move/from16 v16, v3

    move v3, v8

    move/from16 v17, v23

    move v4, v10

    move/from16 v18, v5

    move v5, v11

    move/from16 v19, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->scheduleUnloadWallpaper()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_22
    move/from16 v21, v11

    :goto_11
    :try_start_7
    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastRequestedWidth, mLastRequestedHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    iput-boolean v2, v7, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ImageWallpaper.DrawableEngine:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackground="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mBackgroundWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mBackgroundHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastSurfaceWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastSurfaceHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mYOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mOffsetsChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastXTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastYTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mScale="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastRequestedWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastRequestedHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " DisplayInfo at last updateSurfaceSize:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  rotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  width="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  height="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getMobileKeyboardHeight()I
    .locals 4

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public isMirrorLinkEnabled()Z
    .locals 2

    const-string v0, "1"

    const-string v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMobileKeyboardCovered()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "ImageWallpaper"

    const-string v3, "MOBILEKEYBOARD_COVERED_YES"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mIsConfigurationChanged:Z

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-ge v2, v1, :cond_0

    const-string v4, "ImageWallpaper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onConfigurationChanged deviceWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " deviceHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$900(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1, v0}, Lcom/android/systemui/ImageWallpaper;->access$002(Lcom/android/systemui/ImageWallpaper;I)I

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1, v2}, Lcom/android/systemui/ImageWallpaper;->access$1502(Lcom/android/systemui/ImageWallpaper;Z)Z

    :cond_0
    const-string v1, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate: mCurrentWhich = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mFolderStateChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$1500(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOnColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$200()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v5}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wallpaper_tilt_status"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1

    nop

    move v5, v2

    goto :goto_0

    :cond_1
    nop

    move v5, v3

    :goto_0
    invoke-static {v1, v5}, Lcom/android/systemui/ImageWallpaper;->access$302(Lcom/android/systemui/ImageWallpaper;Z)Z

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "wallpaper_tilt_status"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v1, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDefaultDisplay:Landroid/view/Display;

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceHeight:I

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceWidth:I

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-string v6, "display"

    invoke-virtual {v5, v6}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    invoke-static {v2, v5}, Lcom/android/systemui/ImageWallpaper;->access$1702(Lcom/android/systemui/ImageWallpaper;Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$1700(Lcom/android/systemui/ImageWallpaper;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v2, v5, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1700(Lcom/android/systemui/ImageWallpaper;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOnColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 3

    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOffsetsChanged: xOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", yOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", xOffsetStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", yOffsetStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", xPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offsets changed to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    iput p2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceChanged: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    const-string v0, "ImageWallpaper"

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const-string v0, "ImageWallpaper"

    const-string/jumbo v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "ImageWallpaper"

    const-string/jumbo v1, "onSurfaceRedrawNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceRedrawNeeded:Z

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    :goto_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3

    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged: mVisible, visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_1

    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Visibility changed to visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageWallpaper"

    const-string/jumbo v1, "onVisibilityChanged(): Tilt status changed / call drawFrame with forceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ImageWallpaper;->access$402(Lcom/android/systemui/ImageWallpaper;Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    :cond_1
    :goto_0
    return-void
.end method

.method setWhiteBgSettings(Landroid/app/WallpaperColors;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.wallpaper.settings_systemui_transparency"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWhiteBgSettings: swpType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez p1, :cond_1

    iget-object v6, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v6}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v7}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v2, "ImageWallpaper"

    const-string/jumbo v3, "setWhiteBgSettings: primaryColor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v5, p1

    :cond_2
    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v6

    and-int/lit8 v7, v6, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    if-nez v7, :cond_4

    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setWhiteBgSettings: no extraHints, hints ="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    and-int/lit8 v8, v6, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    move v8, v3

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_2
    and-int/lit8 v9, v6, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_6

    move v9, v3

    goto :goto_3

    :cond_6
    move v9, v2

    :goto_3
    and-int/lit8 v10, v6, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7

    move v10, v3

    goto :goto_4

    :cond_7
    move v10, v2

    :goto_4
    iget-object v11, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v11}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "need_dark_statusbar"

    invoke-static {v11, v12, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v3, :cond_8

    move v11, v3

    goto :goto_5

    :cond_8
    move v11, v2

    :goto_5
    iget-object v12, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v12}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "need_dark_font"

    invoke-static {v12, v13, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v3, :cond_9

    move v12, v3

    goto :goto_6

    :cond_9
    move v12, v2

    :goto_6
    iget-object v13, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v13}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "need_dark_navigationbar"

    invoke-static {v13, v14, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v3, :cond_a

    move v13, v3

    goto :goto_7

    :cond_a
    move v13, v2

    :goto_7
    const-string v14, "ImageWallpaper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBody = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hints = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", [oldValStatusBar="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", newValStatusBar="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] [oldValBody="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", newValBody="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] [oldValNaviBar="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", newValNaviBar="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v11, v8, :cond_c

    iget-object v3, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v3}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v14, "need_dark_statusbar"

    if-eqz v8, :cond_b

    const/4 v15, 0x1

    goto :goto_8

    :cond_b
    nop

    move v15, v2

    :goto_8
    invoke-static {v3, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_c
    if-nez v4, :cond_d

    iget-object v3, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v3}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v14, "need_dark_font"

    invoke-static {v3, v14, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_d
    if-eq v12, v9, :cond_f

    iget-object v3, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v3}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v14, "need_dark_font"

    if-eqz v9, :cond_e

    const/4 v15, 0x1

    goto :goto_9

    :cond_e
    nop

    move v15, v2

    :goto_9
    invoke-static {v3, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_f
    :goto_a
    sget-boolean v3, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_11

    if-eq v13, v10, :cond_11

    iget-object v3, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v3}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v14, "need_dark_navigationbar"

    if-eqz v10, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    nop

    :goto_b
    invoke-static {v3, v14, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_11
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/ImageWallpaper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method trimMemory(I)V
    .locals 2

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "ImageWallpaper"

    const-string/jumbo v1, "trimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSmartCroppedResult:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_0
    return-void
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;ZZ)Z
    .locals 8

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->isDexModeChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    invoke-direct {p0, p3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(Z)V

    :goto_0
    const-string v1, "ImageWallpaper"

    const-string v2, "Reloading, redoing updateSurfaceSize later."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2
    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper;->access$1800(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-le v1, v2, :cond_3

    move v3, v1

    move v1, v2

    move v2, v3

    const-string v4, "ImageWallpaper"

    const-string v5, "Change value displayWidth and displayHeight"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMirrorLinkEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ImageWallpaper"

    const-string v6, "isMirrorLinkEnabled is true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    move v4, v2

    :cond_4
    const-string v5, "ImageWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deviceWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " deviceHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " displayWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " displayHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " backgroundWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " backgroundHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " surfaceWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " surfaceHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " tiltEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v7}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " lastRequestedWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " lastRequestedHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$200()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v5

    if-eqz v5, :cond_6

    div-int/lit8 v5, v1, 0xa

    add-int/2addr v5, v1

    if-ge v3, v5, :cond_5

    div-int/lit8 v5, v1, 0xa

    add-int/2addr v5, v1

    move v3, v5

    :cond_5
    div-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_6

    div-int/lit8 v5, v2, 0xa

    add-int v4, v2, v5

    :cond_6
    const/4 v5, 0x1

    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    if-ne v6, v3, :cond_7

    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    if-ne v6, v4, :cond_7

    const/4 v5, 0x0

    :cond_7
    if-eqz p4, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    :cond_8
    invoke-interface {p1, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    return v0
.end method
