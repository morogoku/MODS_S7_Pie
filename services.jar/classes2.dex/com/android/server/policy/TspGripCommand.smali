.class public Lcom/android/server/policy/TspGripCommand;
.super Ljava/lang/Object;
.source "TspGripCommand.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_EDGE_ZONE:I = 0x3c

.field private static final DEFAULT_LAND_X1:I = 0xa

.field private static final DEFAULT_PORT_X1:I = 0xa

.field private static final DEFAULT_PORT_X2:I = 0x20

.field private static final DEFAULT_PORT_Y1:I = 0x300

.field private static final INDEX_DEADZONE_LAND_X1:I = 0x3

.field private static final INDEX_DEADZONE_PORT_X1:I = 0x0

.field private static final INDEX_DEADZONE_PORT_X2:I = 0x1

.field private static final INDEX_DEADZONE_PORT_Y1:I = 0x2

.field private static final INDEX_EDGE_LAND:I = 0x5

.field private static final INDEX_EDGE_PORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TspGripCommand"

.field private static final WQHD_MIN_HEIGHT:I = 0xa00

.field private static final WQHD_MIN_WIDTH:I = 0x5a0


# instance fields
.field mLandEdgeZone:I

.field mLandX1:I

.field mPortEdgeZone:I

.field mPortX1:I

.field mPortX2:I

.field mPortY1:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspGripCommand;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/policy/TspGripCommand;->reset()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/TspGripCommand;->set(IIIIII)V

    return-void
.end method

.method private convertRation(III)I
    .registers 5

    if-ge p2, p3, :cond_6

    mul-int v0, p1, p2

    div-int/2addr v0, p3

    return v0

    :cond_6
    return p1
.end method

.method private convertToInt(IILjava/lang/String;I)I
    .registers 10

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    if-ltz v3, :cond_2c

    int-to-float v3, p2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    :cond_2c
    const-string/jumbo v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    if-ltz v3, :cond_48

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    int-to-float v3, p2

    mul-float/2addr v3, v1

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    :cond_48
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v1

    return v1
.end method

.method public static getTspHeightPixel(IIIII)I
    .registers 9

    mul-int v0, p3, p4

    div-int/2addr v0, p1

    sget-boolean v1, Lcom/android/server/policy/TspGripCommand;->DEBUG:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "getTspHeightPixel: init="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "TspGripCommand"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return v0
.end method

.method public static getTspWidthPixel(IIIII)I
    .registers 6

    mul-int v0, p2, p4

    div-int/2addr v0, p0

    return v0
.end method

.method private getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I
    .registers 10

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c

    invoke-direct {p0, v0, p5, p6}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v1

    return v1

    :cond_c
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    return p3

    :cond_17
    invoke-direct {p0, p4, p5, v1, p6}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private setMiniumValue(II)V
    .registers 4

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    :cond_6
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    if-ge v0, p2, :cond_c

    iput p2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    :cond_c
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    if-ge v0, p1, :cond_12

    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    :cond_12
    return-void
.end method


# virtual methods
.method public convertToRation(II)V
    .registers 6

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    const/16 v1, 0x5a0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    const/16 v2, 0xa00

    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public parse(IIIILandroid/os/Bundle;)Z
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public parse(IIIILandroid/os/Bundle;Z)Z
    .registers 25

    move-object/from16 v7, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    if-eqz v10, :cond_bc

    const-string v0, "deadzone_v2"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v7

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v8

    move v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_21

    return v12

    :cond_21
    const-string v2, "dead_zone_port_x1"

    const/4 v3, -0x1

    const/16 v6, 0x5a0

    move-object v0, v7

    move-object v1, v10

    move/from16 v4, p1

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v13

    const-string v2, "dead_zone_port_x2"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v14

    const/4 v15, -0x1

    if-eq v13, v15, :cond_3d

    if-ne v14, v15, :cond_3d

    iput v13, v7, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    goto :goto_41

    :cond_3d
    if-eq v13, v15, :cond_41

    iput v13, v7, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    :cond_41
    :goto_41
    if-eq v14, v15, :cond_45

    iput v14, v7, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    :cond_45
    const-string v2, "dead_zone_port_y1"

    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    const/16 v6, 0xa00

    move-object v0, v7

    move-object v1, v10

    move/from16 v4, p2

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    const-string v0, "dead_zone_port_real_y1"

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v15, :cond_69

    move/from16 v15, p1

    move/from16 v5, p2

    invoke-static {v15, v5, v8, v9, v6}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    goto :goto_6d

    :cond_69
    move/from16 v15, p1

    move/from16 v5, p2

    :goto_6d
    const-string v2, "dead_zone_land_x1"

    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    const/16 v16, 0x5a0

    move-object v0, v7

    move-object v1, v10

    move v4, v15

    move v5, v8

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    const-string v2, "edge_zone_width"

    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    const/16 v6, 0x5a0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v0, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    const-string v2, "edge_zone_land"

    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    const-string v2, "edge_zone_port"

    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    if-eqz p6, :cond_bb

    const/16 v1, 0x5a0

    const/16 v2, 0xa

    invoke-direct {v7, v2, v8, v1}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v1

    const/16 v3, 0xa00

    invoke-direct {v7, v2, v9, v3}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v2

    invoke-direct {v7, v1, v2}, Lcom/android/server/policy/TspGripCommand;->setMiniumValue(II)V

    :cond_bb
    return v12

    :cond_bc
    move/from16 v15, p1

    const/4 v1, 0x0

    return v1
