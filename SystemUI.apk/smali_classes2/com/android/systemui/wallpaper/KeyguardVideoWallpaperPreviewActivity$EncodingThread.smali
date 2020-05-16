.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;
.super Ljava/lang/Thread;
.source "KeyguardVideoWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EncodingThread"
.end annotation


# instance fields
.field converter:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

.field convertingDialogUpdateTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;

.field mInputFileName:Ljava/lang/String;

.field mInputUri:Landroid/net/Uri;

.field mOutputFileName:Ljava/lang/String;

.field params:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;

.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/samsung/android/veconverter/EncodeAniGIFImage;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->converter:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->convertingDialogUpdateTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->params:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;

    iget-object v0, p4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->outFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->mOutputFileName:Ljava/lang/String;

    iget-object v0, p4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->inputFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->mInputFileName:Ljava/lang/String;

    iget-object v0, p4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;->inputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->mInputUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/samsung/android/veconverter/EncodeAniGIFImage;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/samsung/android/veconverter/EncodeAniGIFImage;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$GifParameters;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string v1, "Stop encoding and dialog update task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->converter:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->converter:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    invoke-virtual {v0}, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->convertingDialogUpdateTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->convertingDialogUpdateTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->convertingDialogUpdateTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;->cancel(Z)Z

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->converter:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->convertingDialogUpdateTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$ConvertingDialogUpdateTask;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$000(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->finish()V

    :cond_3
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->converter:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->setProgressEventListener(Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->converter:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    invoke-virtual {v0}, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->encode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string v2, "resizingVideo error!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->access$1200(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "encoding_error"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$EncodingThread;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->finish()V

    :cond_0
    :goto_0
    return-void
.end method
