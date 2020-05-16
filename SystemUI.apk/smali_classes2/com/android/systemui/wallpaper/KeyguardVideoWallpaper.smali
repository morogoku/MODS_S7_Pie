.class public Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardVideoWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

.field private mCurrentWhich:I

.field private mHasWindowFocus:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field protected mStatusBarHeight:I

.field private mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceTransformHandler:Landroid/os/Handler;

.field private mTextureView:Landroid/view/TextureView;

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentWhich:I

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTransformHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardVideoWallpaper$9yFSnswEEVLdz9tOTf5xRZbH3O8;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardVideoWallpaper$9yFSnswEEVLdz9tOTf5xRZbH3O8;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentWhich:I

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string v1, "video_1.mp4"

    invoke-static {v0, p3, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardVideoWallpaper"

    const-string v2, "Showing state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/video/VideoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyPortraitRotation()V
    .locals 10

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "KeyguardVideoWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isRtl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-nez v1, :cond_2

    move v4, v5

    nop

    :cond_2
    or-int/2addr v4, v6

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->getDisplayRotation()I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v4, v5, :cond_4

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_4
    if-ne v4, v6, :cond_5

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setRotation(F)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_c

    if-eq v4, v5, :cond_9

    if-ne v4, v6, :cond_7

    goto :goto_3

    :cond_7
    if-le v2, v1, :cond_8

    move v5, v1

    move v1, v2

    move v2, v5

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setTranslationX(F)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setTranslationY(F)V

    const-string v5, "KeyguardVideoWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#2 port w = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->requestLayout()V

    goto :goto_5

    :cond_9
    :goto_3
    if-le v1, v2, :cond_a

    move v5, v1

    move v1, v2

    move v2, v5

    :cond_a
    sub-int v5, v2, v1

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    if-eqz v3, :cond_b

    neg-float v7, v5

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setTranslationX(F)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setTranslationX(F)V

    :goto_4
    sub-int v7, v1, v2

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setTranslationY(F)V

    const-string v6, "KeyguardVideoWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#2 land w = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", h = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->requestLayout()V

    nop

    :cond_c
    :goto_5
    return-void
.end method

.method private drawVideo(Z)V
    .locals 3

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawVideo() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    :goto_0
    return-void
.end method

.method private getDisplayRotation()I
    .locals 3

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;FFFFII)V
    .locals 3

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScaleSurface() sx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", px = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", py = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p5, v1, Landroid/os/Message;->arg1:I

    iput p6, v1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mSurfaceTransformHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private loadMediaPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string v1, "releaseVideoPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    return-void
.end method

.method private setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V
    .locals 4

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState() c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", n = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    const-string v1, "KeyguardVideoWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenState, prevState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$4;->$SwitchMap$com$android$systemui$wallpaper$KeyguardVideoWallpaper$ScreenState:[I

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->cancelReleaseResource()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->loadMediaPlayer()V

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    nop

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommand() action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WAKE_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    goto :goto_0

    :cond_0
    const-string v0, "ACTION_UNLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->HOME:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    goto :goto_0

    :cond_1
    const-string v0, "SLEEP_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->BLACK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->setScreenState(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->applyPortraitRotation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    if-eq v2, p5, :cond_2

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    if-eq v2, v1, :cond_2

    :cond_0
    const-string v2, "KeyguardVideoWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayout called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mStatusBarHeight:I

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(II)V

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastWidth:I

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mLastHeight:I

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "KeyguardVideoWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "KeyguardVideoWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update new video wallpaper! path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string v3, "video_1.mp4"

    invoke-static {v2, v1, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method

.method public updateBlurState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->mCurrentState:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_0
    return-void
.end method
