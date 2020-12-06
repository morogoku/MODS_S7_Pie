.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;
.super Landroid/os/Handler;
.source "KeyguardVideoWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$002(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Z)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->outFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$102(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->bindVideoFileCopyaService()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$300(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setResult(I)V

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage: update preview gif to video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$400(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->interrupt()V

    :goto_0
    return-void
.end method
