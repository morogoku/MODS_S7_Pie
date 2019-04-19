.class Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;
.super Ljava/lang/Object;
.source "SemAutoEnhance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JpegEncodingParametersFile"
.end annotation


# instance fields
.field inputImagePath:Ljava/lang/String;

.field public volatile isEncodingSuccess:Z

.field public volatile isThreadComplete:Z

.field outputImagePath:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SemAutoEnhance"

    const-string v1, "APP - ImageEncode S"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    iget-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->inputImagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->outputImagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->ImageEncodeFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SemAutoEnhance"

    const-string v2, "Quram Encoder failed... Exiting app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    :cond_0
    const-string v1, "SemAutoEnhance"

    const-string v2, "APP - ImageEncode E"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isThreadComplete:Z

    :cond_1
    return-void
.end method
