.class public Lcom/android/systemui/wallpaper/video/VideoFileSaveService;
.super Landroid/app/Service;
.source "VideoFileSaveService.java"


# instance fields
.field private final mBinder:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;

.field private mCurentWhich:I

.field private mUserId:I

.field private mVideoFileExt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "mp4"

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService$1;-><init>(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mBinder:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mVideoFileExt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mUserId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mCurentWhich:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->getTempFilePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/video/VideoFileSaveService;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->getSavedFilePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSavedFilePath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    const-string v0, "/data/user_de/0/com.android.systemui/files"

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "VideoFileCopyService"

    const-string v3, "getSavedFilePath() file is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "video_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTempFilePath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    const-string v0, "/data/user_de/0/com.android.systemui/files"

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "VideoFileCopyService"

    const-string v3, "getTempFilePath() file is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "video_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_temp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoFileSaveService;->mBinder:Lcom/android/systemui/wallpaper/video/IVideoFileSaveService$Stub;

    return-object v0
.end method
