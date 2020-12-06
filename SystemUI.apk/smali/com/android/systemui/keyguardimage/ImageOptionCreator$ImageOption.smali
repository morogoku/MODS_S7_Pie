.class Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
.super Ljava/lang/Object;
.source "ImageOptionCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguardimage/ImageOptionCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageOption"
.end annotation


# instance fields
.field color:[I

.field height:I

.field isRtl:Z

.field realHeight:I

.field realWidth:I

.field scale:F

.field useDefaultColor:Z

.field width:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "width=%d, height=%d, scale=%f, useDefaultColor=%s"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", main=0x%x, 2nd=0x%x, bg_main=0x%x, bg_2nd=0x%x"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v8, v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    iget-object v4, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    iget-object v4, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    invoke-static {v3, v1}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
