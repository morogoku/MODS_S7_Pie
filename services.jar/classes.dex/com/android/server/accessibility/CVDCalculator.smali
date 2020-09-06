.class public Lcom/android/server/accessibility/CVDCalculator;
.super Ljava/lang/Object;
.source "CVDCalculator.java"


# static fields
.field public static final DEUTAN:I = 0x1

.field public static final DMC_ONLY:I = 0x0

.field public static final DMC_SDC_HYBRID:I = 0x1

.field public static final NOT_COLORBLIND:I = 0x3

.field public static final PROTAN:I = 0x0

.field private static final RGB_CMY_MAX:I = 0xc

.field public static final TRITAN:I = 0x2


# instance fields
.field private CVDMethod:I

.field private CVDSeverity:D

.field private CVDStrength:D

.field private CVDType:I

.field private SpotsU:[D

.field private SpotsV:[D

.field private c_index:D

.field private mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

.field private mInputNums:[I

.field private majorAngle:D

.field private majorRadius:D

.field private minorRadius:D

.field private s_index:D

.field private tes:D

.field private u:[D

.field private v:[D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [D

    fill-array-data v1, :array_2e

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_72

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    new-instance v0, Lcom/android/server/accessibility/ColorTransferTable;

    invoke-direct {v0}, Lcom/android/server/accessibility/ColorTransferTable;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    return-void

    :array_2e
    .array-data 8
        -0x3fca75c28f5c28f6L    # -21.54
        -0x3fc8bd70a3d70a3dL    # -23.26
        -0x3fc9970a3d70a3d7L    # -22.41
        -0x3fc8e3d70a3d70a4L    # -23.11
        -0x3fc98ccccccccccdL    # -22.45
        -0x3fca3d70a3d70a3dL    # -21.76
        -0x3fd3d70a3d70a3d7L    # -14.08
        -0x3ffa3d70a3d70a3dL    # -2.72
        0x402dae147ae147aeL    # 14.84
        0x4037deb851eb851fL    # 23.87
        0x403fd1eb851eb852L    # 31.82
        0x403f6b851eb851ecL    # 31.42
        0x403dca3d70a3d70aL    # 29.79
        0x403aa3d70a3d70a4L    # 26.64
        0x4036eb851eb851ecL    # 22.92
        0x4026666666666666L    # 11.2
    .end array-data

    :array_72
    .array-data 8
        -0x3fbcce147ae147aeL    # -38.39
        -0x3fc670a3d70a3d71L    # -25.56
        -0x3fd0f0a3d70a3d71L    # -15.53
        -0x3fe2333333333333L    # -7.45
        0x3ff199999999999aL    # 1.1
        0x401d666666666666L    # 7.35
        0x4032bd70a3d70a3dL    # 18.74
        0x403c2147ae147ae1L    # 28.13
        0x403f2147ae147ae1L    # 31.13
        0x403a59999999999aL    # 26.35
        0x402d851eb851eb85L    # 14.76
        0x401bf5c28f5c28f6L    # 6.99
        0x3fb999999999999aL    # 0.1
        -0x3fdd3d70a3d70a3dL    # -9.38
        -0x3fcd59999999999aL    # -18.65
        -0x3fc763d70a3d70a4L    # -24.61
    .end array-data
.end method

.method private Calc()V
    .registers 35

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/16 v3, 0xf

    new-array v4, v3, [D

    new-array v5, v3, [D

    const/4 v6, 0x0

    move v7, v6

    :goto_c
    if-ge v7, v3, :cond_2b

    iget-object v8, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    add-int/lit8 v9, v7, 0x1

    aget-wide v8, v8, v9

    iget-object v10, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    aget-wide v10, v10, v7

    sub-double/2addr v8, v10

    aput-wide v8, v4, v7

    iget-object v8, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    add-int/lit8 v9, v7, 0x1

    aget-wide v8, v8, v9

    iget-object v10, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    aget-wide v10, v10, v7

    sub-double/2addr v8, v10

    aput-wide v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_2b
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-wide v10, v9

    move-wide v8, v7

    move v7, v6

    :goto_32
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-ge v7, v3, :cond_55

    aget-wide v14, v4, v7

    mul-double/2addr v14, v12

    aget-wide v16, v5, v7

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    aget-wide v14, v4, v7

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    move-object/from16 v19, v4

    aget-wide v3, v5, v7

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v14, v3

    add-double/2addr v10, v14

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v19

    const/16 v3, 0xf

    goto :goto_32

    :cond_55
    move-object/from16 v19, v4

    div-double v3, v8, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    div-double/2addr v3, v12

    const/4 v7, 0x2

    new-array v14, v7, [D

    const-wide/16 v15, 0x0

    aput-wide v15, v14, v6

    const/4 v7, 0x1

    aput-wide v15, v14, v7

    cmpg-double v15, v3, v15

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-gez v15, :cond_74

    add-double v16, v3, v16

    goto :goto_76

    :cond_74
    sub-double v16, v3, v16

    :goto_76
    move-wide/from16 v21, v16

    move v15, v6

    :goto_79
    const/16 v7, 0xf

    if-ge v15, v7, :cond_c7

    aget-wide v16, v14, v6

    aget-wide v24, v5, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    aget-wide v26, v19, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-wide/from16 v30, v8

    sub-double v7, v24, v26

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double v16, v16, v7

    aput-wide v16, v14, v6

    const/4 v7, 0x1

    aget-wide v8, v14, v7

    aget-wide v16, v5, v15

    move-wide/from16 v6, v21

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v16, v16, v21

    aget-wide v21, v19, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    move-wide/from16 v32, v1

    sub-double v1, v16, v21

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v8, v1

    const/4 v1, 0x1

    aput-wide v8, v14, v1

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v21, v6

    move-wide/from16 v8, v30

    move-wide/from16 v1, v32

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_79

    :cond_c7
    move-wide/from16 v32, v1

    move-wide/from16 v30, v8

    move-wide/from16 v6, v21

    const/4 v1, 0x0

    aget-wide v8, v14, v1

    const-wide/high16 v15, 0x402e000000000000L    # 15.0

    div-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v14, v1

    const/4 v2, 0x1

    aget-wide v8, v14, v2

    div-double/2addr v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v14, v2

    aget-wide v8, v14, v1

    aget-wide v15, v14, v2

    cmpl-double v8, v8, v15

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    const-wide v17, 0x4066800000000000L    # 180.0

    if-lez v8, :cond_104

    aget-wide v8, v14, v1

    iput-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    aget-wide v8, v14, v2

    iput-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    mul-double v17, v17, v6

    div-double v8, v17, v15

    iput-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    goto :goto_113

    :cond_104
    aget-wide v8, v14, v2

    iput-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    const/4 v1, 0x0

    aget-wide v8, v14, v1

    iput-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    mul-double v17, v17, v3

    div-double v1, v17, v15

    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    :goto_113
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    const-wide v8, 0x4022795e9e1b089aL    # 9.23705

    div-double/2addr v1, v8

    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    iget-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    div-double/2addr v1, v8

    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->s_index:D

    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->tes:D

    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    const-wide v8, 0x3ff999999999999aL    # 1.6

    cmpg-double v1, v1, v8

    if-gtz v1, :cond_146

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_167

    :cond_146
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    const-wide v12, 0x3fe6666666666666L    # 0.7

    cmpl-double v1, v1, v12

    if-ltz v1, :cond_155

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_167

    :cond_155
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    const-wide v12, -0x3fafc00000000000L    # -65.0

    cmpg-double v1, v1, v12

    if-gez v1, :cond_164

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_167

    :cond_164
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    :goto_167
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    cmpg-double v12, v1, v8

    if-gez v12, :cond_172

    const-wide v1, 0x3ff999999999999aL    # 1.6

    :cond_172
    const-wide v12, 0x4010cccccccccccdL    # 4.2

    cmpl-double v12, v1, v12

    if-lez v12, :cond_180

    const-wide v1, 0x4010cccccccccccdL    # 4.2

    :cond_180
    sub-double v8, v1, v8

    const-wide v12, 0x4004cccccccccccdL    # 2.6

    div-double/2addr v8, v12

    iput-wide v8, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDStrength:D

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpg-double v15, v8, v12

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    if-gez v15, :cond_198

    mul-double v16, v16, v8

    goto :goto_1a3

    :cond_198
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v12, v8, v12

    mul-double v12, v12, v16

    const-wide/high16 v15, 0x4022000000000000L    # 9.0

    div-double/2addr v12, v15

    add-double v16, v20, v12

    :goto_1a3
    move-wide/from16 v12, v16

    iput-wide v12, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    return-void
.end method

.method private InitMakeUV()Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    aput-wide v5, v2, v4

    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    aget-wide v5, v3, v4

    aput-wide v5, v2, v4

    nop

    :goto_15
    move v2, v4

    const/16 v3, 0xf

    if-ge v2, v3, :cond_39

    :try_start_1a
    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    aget v3, v3, v2

    move v1, v3

    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    aget-wide v5, v5, v1

    aput-wide v5, v3, v4

    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    aget-wide v5, v5, v1

    aput-wide v5, v3, v4
    :try_end_33
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_33} :catch_36

    add-int/lit8 v4, v2, 0x1

    goto :goto_15

    :catch_36
    move-exception v2

    const/4 v0, 0x0

    goto :goto_3a

    :cond_39
    nop

    :goto_3a
    return v0
.end method

.method private roundHalfUp(D)D
    .registers 9

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-double v0, v4

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public calculate()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/CVDCalculator;->Calc()V

    return-void
.end method

.method public getCVDMethod()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    return v0
.end method

.method public getCVDSeverity()D
    .registers 5

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/CVDCalculator;->roundHalfUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCVDStrength()D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDStrength:D

    return-wide v0
.end method

.method public getCVDType()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    return v0
.end method

.method public getC_index()D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    return-wide v0
.end method

.method public getMajorAngle()D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    return-wide v0
.end method

.method public getMajorRadius()D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    return-wide v0
.end method

.method public getMinorRadius()D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    return-wide v0
.end method

.method public getPredefinedServerityAndUserParameter(II)[D
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/accessibility/ColorTransferTable;->getPredefinedValueForEachType(II)[D

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRGBCMY(D)[I
    .registers 11

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    iget v3, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    iget-wide v4, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    move-object v1, p0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    move-result-object v0

    return-object v0
.end method

.method public getRGBCMY(IIDD)[I
    .registers 36

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xc

    new-array v15, v3, [I

    const-string v2, "CVDCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRGBCMY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", CVDType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Severity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p5

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0xb

    const/16 v23, 0xa

    const/16 v24, 0x9

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v5, 0x1

    const v2, 0xff00

    const/16 v25, 0xff

    if-nez v1, :cond_145

    if-eqz v10, :cond_7d

    if-eq v10, v5, :cond_7d

    if-ne v10, v7, :cond_63

    goto :goto_7d

    :cond_63
    aput v2, v15, v21

    aput v25, v15, v5

    aput v25, v15, v7

    aput v25, v15, v20

    aput v2, v15, v19

    aput v25, v15, v18

    aput v25, v15, v6

    aput v25, v15, v17

    aput v2, v15, v16

    aput v25, v15, v24

    aput v25, v15, v23

    aput v25, v15, v22

    goto/16 :goto_261

    :cond_7d
    :goto_7d
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v5, v10

    move-wide v6, v11

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v21

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    const/4 v8, 0x1

    aput v2, v15, v8

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x5

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    const/4 v9, 0x2

    aput v2, v15, v9

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v20

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v19

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v18

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    const/4 v6, 0x6

    aput v2, v15, v6

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x3

    move-wide v6, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v17

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v16

    aput v25, v15, v24

    aput v25, v15, v23

    aput v25, v15, v22

    goto/16 :goto_261

    :cond_145
    move v8, v5

    move v9, v7

    if-ne v1, v8, :cond_244

    if-eqz v10, :cond_16a

    if-eq v10, v8, :cond_16a

    if-ne v10, v9, :cond_150

    goto :goto_16a

    :cond_150
    aput v2, v15, v21

    aput v25, v15, v8

    aput v25, v15, v9

    aput v25, v15, v20

    aput v2, v15, v19

    aput v25, v15, v18

    aput v25, v15, v6

    aput v25, v15, v17

    aput v2, v15, v16

    aput v25, v15, v24

    aput v25, v15, v23

    aput v25, v15, v22

    goto/16 :goto_261

    :cond_16a
    :goto_16a
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v5, v10

    move-wide v6, v11

    move/from16 v26, v8

    move/from16 v27, v9

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v21

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v26

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v27

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v20

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v19

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v18

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    const/4 v8, 0x6

    aput v2, v15, v8

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x3

    move v1, v8

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v17

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v16

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    if-ge v2, v1, :cond_23d

    const/16 v1, 0xcc

    aput v1, v15, v24

    aput v1, v15, v23

    aput v1, v15, v22

    goto :goto_261

    :cond_23d
    aput v25, v15, v24

    aput v25, v15, v23

    aput v25, v15, v22

    goto :goto_261

    :cond_244
    move v1, v6

    move/from16 v26, v8

    move/from16 v27, v9

    aput v2, v15, v21

    aput v25, v15, v26

    aput v25, v15, v27

    aput v25, v15, v20

    aput v2, v15, v19

    aput v25, v15, v18

    aput v25, v15, v1

    aput v25, v15, v17

    aput v2, v15, v16

    aput v25, v15, v24

    aput v25, v15, v23

    aput v25, v15, v22

    :goto_261
    return-object v15
.end method

.method public getS_index()D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->s_index:D

    return-wide v0
.end method

.method public getTes()D
    .registers 3

    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->tes:D

    return-wide v0
.end method

.method public setCVDMethod(I)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    goto :goto_b

    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    goto :goto_e

    :cond_b
    :goto_b
    iput p1, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public setNum([I)Z
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    invoke-direct {p0}, Lcom/android/server/accessibility/CVDCalculator;->InitMakeUV()Z

    move-result v0

    return v0
.end method
