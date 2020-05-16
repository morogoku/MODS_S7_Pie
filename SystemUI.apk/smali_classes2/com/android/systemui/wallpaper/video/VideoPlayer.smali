.class public Lcom/android/systemui/wallpaper/video/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mIsPendingStarted:Z

.field private mIsPrepared:Z

.field private mIsPreview:Z

.field private mMediaReleaseHandler:Landroid/os/Handler;

.field mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field protected mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

.field protected mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

.field private mVideoScreenSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaReleaseHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/samsung/android/media/SemMediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/video/VideoPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return p1
.end method

.method private getVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/graphics/Point;
    .locals 12

    const/16 v0, 0x280

    const/16 v1, 0x1e0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_0
    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    const-string v6, "90"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "270"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v1, v6

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    :goto_2
    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    goto :goto_6

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_3
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v7, :cond_4

    const-string v7, ".Preview"

    goto :goto_4

    :cond_4
    const-string v7, ""

    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getVideoScreenSize() file is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object v6

    :catchall_0
    move-exception v6

    goto :goto_8

    :catch_2
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v7, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v8, "getVideoScreenSize() occur exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v7, :cond_5

    const-string v7, ".Preview"

    goto :goto_7

    :cond_5
    const-string v7, ""

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVideoScreenSize() w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", r = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v6

    :goto_8
    nop

    :try_start_6
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    throw v6
.end method

.method private releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaPlayer() mp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v2, :cond_2

    const-string v2, ".Preview"

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "releaseMediaPlayer() failed stop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private setSurface()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSurface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_1

    const-string v1, ".Preview"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSurface() mediaPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_3

    const-string v1, ".Preview"

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSurface() mVideoScreenSize is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_5

    const-string v1, ".Preview"

    goto :goto_3

    :cond_5
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSurface() mSurfaceInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v0, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v1, v1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    int-to-float v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v3, :cond_7

    const-string v3, ".Preview"

    goto :goto_4

    :cond_7
    const-string v3, ""

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSurface() width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->surface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_8

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v4

    :goto_5
    cmpg-float v6, v2, v4

    if-gtz v6, :cond_9

    div-float/2addr v4, v2

    :goto_6
    move v6, v4

    goto :goto_7

    :cond_9
    goto :goto_6

    :goto_7
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v7, v0, v4

    mul-float v8, v1, v4

    iget-object v4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v9, v4, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iget v10, v4, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/wallpaper/video/SurfaceController;->setScaleSurface(FFFFII)V

    return-void
.end method


# virtual methods
.method public cancelReleaseResource()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v2, :cond_0

    const-string v2, ".Preview"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cancelReleaseResource() mediaPlayer is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaReleaseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaReleaseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_2

    const-string v1, ".Preview"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelReleaseResource() success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v2, :cond_4

    const-string v2, ".Preview"

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cancelReleaseResource() fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFile() filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    :cond_1
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {v0}, Lcom/samsung/android/media/SemMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoScreenSize:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const v2, 0x88bc

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    :goto_1
    nop

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_4

    const-string v1, ".Preview"

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video file is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v2, :cond_5

    const-string v2, ".Preview"

    goto :goto_3

    :cond_5
    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSemMediaPlayer is not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public releaseResource(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseResource() mediaPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_2

    const-string v1, ".Preview"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaReleaseHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void
.end method

.method public startDrawing()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startDrawing() mediaPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_2

    const-string v1, ".Preview"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDrawing() pl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_3

    const-string v1, ".Preview"

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startDrawing() mediaPlayer is not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v2, :cond_5

    const-string v2, ".Preview"

    goto :goto_3

    :cond_5
    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startDrawing() failed start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_4
    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public stopDrawing()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopDrawing() mediaPlayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_2

    const-string v1, ".Preview"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDrawing() p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v2, :cond_3

    const-string v2, ".Preview"

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopDrawing() failed pause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method

.method public updateSurfaceInfo(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurfaceInfo() width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceInfo is null = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iput p1, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->width:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    iput p2, v0, Lcom/android/systemui/wallpaper/video/SurfaceInfo;->height:I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface()V

    return-void
.end method

.method public updateSurfaceInfo(Lcom/android/systemui/wallpaper/video/SurfaceInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, ".Preview"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurfaceInfo() surfaceInfo is null = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurfaceInfo:Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface()V

    :cond_2
    return-void
.end method
