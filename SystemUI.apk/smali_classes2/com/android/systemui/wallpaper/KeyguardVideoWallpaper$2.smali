.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;
.super Ljava/lang/Object;
.source "KeyguardVideoWallpaper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string v0, "KeyguardVideoWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable() width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/video/VideoPlayer;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/video/SurfaceInfo;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v1, v2, p2, p3}, Lcom/android/systemui/wallpaper/video/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(Lcom/android/systemui/wallpaper/video/SurfaceInfo;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$300(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;->LOCK:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$ScreenState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$500(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;Z)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string v1, "onSurfaceTextureDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;->access$100(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;)Lcom/android/systemui/wallpaper/video/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateSurfaceInfo(Lcom/android/systemui/wallpaper/video/SurfaceInfo;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
