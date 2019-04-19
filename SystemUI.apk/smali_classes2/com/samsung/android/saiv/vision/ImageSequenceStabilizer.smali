.class public Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;
.super Ljava/lang/Object;
.source "ImageSequenceStabilizer.java"


# static fields
.field public static SMOOTHING_TYPE_AUTO:I

.field public static SMOOTHING_TYPE_GROUP_NEAREST:I

.field public static SMOOTHING_TYPE_MARKOV_CHAIN:I

.field public static SMOOTHING_TYPE_NONE:I

.field public static SMOOTHING_TYPE_TO_CENTER:I

.field public static SMOOTHING_TYPE_TO_FIRST_FRAME:I

.field public static TRANSFORMATION_CALCULATION_GRID_PREDICTOR_BILINEAR_INTER_WARP:I

.field public static TRANSFORMATION_CALCULATION_MUTUAL_INFO_BILINEAR_INTER_WARP:I

.field public static TRANSFORMATION_CALCULATION_ROTATION_BASED_BILINEAR_INTER_WARP:I

.field public static TRANSFORMATION_CALCULATION_ROTATION_BASED_NEAREST_INTER_WARP:I

.field public static TRANSFORMATION_CALCULATION_TRANSLATION_BASED:I


# instance fields
.field private mDefaultStableRectHeight:I

.field private mDefaultStableRectWidth:I

.field private mImageStabilizationPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_TRANSLATION_BASED:I

    const/4 v1, 0x1

    sput v1, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_ROTATION_BASED_BILINEAR_INTER_WARP:I

    const/4 v2, 0x2

    sput v2, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_ROTATION_BASED_NEAREST_INTER_WARP:I

    const/4 v3, 0x3

    sput v3, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_GRID_PREDICTOR_BILINEAR_INTER_WARP:I

    const/4 v4, 0x4

    sput v4, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->TRANSFORMATION_CALCULATION_MUTUAL_INFO_BILINEAR_INTER_WARP:I

    sput v0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_NONE:I

    sput v1, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_TO_CENTER:I

    sput v2, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_TO_FIRST_FRAME:I

    sput v3, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_GROUP_NEAREST:I

    sput v4, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_MARKOV_CHAIN:I

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->SMOOTHING_TYPE_AUTO:I

    :try_start_0
    const-string v0, "saiv_1_0"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "saiv_imagesequencestabilizer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    invoke-direct {p0}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    return-void
.end method

.method private destroy()I
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->release(J)I

    move-result v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    return v0
.end method

.method private native init()J
.end method

.method private native release(J)I
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->destroy()I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
