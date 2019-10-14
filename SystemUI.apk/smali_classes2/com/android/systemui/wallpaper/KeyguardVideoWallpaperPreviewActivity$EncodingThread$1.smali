.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread$1;
.super Ljava/lang/Object;
.source "KeyguardVideoWallpaperPreviewActivity.java"

# interfaces
.implements Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "completed converting gif -> video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread$1;->this$1:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStarted()V
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string v1, " encoding start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
