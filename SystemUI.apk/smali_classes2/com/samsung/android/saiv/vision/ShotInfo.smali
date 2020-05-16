.class public Lcom/samsung/android/saiv/vision/ShotInfo;
.super Ljava/lang/Object;
.source "ShotInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;
    }
.end annotation


# instance fields
.field public Cx:I

.field public Cy:I

.field public aperture:F

.field public brightness:F

.field public cameraModel:Ljava/lang/String;

.field public compressionLevel:F

.field public digitalZoomRatio:F

.field public exposureTime:F

.field public flashLevel:I

.field public focalLength:F

.field public gamma:F

.field public sensitivity_ISO:I

.field public time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->exposureTime:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->time:Ljava/util/Date;

    iput v0, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->compressionLevel:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->sensitivity_ISO:I

    iput v0, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->aperture:F

    iput v0, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->focalLength:F

    iput v1, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->flashLevel:I

    iput v0, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->brightness:F

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->cameraModel:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->digitalZoomRatio:F

    const v0, 0x400ccccd    # 2.2f

    iput v0, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->gamma:F

    iput v1, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->Cx:I

    iput v1, p0, Lcom/samsung/android/saiv/vision/ShotInfo;->Cy:I

    return-void
.end method
