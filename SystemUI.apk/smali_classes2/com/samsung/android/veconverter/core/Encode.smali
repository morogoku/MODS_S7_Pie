.class public abstract Lcom/samsung/android/veconverter/core/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/veconverter/core/Encode$ContentType;,
        Lcom/samsung/android/veconverter/core/Encode$BitRate;,
        Lcom/samsung/android/veconverter/core/Encode$CodecType;,
        Lcom/samsung/android/veconverter/core/Encode$CodecsMime;,
        Lcom/samsung/android/veconverter/core/Encode$EncodeResolution;,
        Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;
    }
.end annotation


# instance fields
.field protected mAudioTrackIndex:I

.field protected mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

.field protected mMuxer:Landroid/media/MediaMuxer;

.field protected mMuxerStarted:Z

.field protected mOriginalAudioChannelCount:I

.field protected mOutputAudioAACProfile:I

.field protected mOutputAudioBitRate:I

.field protected mOutputAudioChannelCount:I

.field protected mOutputAudioMimeType:Ljava/lang/String;

.field protected mOutputAudioSampleRateHZ:I

.field protected mOutputFilePath:Ljava/lang/String;

.field protected mOutputFormat:I

.field protected mOutputHeight:I

.field protected mOutputMaxSizeKB:J

.field protected mOutputVideoBitRate:I

.field protected mOutputVideoEncoder:Landroid/media/MediaCodec;

.field protected mOutputVideoFrameRate:I

.field protected mOutputVideoIFrameInterval:I

.field protected mOutputVideoMimeType:Ljava/lang/String;

.field protected mOutputVideoProfile:I

.field protected mOutputWidth:I

.field protected mSizeFraction:F

.field protected mSourceFrameRate:I

.field protected volatile mUserStop:Z

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFormat:I

    const-string v1, "video/avc"

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const/16 v1, 0xf

    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoIFrameInterval:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoProfile:I

    const-string v2, "audio/mp4a-latm"

    iput-object v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioChannelCount:I

    const v3, 0x1f400

    iput v3, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioBitRate:I

    iput v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioAACProfile:I

    const v2, 0xac44

    iput v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioSampleRateHZ:I

    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mVideoTrackIndex:I

    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mAudioTrackIndex:I

    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mSizeFraction:F

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputMaxSizeKB:J

    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOriginalAudioChannelCount:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mSourceFrameRate:I

    return-void
.end method

.method private printVersionInfo()V
    .locals 2

    const-string v0, "VEConverter"

    const-string v1, "Transcode Framework v.1.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected computePresentationTimeNsec(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public encode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/veconverter/core/Encode;->printVersionInfo()V

    :try_start_0
    const-string v0, "VEConverter"

    const-string v1, "starting encoder prepartion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->prepare()V

    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFormat:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxerStarted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mVideoTrackIndex:I

    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mAudioTrackIndex:I

    const-string v0, "VEConverter"

    const-string v1, "starting to encode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;->onStarted()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->startEncoding()V

    const-string v0, "VEConverter"

    const-string v1, "encoding finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->release()V

    nop

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-string v3, "VEConverter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generated output file size after muxer close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    if-nez v3, :cond_1

    const-string v3, "VEConverter"

    const-string v4, "calling onCompleted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    invoke-interface {v3}, Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_0

    :cond_1
    const-string v3, "VEConverter"

    const-string v4, "user stopped. Not calling onCompleted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->release()V

    throw v0
.end method

.method protected abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract release()V
.end method

.method public setProgressUpdateListener(Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    return-void
.end method

.method protected abstract startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
