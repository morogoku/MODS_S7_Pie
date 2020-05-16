.class Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;
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
    name = "JpegDecodingParameters"
.end annotation


# instance fields
.field height:I

.field imagePath:Ljava/lang/String;

.field inputBuffer:[B

.field public volatile isDecodingSuccess:Z

.field public volatile isThreadComplete:Z

.field width:I


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "SemAutoEnhance"

    const-string v1, "APP - ImageDecode S"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    iget-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->imagePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->inputBuffer:[B

    iget v3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->width:I

    iget v4, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->height:I

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->ImageDecode(Ljava/lang/String;[BII)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SemAutoEnhance"

    const-string v2, "Quram Decoder failed... Exiting app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    :cond_0
    const-string v1, "SemAutoEnhance"

    const-string v2, "APP - ImageDecode E"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isThreadComplete:Z

    :cond_1
    return-void
.end method
