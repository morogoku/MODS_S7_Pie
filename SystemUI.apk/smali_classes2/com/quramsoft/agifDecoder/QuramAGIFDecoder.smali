.class public Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;
.super Ljava/lang/Object;
.source "QuramAGIFDecoder.java"


# instance fields
.field protected mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->loadLib()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeInitHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;Ljava/lang/String;)V

    return-void
.end method

.method public static loadLib()V
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    const-string v0, "agifencoder.quram"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "quramagifencoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PEDIT_QuramAGIFEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load library fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public decodeFrame(Landroid/graphics/Bitmap;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-wide v1, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v1, v2, p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeDecodeFrame(JLandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public finish()Z
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeFinish(J)Z

    move-result v0

    return v0
.end method

.method public getDelay()I
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeGetDelay(J)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 3

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v1, v2}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getNumOfFrame()I
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeGetNumOfFrame(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 3

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->mHandle:J

    invoke-virtual {p0, v1, v2}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->nativeGetWidth(J)I

    move-result v0

    return v0
.end method

.method protected native nativeDecodeFrame(JLandroid/graphics/Bitmap;)I
.end method

.method protected native nativeFinish(J)Z
.end method

.method protected native nativeGetDelay(J)I
.end method

.method protected native nativeGetHeight(J)I
.end method

.method protected native nativeGetNumOfFrame(J)I
.end method

.method protected native nativeGetWidth(J)I
.end method

.method protected native nativeInitHandle(Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;Ljava/lang/String;)V
.end method
