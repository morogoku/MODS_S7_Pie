.class public Lcom/samsung/android/saiv/imageprocessing/SmartCropper;
.super Ljava/lang/Object;
.source "SmartCropper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;,
        Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;
    }
.end annotation


# instance fields
.field private mBDPtr:J

.field public memory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "smart_cropping.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->memory:I

    const/16 v1, 0x3f

    invoke-static {v1, v0}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->init(II)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    return-void
.end method

.method public static native findObjectRect(J[I)I
.end method

.method public static native init(II)J
.end method

.method private printVersionCode()V
    .locals 2

    const-string v0, "SCE_v2.0"

    const-string v1, "This is SCE v2.02"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native release(J)V
.end method

.method public static native releaseOneImage(J)I
.end method

.method public static native setImageIntBuf(J[IIII)J
.end method


# virtual methods
.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->release(J)V

    iput-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public findObjectRect()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v2, v3, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect(J[I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x2

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x3

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public releaseImage()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseOneImage(J)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setImage([IIII)Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->printVersionCode()V

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImageIntBuf(J[IIII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