.end method

.method public parse(IIIILjava/lang/String;)Z
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parse(IIIILjava/lang/String;Z)Z
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v0, 0x0

    if-eqz v5, :cond_d8

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d8

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa00

    const/4 v8, 0x1

    const/16 v9, 0x5a0

    :try_start_1e
    array-length v10, v6

    const/4 v11, 0x0

    if-gt v10, v8, :cond_39

    aget-object v10, v6, v0

    if-eqz v10, :cond_2d

    aget-object v0, v6, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    nop

    :cond_2d
    move-object v0, v11

    invoke-direct {v1, v2, v3, v0, v9}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v10

    iput v10, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    nop

    move/from16 v14, p2

    goto/16 :goto_bf

    :cond_39
    aget-object v10, v6, v0

    if-eqz v10, :cond_44

    aget-object v0, v6, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :cond_44
    move-object v0, v11

    :goto_45
    invoke-direct {v1, v2, v3, v0, v9}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v10

    iput v10, v1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    array-length v10, v6

    const/4 v12, 0x3

    if-lt v10, v12, :cond_77

    aget-object v10, v6, v8

    if-eqz v10, :cond_5a

    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_5b

    :cond_5a
    move-object v10, v11

    :goto_5b
    const/4 v13, 0x2

    aget-object v14, v6, v13

    if-eqz v14, :cond_67

    aget-object v13, v6, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    goto :goto_68

    :cond_67
    move-object v13, v11

    :goto_68
    invoke-direct {v1, v2, v3, v10, v9}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_6e} :catch_c2

    move/from16 v14, p2

    :try_start_70
    invoke-direct {v1, v14, v4, v13, v7}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v15

    iput v15, v1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    goto :goto_79

    :cond_77
    move/from16 v14, p2

    :goto_79
    array-length v10, v6

    const/4 v13, 0x4

    if-lt v10, v13, :cond_8f

    aget-object v10, v6, v12

    if-eqz v10, :cond_88

    aget-object v10, v6, v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_89

    :cond_88
    move-object v10, v11

    :goto_89
    invoke-direct {v1, v2, v3, v10, v9}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    :cond_8f
    array-length v10, v6

    const/4 v12, 0x5

    if-lt v10, v12, :cond_a5

    aget-object v10, v6, v13

    if-eqz v10, :cond_9e

    aget-object v10, v6, v13

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_9f

    :cond_9e
    move-object v10, v11

    :goto_9f
    invoke-direct {v1, v2, v3, v10, v9}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v13

    iput v13, v1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    :cond_a5
    iget v10, v1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v10, v1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    array-length v10, v6

    const/4 v13, 0x6

    if-lt v10, v13, :cond_bf

    aget-object v10, v6, v12

    if-eqz v10, :cond_b8

    aget-object v10, v6, v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    nop

    :cond_b8
    move-object v10, v11

    invoke-direct {v1, v2, v3, v10, v9}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v11

    iput v11, v1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_bf} :catch_c0

    :cond_bf
    :goto_bf
    goto :goto_c8

    :catch_c0
    move-exception v0

    goto :goto_c5

    :catch_c2
    move-exception v0

    move/from16 v14, p2

    :goto_c5
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_c8
    if-eqz p6, :cond_d7

    const/16 v0, 0xa

    invoke-direct {v1, v0, v3, v9}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v9

    invoke-direct {v1, v0, v4, v7}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    invoke-direct {v1, v9, v0}, Lcom/android/server/policy/TspGripCommand;->setMiniumValue(II)V

    :cond_d7
    return v8

    :cond_d8
    move/from16 v14, p2

    return v0
.end method

.method public reset()V
    .registers 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    const/16 v1, 0x300

    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public set(IIIIII)V
    .registers 7

    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iput p2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iput p3, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iput p4, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iput p5, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput p6, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public set(Lcom/android/server/policy/TspGripCommand;)V
    .registers 3

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "portX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",portX2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",landX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",portEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",landEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
