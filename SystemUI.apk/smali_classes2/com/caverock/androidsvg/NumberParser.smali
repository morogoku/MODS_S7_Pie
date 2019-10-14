.class public Lcom/caverock/androidsvg/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# static fields
.field static TOO_BIG:J

.field private static final negativePowersOf10:[F

.field private static final positivePowersOf10:[F


# instance fields
.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0xcccccccccccccccL

    sput-wide v0, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    const/16 v0, 0x27

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
        0x51ba43b7    # 9.9999998E10f
        0x5368d4a5    # 1.0E12f
        0x551184e7    # 9.9999998E12f
        0x56b5e621    # 1.0E14f
        0x58635fa9    # 9.9999999E14f
        0x5a0e1bca    # 1.00000003E16f
        0x5bb1a2bc    # 9.9999998E16f
        0x5d5e0b6b    # 9.9999998E17f
        0x5f0ac723    # 1.0E19f
        0x60ad78ec    # 1.0E20f
        0x6258d727    # 1.0E21f
        0x64078678    # 1.0E22f
        0x65a96816    # 1.0E23f
        0x6753c21c    # 1.0E24f
        0x69045951    # 1.0E25f
        0x6aa56fa6    # 1.0E26f
        0x6c4ecb8f    # 1.0E27f
        0x6e013f39    # 1.0E28f
        0x6fa18f08    # 1.0E29f
        0x7149f2ca    # 1.0E30f
        0x72fc6f7c    # 1.0E31f
        0x749dc5ae    # 1.0E32f
        0x76453719    # 1.0E33f
        0x77f684df    # 1.0E34f
        0x799a130c    # 1.0E35f
        0x7b4097ce    # 1.0E36f
        0x7cf0bdc2    # 1.0E37f
        0x7e967699    # 1.0E38f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
        0x3a83126f    # 0.001f
        0x38d1b717    # 1.0E-4f
        0x3727c5ac    # 1.0E-5f
        0x358637bd    # 1.0E-6f
        0x33d6bf95    # 1.0E-7f
        0x322bcc77    # 1.0E-8f
        0x3089705f    # 1.0E-9f
        0x2edbe6ff    # 1.0E-10f
        0x2d2febff    # 1.0E-11f
        0x2b8cbccc    # 1.0E-12f
        0x29e12e13    # 1.0E-13f
        0x283424dc    # 1.0E-14f
        0x26901d7d    # 1.0E-15f
        0x24e69595    # 1.0E-16f
        0x233877aa    # 1.0E-17f
        0x219392ef    # 1.0E-18f
        0x1fec1e4a    # 1.0E-19f
        0x1e3ce508    # 1.0E-20f
        0x1c971da0    # 1.0E-21f
        0x1af1c901    # 1.0E-22f
        0x19416d9a    # 1.0E-23f
        0x179abe15    # 1.0E-24f
        0x15f79688    # 1.0E-25f
        0x14461206    # 1.0E-26f
        0x129e74d2    # 1.0E-27f
        0x10fd87b6    # 1.0E-28f
        0xf4ad2f8    # 1.0E-29f
        0xda24260    # 1.0E-30f
        0xc01ceb3    # 1.0E-31f
        0xa4fb11f    # 1.0E-32f
        0x8a6274c    # 1.0E-33f
        0x704ec3d    # 1.0E-34f
        0x554ad2e    # 1.0E-35f
        0x3aa2425    # 1.0E-36f
        0x2081cea    # 1.0E-37f
        0x6ce3ee    # 1.0E-38f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    return v0
.end method

.method public parseNumber(Ljava/lang/String;II)F
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v13, p2

    iput v13, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    iget v14, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    const/high16 v15, 0x7fc00000    # Float.NaN

    if-lt v14, v2, :cond_0

    return v15

    :cond_0
    iget v14, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_2

    const/16 v15, 0x2d

    if-eq v14, v15, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :cond_2
    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    :goto_0
    iget v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    :goto_1
    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    const-wide/16 v19, 0x0

    move/from16 v21, v12

    const/16 v12, 0x30

    if-ge v15, v2, :cond_b

    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v12, :cond_4

    if-nez v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/16 v15, 0x31

    if-lt v14, v15, :cond_9

    const/16 v15, 0x39

    if-gt v14, v15, :cond_9

    add-int/2addr v6, v8

    :goto_2
    const-wide/16 v22, 0xa

    if-lez v8, :cond_6

    sget-wide v24, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v12, v4, v24

    if-lez v12, :cond_5

    const/high16 v12, 0x7fc00000    # Float.NaN

    return v12

    :cond_5
    mul-long v4, v4, v22

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_6
    sget-wide v24, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v12, v4, v24

    if-lez v12, :cond_7

    const/high16 v12, 0x7fc00000    # Float.NaN

    return v12

    :cond_7
    mul-long v22, v22, v4

    add-int/lit8 v12, v14, -0x30

    move-wide/from16 v26, v4

    int-to-long v4, v12

    add-long v22, v22, v4

    add-int/lit8 v6, v6, 0x1

    cmp-long v4, v22, v19

    if-gez v4, :cond_8

    const/high16 v4, 0x7fc00000    # Float.NaN

    return v4

    :cond_8
    move-wide/from16 v4, v22

    goto :goto_3

    :cond_9
    const/16 v15, 0x2e

    if-ne v14, v15, :cond_b

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    iget v12, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    sub-int/2addr v12, v10

    const/4 v9, 0x1

    move v11, v12

    :goto_3
    iget v12, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v12, v21

    goto :goto_1

    :cond_b
    :goto_4
    if-eqz v9, :cond_c

    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v12, v11, 0x1

    if-ne v15, v12, :cond_c

    const/high16 v12, 0x7fc00000    # Float.NaN

    return v12

    :cond_c
    const/high16 v12, 0x7fc00000    # Float.NaN

    if-nez v6, :cond_e

    if-nez v7, :cond_d

    return v12

    :cond_d
    const/4 v6, 0x1

    :cond_e
    if-eqz v9, :cond_f

    sub-int v12, v11, v7

    sub-int/2addr v12, v6

    :goto_5
    goto :goto_6

    :cond_f
    move v12, v8

    goto :goto_5

    :goto_6
    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    if-ge v15, v2, :cond_1a

    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x45

    if-eq v14, v15, :cond_11

    const/16 v15, 0x65

    if-ne v14, v15, :cond_10

    goto :goto_7

    :cond_10
    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    goto/16 :goto_a

    :cond_11
    :goto_7
    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move/from16 v28, v7

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    if-ne v7, v2, :cond_12

    const/high16 v7, 0x7fc00000    # Float.NaN

    return v7

    :cond_12
    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v29, v8

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_14

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_13

    packed-switch v7, :pswitch_data_0

    const/16 v23, 0x1

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_8

    :pswitch_0
    goto :goto_8

    :cond_13
    const/4 v7, 0x1

    move v15, v7

    :cond_14
    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    nop

    :goto_8
    if-nez v23, :cond_19

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v8, v21

    :goto_9
    move/from16 v30, v9

    iget v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    if-ge v9, v2, :cond_16

    iget v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v9, 0x30

    if-lt v14, v9, :cond_16

    const/16 v9, 0x39

    if-gt v14, v9, :cond_16

    move/from16 v31, v10

    int-to-long v9, v8

    sget-wide v17, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v9, v9, v17

    if-lez v9, :cond_15

    const/high16 v9, 0x7fc00000    # Float.NaN

    return v9

    :cond_15
    mul-int/lit8 v9, v8, 0xa

    add-int/lit8 v10, v14, -0x30

    add-int v8, v9, v10

    iget v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v9, v30

    move/from16 v10, v31

    goto :goto_9

    :cond_16
    move/from16 v31, v10

    iget v9, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    if-ne v9, v7, :cond_17

    const/high16 v9, 0x7fc00000    # Float.NaN

    return v9

    :cond_17
    if-eqz v15, :cond_18

    sub-int/2addr v12, v8

    goto :goto_a

    :cond_18
    add-int/2addr v12, v8

    goto :goto_a

    :cond_19
    move/from16 v30, v9

    move/from16 v31, v10

    goto :goto_a

    :cond_1a
    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    :goto_a
    add-int v7, v12, v6

    const/16 v8, 0x27

    if-gt v7, v8, :cond_20

    add-int v7, v12, v6

    const/16 v8, -0x2c

    if-ge v7, v8, :cond_1b

    goto :goto_d

    :cond_1b
    long-to-float v7, v4

    cmp-long v8, v4, v19

    if-eqz v8, :cond_1e

    if-lez v12, :cond_1c

    sget-object v8, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    aget v8, v8, v12

    mul-float/2addr v7, v8

    goto :goto_b

    :cond_1c
    if-gez v12, :cond_1e

    const/16 v8, -0x26

    if-ge v12, v8, :cond_1d

    float-to-double v8, v7

    const-wide v15, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double/2addr v8, v15

    double-to-float v7, v8

    add-int/lit8 v12, v12, 0x14

    :cond_1d
    sget-object v8, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    neg-int v9, v12

    aget v8, v8, v9

    mul-float/2addr v7, v8

    :cond_1e
    :goto_b
    if-eqz v3, :cond_1f

    neg-float v8, v7

    goto :goto_c

    :cond_1f
    move v8, v7

    :goto_c
    return v8

    :cond_20
    :goto_d
    const/high16 v7, 0x7fc00000    # Float.NaN

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
