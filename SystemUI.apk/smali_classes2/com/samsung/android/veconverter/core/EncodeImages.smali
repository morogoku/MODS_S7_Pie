.class public Lcom/samsung/android/veconverter/core/EncodeImages;
.super Lcom/samsung/android/veconverter/core/Encode;
.source "EncodeImages.java"


# static fields
.field private static mUseUri:Z


# instance fields
.field private agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

.field private bm:Landroid/graphics/Bitmap;

.field private mEncodedOutputDurationMs:J

.field private volatile mEncoding:Z

.field private mFramesToWrite:I

.field private mInputFilePath:Ljava/lang/String;

.field private mInputOrientationDegrees:I

.field private mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

.field private mLogoRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

.field private mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

.field private mStopLock:Ljava/lang/Object;

.field private mTotalFrames:I

.field private videoFramesWritten:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUseUri:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/veconverter/core/Encode;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mTotalFrames:I

    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    div-int/2addr v0, v1

    const-string v1, "VEConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoFramesWritten : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mFramesToWrite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public initialize(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_8

    if-lez p3, :cond_7

    if-eqz p1, :cond_6

    if-eqz p5, :cond_5

    iput-object p1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    iput-object p5, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputFilePath:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoFrameRate:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUseUri:Z

    new-instance v0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    iget-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v2}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v3}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result v3

    const-string v4, "VEConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delay :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", num :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", width :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    :cond_0
    iget v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iput v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    iget-wide v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const/16 v5, 0x3e8

    if-nez v4, :cond_2

    div-int v4, v1, p4

    mul-int/2addr v4, v5

    int-to-long v6, v4

    iput-wide v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    :cond_2
    iget v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoFrameRate:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    iget v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    mul-int/2addr v5, v4

    iget-wide v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    long-to-int v4, v6

    div-int/2addr v5, v4

    iput v5, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoFrameRate:I

    :cond_3
    const-string v4, "VEConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEncodedOutputDurationMs :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mFramesToWrite :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mOutputVideoFrameRate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoFrameRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Can\'t get getNumOfFrame"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepare()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/EncodeImages;->prepareVideoCodecs()V

    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    invoke-virtual {v1, v2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/16 v2, 0x5a

    iput v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/16 v2, 0xb4

    iput v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const/16 v2, 0x10e

    iput v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    :cond_2
    :goto_0
    const-string v2, "VEConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total frames to be written "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mInputOrientationDegrees  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected prepareVideoCodecs()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputMaxSizeKB:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/16 v1, 0x3e8

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mSizeFraction:F

    iget-wide v3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputMaxSizeKB:J

    iget-wide v5, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    iget v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputAudioBitRate:I

    div-int/lit16 v7, v0, 0x3e8

    iget v8, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    iget v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/veconverter/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoBitRate:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    invoke-static {v0, v2}, Lcom/samsung/android/veconverter/util/CodecsHelper;->suggestBitRate(II)I

    move-result v0

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoBitRate:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    iget v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    iget v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    iget v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v1, Lcom/samsung/android/veconverter/surfaces/InputSurface;

    iget-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/veconverter/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/veconverter/surfaces/InputSurface;->makeCurrent()V

    new-instance v1, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-direct {v1}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->prepare()I

    return-void
.end method

.method protected release()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "VEConverter"

    const-string v2, "releasing encoder objects"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "VEConverter"

    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->release()V

    iput-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "VEConverter"

    const-string v4, "Exception in releasing renderer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->release()V

    iput-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    const-string v3, "VEConverter"

    const-string v4, "Exception in releasing logo renderer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/veconverter/surfaces/InputSurface;->release()V

    iput-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_8
    const-string v3, "VEConverter"

    const-string v4, "Exception in releasing input surface."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_5

    :try_start_9
    iget-boolean v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    iput-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_a
    const-string v2, "VEConverter"

    const-string v3, "Exception in releasing muxer."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->finish()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    monitor-exit v1

    nop

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0
.end method

.method protected startEncoding()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUserStop:Z

    if-eqz v0, :cond_0

    const-string v0, "VEConverter"

    const-string v1, "Not starting encoding because it is stopped by user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result v6

    const-string v7, "VEConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gif decode :  ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", delay :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    iget-object v8, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    iget v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    :cond_1
    if-nez v3, :cond_13

    :goto_0
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUserStop:Z

    if-nez v7, :cond_e

    if-nez v3, :cond_e

    if-eqz v2, :cond_2

    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v7, :cond_e

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v1, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    const-string v8, "VEConverter"

    const-string v9, "Video encoder output try again later "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    const/4 v8, -0x3

    if-ne v7, v8, :cond_4

    const-string v8, "VEConverter"

    const-string v9, "Video encoder output buffer changed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    const/4 v8, -0x2

    if-ne v7, v8, :cond_6

    const-string v8, "VEConverter"

    const-string v9, "Video encoder output buffer changed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mVideoTrackIndex:I

    if-gez v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const-string v8, "VEConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "videoEncoderOutputMediaFormat : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v8, "Video encoder output format changed after muxer has started"

    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    if-gez v7, :cond_7

    const-string v8, "VEConverter"

    const-string v9, "Unexpected result from video encoder dequeue output format."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    aget-object v8, v0, v7

    if-eqz v8, :cond_d

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_8

    const-string v9, "VEConverter"

    const-string v10, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_8
    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v9, :cond_9

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v10, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mVideoTrackIndex:I

    invoke-virtual {v9, v10, v8, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string v9, "VEConverter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bytes to muxer  time : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "muxer hasn\'t started. We cannot write video encoder output."

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9, v7, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_c

    iget v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    if-le v9, v10, :cond_b

    const-string v9, "VEConverter"

    const-string v10, "video endcoder end of stream reached"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    const-string v9, "VEConverter"

    const-string v10, "reached video encoder end of stream unexpectedly"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    goto/16 :goto_0

    :cond_d
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "video encoder OutputBuffer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    :goto_3
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUserStop:Z

    const/4 v8, 0x1

    if-nez v7, :cond_10

    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    iget v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    if-ge v7, v9, :cond_10

    if-eqz v2, :cond_f

    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxerStarted:Z

    if-eqz v7, :cond_10

    :cond_f
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-virtual {v7}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->draw()V

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    iget v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/veconverter/core/EncodeImages;->computePresentationTimeNsec(I)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/samsung/android/veconverter/surfaces/InputSurface;->setPresentationTime(J)V

    const-string v7, "VEConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sending frame "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to video encoder. time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/veconverter/core/EncodeImages;->computePresentationTimeNsec(I)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    invoke-virtual {v7}, Lcom/samsung/android/veconverter/surfaces/InputSurface;->swapBuffers()Z

    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    iget-object v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v9}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v7}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result v6

    const-string v7, "VEConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gif decode :  ret = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", delay :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    iget-object v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputWidth:I

    iget v11, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputHeight:I

    invoke-virtual {v7, v9, v10, v11}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    goto :goto_4

    :cond_10
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUserStop:Z

    if-nez v7, :cond_11

    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    iget v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    if-ne v7, v9, :cond_11

    const-string v7, "VEConverter"

    const-string v9, "sending EOS to video encoder"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    :cond_11
    :goto_4
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUserStop:Z

    if-nez v7, :cond_12

    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxerStarted:Z

    if-nez v7, :cond_12

    if-eqz v2, :cond_12

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mVideoTrackIndex:I

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    iget v9, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    invoke-virtual {v7, v9}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v8, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mMuxerStarted:Z

    :cond_12
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUserStop:Z

    if-eqz v7, :cond_1

    const-string v4, "VEConverter"

    const-string v7, "Encoding abruptly stopped."

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_13
    return-void
.end method

.method public stop()V
    .locals 4

    const-string v0, "VEConverter"

    const-string v1, "Stop method called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mUserStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "VEConverter"

    const-string v2, "Calling wait on stop lock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "VEConverter"

    const-string v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
