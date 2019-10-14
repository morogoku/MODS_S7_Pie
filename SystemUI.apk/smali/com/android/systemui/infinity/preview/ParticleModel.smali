.class public Lcom/android/systemui/infinity/preview/ParticleModel;
.super Ljava/lang/Object;
.source "ParticleModel.java"


# static fields
.field public static ZIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field public static count:I


# instance fields
.field public alpha:F

.field public blinkSpeed:F

.field public color:I

.field public expand:F

.field public index:I

.field public initBlink:F

.field public isStart:Z

.field public needBlink:Z

.field public needLongBlink:Z

.field public radius:F

.field public tension:F

.field public tx:F

.field public ty:F

.field public tz:F

.field public x:F

.field public xRand:F

.field public y:F

.field public yRand:F

.field public yx:F

.field public yy:F

.field public yz:F

.field public z:F

.field public zRand:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/infinity/preview/ParticleModel;->count:I

    new-instance v0, Lcom/android/systemui/infinity/preview/ParticleModel$1;

    invoke-direct {v0}, Lcom/android/systemui/infinity/preview/ParticleModel$1;-><init>()V

    sput-object v0, Lcom/android/systemui/infinity/preview/ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needBlink:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needLongBlink:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->isStart:Z

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v0, v3

    sub-float/2addr v0, v1

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needBlink:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needLongBlink:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->isStart:Z

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    iput p1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    iput p2, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    iput p3, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    iput p4, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->radius:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p5

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, p5

    iput v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->blinkSpeed:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->initBlink:F

    sget v1, Lcom/android/systemui/infinity/preview/ParticleModel;->count:I

    iput v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->index:I

    sget v1, Lcom/android/systemui/infinity/preview/ParticleModel;->count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/android/systemui/infinity/preview/ParticleModel;->count:I

    iget v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->index:I

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needBlink:Z

    iget-boolean v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needBlink:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->index:I

    rem-int/lit8 v1, v1, 0x29

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->needLongBlink:Z

    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double v1, v3, v5

    const/4 v3, -0x1

    if-lez v1, :cond_3

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    goto :goto_2

    :cond_3
    iput v3, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    :goto_2
    iput v3, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    iget v1, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->index:I

    rem-int/lit16 v1, v1, 0xc9

    if-nez v1, :cond_4

    move v0, v2

    nop

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->isStart:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/infinity/preview/ParticleModel;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
