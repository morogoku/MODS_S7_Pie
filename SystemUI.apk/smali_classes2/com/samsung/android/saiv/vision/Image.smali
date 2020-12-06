.class public Lcom/samsung/android/saiv/vision/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;
    }
.end annotation


# instance fields
.field private mBuffer:[B

.field private mImagePtr:J

.field private mIntBuffer:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "saiv_noisefilter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "saiv_nightshot"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "saiv_imagesequencestabilizer"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private native release(J[B)V
.end method

.method private native releaseInt(J[I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    iget-object v2, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/saiv/vision/Image;->release(J[B)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mIntBuffer:[I

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    iget-object v2, p0, Lcom/samsung/android/saiv/vision/Image;->mIntBuffer:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/saiv/vision/Image;->releaseInt(J[I)V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    return-void
.end method
