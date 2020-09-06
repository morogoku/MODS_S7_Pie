.class public Lcom/android/server/accessibility/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# static fields
.field public static final BLUE:I = 0x5

.field public static final CYAN:I = 0x4

.field private static final DEUTAN:I = 0x1

.field private static final Deutan_severity:[D

.field private static final Deutan_userParameter:[D

.field public static final GREEN:I = 0x3

.field public static final MAGENTA:I = 0x6

.field private static final MAX:I = 0x0

.field private static final MAX_MIN_COLOR_TRANSFER_NUM:I = 0x2

.field private static final MIN:I = 0x1

.field private static final PROTAN:I = 0x0

.field private static final Protan_severity:[D

.field private static final Protan_userParameter:[D

.field public static final RED:I = 0x1

.field private static final TRITAN:I = 0x2

.field private static final Tritan_severity:[D

.field private static final Tritan_userParameter:[D

.field public static final YELLOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x19

    new-array v1, v0, [D

    fill-array-data v1, :array_2e

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_96

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_fe

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_166

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    new-array v1, v0, [D

    fill-array-data v1, :array_1ce

    sput-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    new-array v0, v0, [D

    fill-array-data v0, :array_236

    sput-object v0, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    return-void

    nop

    :array_2e
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3fc999999999999aL    # 0.2
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_96
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_fe
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_166
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1ce
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe3333333333333L    # 0.6
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3fe999999999999aL    # 0.8
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_236
    .array-data 8
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3fe999999999999aL    # 0.8
        0x3feccccccccccccdL    # 0.9
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe6666666666666L    # 0.7
        0x3fe6666666666666L    # 0.7
        0x3ff0000000000000L    # 1.0
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3feccccccccccccdL    # 0.9
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMaxMinColorTrnasferValue_BB_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcc

    const/16 v1, 0xc9

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xc9

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xca

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xca

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xcb

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xce

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xce

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xcd

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xcd

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xcc

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xf4

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xed

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xe7

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xe1

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xda

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_96

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_8f

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_b0

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_8f

    :cond_5c
    if-ne p1, v3, :cond_8d

    packed-switch v2, :pswitch_data_ca

    goto :goto_8c

    :pswitch_62
    const/4 v0, 0x0

    const/16 v1, 0x47

    goto :goto_8c

    :pswitch_66
    const/4 v0, 0x0

    const/16 v1, 0x3d

    goto :goto_8c

    :pswitch_6a
    const/4 v0, 0x0

    const/16 v1, 0x33

    goto :goto_8c

    :pswitch_6e
    const/4 v0, 0x0

    const/16 v1, 0x29

    goto :goto_8c

    :pswitch_72
    const/4 v0, 0x0

    const/16 v1, 0x20

    goto :goto_8c

    :pswitch_76
    const/4 v0, 0x0

    const/16 v1, 0x1a

    goto :goto_8c

    :pswitch_7a
    const/4 v0, 0x0

    const/16 v1, 0x15

    goto :goto_8c

    :pswitch_7e
    const/4 v0, 0x0

    const/16 v1, 0x10

    goto :goto_8c

    :pswitch_82
    const/4 v0, 0x0

    const/16 v1, 0xc

    goto :goto_8c

    :pswitch_86
    const/4 v0, 0x0

    const/4 v1, 0x6

    goto :goto_8c

    :pswitch_89
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_8c
    goto :goto_8f

    :cond_8d
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_8f
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_89
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_92

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_8b

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_ac

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_8b

    :cond_5c
    if-ne p1, v3, :cond_89

    packed-switch v2, :pswitch_data_c6

    goto :goto_88

    :pswitch_62
    const/4 v0, 0x0

    const/16 v1, 0x47

    goto :goto_88

    :pswitch_66
    const/4 v0, 0x0

    const/16 v1, 0x3d

    goto :goto_88

    :pswitch_6a
    const/4 v0, 0x0

    const/16 v1, 0x33

    goto :goto_88

    :pswitch_6e
    const/4 v0, 0x0

    const/16 v1, 0x29

    goto :goto_88

    :pswitch_72
    const/4 v0, 0x0

    const/16 v1, 0x20

    goto :goto_88

    :pswitch_76
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_88

    :pswitch_79
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_88

    :pswitch_7c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_88

    :pswitch_7f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_88

    :pswitch_82
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_88

    :pswitch_85
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_88
    goto :goto_8b

    :cond_89
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_8b
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_98

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_92

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_b2

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_92

    :cond_5c
    if-ne p1, v3, :cond_90

    packed-switch v2, :pswitch_data_cc

    goto :goto_8f

    :pswitch_62
    const/16 v0, 0x2f

    const/16 v1, 0x76

    goto :goto_8f

    :pswitch_67
    const/16 v0, 0x29

    const/16 v1, 0x66

    goto :goto_8f

    :pswitch_6c
    const/16 v0, 0x20

    const/16 v1, 0x53

    goto :goto_8f

    :pswitch_71
    const/4 v0, 0x0

    const/16 v1, 0x29

    goto :goto_8f

    :pswitch_75
    const/4 v0, 0x0

    const/16 v1, 0x20

    goto :goto_8f

    :pswitch_79
    const/4 v0, 0x0

    const/16 v1, 0x1a

    goto :goto_8f

    :pswitch_7d
    const/4 v0, 0x0

    const/16 v1, 0x15

    goto :goto_8f

    :pswitch_81
    const/4 v0, 0x0

    const/16 v1, 0x10

    goto :goto_8f

    :pswitch_85
    const/4 v0, 0x0

    const/16 v1, 0xc

    goto :goto_8f

    :pswitch_89
    const/4 v0, 0x0

    const/4 v1, 0x6

    goto :goto_8f

    :pswitch_8c
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_8f
    goto :goto_92

    :cond_90
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_92
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_39

    packed-switch v2, :pswitch_data_a2

    goto :goto_37

    :pswitch_11
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_14
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_17
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_1a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_1d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_20
    const/4 v0, 0x0

    const/16 v1, 0x27

    goto :goto_37

    :pswitch_24
    const/4 v0, 0x0

    const/16 v1, 0x1e

    goto :goto_37

    :pswitch_28
    const/4 v0, 0x0

    const/16 v1, 0x16

    goto :goto_37

    :pswitch_2c
    const/4 v0, 0x0

    const/16 v1, 0xf

    goto :goto_37

    :pswitch_30
    const/4 v0, 0x0

    const/16 v1, 0x9

    goto :goto_37

    :pswitch_34
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_37
    goto/16 :goto_9b

    :cond_39
    if-ne p1, v5, :cond_66

    packed-switch v2, :pswitch_data_bc

    goto :goto_65

    :pswitch_3f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_65

    :pswitch_42
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_65

    :pswitch_45
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_65

    :pswitch_48
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_65

    :pswitch_4b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_65

    :pswitch_4e
    const/4 v0, 0x0

    const/16 v1, 0x29

    goto :goto_65

    :pswitch_52
    const/4 v0, 0x0

    const/16 v1, 0x20

    goto :goto_65

    :pswitch_56
    const/4 v0, 0x0

    const/16 v1, 0x18

    goto :goto_65

    :pswitch_5a
    const/4 v0, 0x0

    const/16 v1, 0x11

    goto :goto_65

    :pswitch_5e
    const/4 v0, 0x0

    const/16 v1, 0xb

    goto :goto_65

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_65
    goto :goto_9b

    :cond_66
    if-ne p1, v3, :cond_99

    packed-switch v2, :pswitch_data_d6

    goto :goto_98

    :pswitch_6c
    const/16 v0, 0x2f

    const/16 v1, 0x76

    goto :goto_98

    :pswitch_71
    const/16 v0, 0x29

    const/16 v1, 0x66

    goto :goto_98

    :pswitch_76
    const/16 v0, 0x20

    const/16 v1, 0x53

    goto :goto_98

    :pswitch_7b
    const/4 v0, 0x0

    const/16 v1, 0x29

    goto :goto_98

    :pswitch_7f
    const/4 v0, 0x0

    const/16 v1, 0x20

    goto :goto_98

    :pswitch_83
    const/4 v0, 0x0

    const/16 v1, 0xa

    goto :goto_98

    :pswitch_87
    const/4 v0, 0x0

    const/16 v1, 0x9

    goto :goto_98

    :pswitch_8b
    const/4 v0, 0x0

    const/16 v1, 0x8

    goto :goto_98

    :pswitch_8f
    const/4 v0, 0x0

    const/4 v1, 0x6

    goto :goto_98

    :pswitch_92
    const/4 v0, 0x0

    const/4 v1, 0x4

    goto :goto_98

    :pswitch_95
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_98
    goto :goto_9b

    :cond_99
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_9b
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcc

    const/16 v1, 0xca

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xca

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xca

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xca

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xcb

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xc8

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xc9

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xc9

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xca

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xcb

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xce

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xce

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xce

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xce

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xcd

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcf

    const/16 v1, 0xe6

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xe6

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xe1

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xd7

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xd3

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xfd

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xf2

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xe8

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xe0

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xd8

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xd2

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xd3

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xd3

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xd2

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xd0

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_86

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_86

    :cond_5c
    if-ne p1, v3, :cond_84

    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_65
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_71
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_74
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_77
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_83
    goto :goto_86

    :cond_84
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_86

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_86

    :cond_5c
    if-ne p1, v3, :cond_84

    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_65
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_71
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_74
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_77
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_83
    goto :goto_86

    :cond_84
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_48

    packed-switch v2, :pswitch_data_b4

    goto :goto_46

    :pswitch_11
    const/16 v0, 0x73

    const/16 v1, 0x73

    goto :goto_46

    :pswitch_16
    const/16 v0, 0x6d

    const/16 v1, 0x6d

    goto :goto_46

    :pswitch_1b
    const/16 v0, 0x67

    const/16 v1, 0x67

    goto :goto_46

    :pswitch_20
    const/16 v0, 0x5d

    const/16 v1, 0x5d

    goto :goto_46

    :pswitch_25
    const/16 v0, 0x55

    const/16 v1, 0x55

    goto :goto_46

    :pswitch_2a
    const/16 v0, 0x4b

    const/16 v1, 0x4b

    goto :goto_46

    :pswitch_2f
    const/16 v0, 0x3f

    const/16 v1, 0x3f

    goto :goto_46

    :pswitch_34
    const/16 v0, 0x33

    const/16 v1, 0x33

    goto :goto_46

    :pswitch_39
    const/16 v0, 0x25

    const/16 v1, 0x25

    goto :goto_46

    :pswitch_3e
    const/16 v0, 0x13

    const/16 v1, 0x13

    goto :goto_46

    :pswitch_43
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_46
    goto/16 :goto_ae

    :cond_48
    if-ne p1, v5, :cond_84

    packed-switch v2, :pswitch_data_ce

    goto :goto_83

    :pswitch_4e
    const/16 v0, 0x5e

    const/16 v1, 0x5e

    goto :goto_83

    :pswitch_53
    const/16 v0, 0x59

    const/16 v1, 0x59

    goto :goto_83

    :pswitch_58
    const/16 v0, 0x55

    const/16 v1, 0x55

    goto :goto_83

    :pswitch_5d
    const/16 v0, 0x4f

    const/16 v1, 0x4f

    goto :goto_83

    :pswitch_62
    const/16 v0, 0x49

    const/16 v1, 0x49

    goto :goto_83

    :pswitch_67
    const/16 v0, 0x41

    const/16 v1, 0x41

    goto :goto_83

    :pswitch_6c
    const/16 v0, 0x39

    const/16 v1, 0x39

    goto :goto_83

    :pswitch_71
    const/16 v0, 0x2f

    const/16 v1, 0x2f

    goto :goto_83

    :pswitch_76
    const/16 v0, 0x23

    const/16 v1, 0x23

    goto :goto_83

    :pswitch_7b
    const/16 v0, 0x13

    const/16 v1, 0x13

    goto :goto_83

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_83
    goto :goto_ae

    :cond_84
    if-ne p1, v3, :cond_ac

    packed-switch v2, :pswitch_data_e8

    goto :goto_ab

    :pswitch_8a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_8d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_90
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_93
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_96
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_99
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_9c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_9f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_a2
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_a5
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_ab

    :pswitch_a8
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_ab
    goto :goto_ae

    :cond_ac
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_ae
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_3e

    packed-switch v2, :pswitch_data_a0

    goto :goto_3c

    :pswitch_11
    const/16 v0, 0x73

    const/16 v1, 0x73

    goto :goto_3c

    :pswitch_16
    const/16 v0, 0x6d

    const/16 v1, 0x6d

    goto :goto_3c

    :pswitch_1b
    const/16 v0, 0x67

    const/16 v1, 0x67

    goto :goto_3c

    :pswitch_20
    const/16 v0, 0x5d

    const/16 v1, 0x5d

    goto :goto_3c

    :pswitch_25
    const/16 v0, 0x55

    const/16 v1, 0x55

    goto :goto_3c

    :pswitch_2a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_3c

    :pswitch_2d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_3c

    :pswitch_30
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_3c

    :pswitch_33
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_3c

    :pswitch_36
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_3c

    :pswitch_39
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_3c
    goto/16 :goto_9a

    :cond_3e
    if-ne p1, v5, :cond_70

    packed-switch v2, :pswitch_data_ba

    goto :goto_6f

    :pswitch_44
    const/16 v0, 0x5e

    const/16 v1, 0x5e

    goto :goto_6f

    :pswitch_49
    const/16 v0, 0x59

    const/16 v1, 0x59

    goto :goto_6f

    :pswitch_4e
    const/16 v0, 0x55

    const/16 v1, 0x55

    goto :goto_6f

    :pswitch_53
    const/16 v0, 0x4f

    const/16 v1, 0x4f

    goto :goto_6f

    :pswitch_58
    const/16 v0, 0x49

    const/16 v1, 0x49

    goto :goto_6f

    :pswitch_5d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_6f

    :pswitch_60
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_6f

    :pswitch_63
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_6f

    :pswitch_66
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_6f

    :pswitch_69
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_6f

    :pswitch_6c
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_6f
    goto :goto_9a

    :cond_70
    if-ne p1, v3, :cond_98

    packed-switch v2, :pswitch_data_d4

    goto :goto_97

    :pswitch_76
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_79
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_7c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_7f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_82
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_85
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_88
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_8b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_8e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_91
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_94
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_97
    goto :goto_9a

    :cond_98
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_9a
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcc

    const/16 v1, 0xf3

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xeb

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xe3

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xdd

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xd6

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xfb

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xef

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xe5

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xdc

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xda

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xda

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xd9

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xd7

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xd4

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_98

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_92

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_b2

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_92

    :cond_5c
    if-ne p1, v3, :cond_90

    packed-switch v2, :pswitch_data_cc

    goto :goto_8f

    :pswitch_62
    const/16 v0, 0x51

    const/16 v1, 0x51

    goto :goto_8f

    :pswitch_67
    const/16 v0, 0x49

    const/16 v1, 0x49

    goto :goto_8f

    :pswitch_6c
    const/16 v0, 0x3f

    const/16 v1, 0x3f

    goto :goto_8f

    :pswitch_71
    const/16 v0, 0x33

    const/16 v1, 0x33

    goto :goto_8f

    :pswitch_76
    const/16 v0, 0x26

    const/16 v1, 0x26

    goto :goto_8f

    :pswitch_7b
    const/16 v0, 0x15

    const/16 v1, 0x15

    goto :goto_8f

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8f

    :pswitch_83
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8f

    :pswitch_86
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8f

    :pswitch_89
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8f

    :pswitch_8c
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_8f
    goto :goto_92

    :cond_90
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_92
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_96

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_90

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_b0

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_90

    :cond_5c
    if-ne p1, v3, :cond_8e

    packed-switch v2, :pswitch_data_ca

    goto :goto_8d

    :pswitch_62
    const/16 v0, 0x51

    const/16 v1, 0x51

    goto :goto_8d

    :pswitch_67
    const/16 v0, 0x49

    const/16 v1, 0x49

    goto :goto_8d

    :pswitch_6c
    const/16 v0, 0x3f

    const/16 v1, 0x3f

    goto :goto_8d

    :pswitch_71
    const/16 v0, 0x33

    const/16 v1, 0x33

    goto :goto_8d

    :pswitch_76
    const/16 v0, 0x26

    const/16 v1, 0x26

    goto :goto_8d

    :pswitch_7b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_7e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_81
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_84
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_87
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_8a
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_8d
    goto :goto_90

    :cond_8e
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_90
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0x8a

    const/16 v1, 0xfc

    goto :goto_48

    :pswitch_16
    const/16 v0, 0x90

    const/16 v1, 0xfa

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0x98

    const/16 v1, 0xf6

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xa1

    const/16 v1, 0xf0

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xa9

    const/16 v1, 0xea

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xb3

    const/16 v1, 0xe4

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xbe

    const/16 v1, 0xe4

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xe2

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xda

    const/16 v1, 0xe4

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xea

    const/16 v1, 0xee

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0x8a

    const/16 v1, 0xfc

    goto :goto_87

    :pswitch_55
    const/16 v0, 0x90

    const/16 v1, 0xfa

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0x98

    const/16 v1, 0xf6

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xa1

    const/16 v1, 0xf0

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xa9

    const/16 v1, 0xea

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xb3

    const/16 v1, 0xe4

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xbe

    const/16 v1, 0xe4

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xe2

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xda

    const/16 v1, 0xe4

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xea

    const/16 v1, 0xee

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0x8a

    const/16 v1, 0xfc

    goto :goto_48

    :pswitch_16
    const/16 v0, 0x90

    const/16 v1, 0xfa

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0x98

    const/16 v1, 0xf6

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xa1

    const/16 v1, 0xf0

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xa9

    const/16 v1, 0xea

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcc

    const/16 v1, 0xcb

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xcb

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xcb

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xcb

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xcb

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0x8a

    const/16 v1, 0xfc

    goto :goto_87

    :pswitch_55
    const/16 v0, 0x90

    const/16 v1, 0xfa

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0x98

    const/16 v1, 0xf6

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xa1

    const/16 v1, 0xf0

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xa9

    const/16 v1, 0xea

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xd2

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xd1

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xcf

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xce

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xcd

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xf1

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xeb

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xe4

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xde

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xd8

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_90

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_89

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_aa

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_89

    :cond_5c
    if-ne p1, v3, :cond_87

    packed-switch v2, :pswitch_data_c4

    goto :goto_86

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_86

    :pswitch_65
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_86

    :pswitch_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_86

    :pswitch_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_86

    :pswitch_6e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_86

    :pswitch_71
    const/4 v0, 0x0

    const/4 v1, 0x4

    goto :goto_86

    :pswitch_74
    const/4 v0, 0x0

    const/16 v1, 0xa

    goto :goto_86

    :pswitch_78
    const/4 v0, 0x0

    const/16 v1, 0xd

    goto :goto_86

    :pswitch_7c
    const/4 v0, 0x0

    const/16 v1, 0xb

    goto :goto_86

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x5

    goto :goto_86

    :pswitch_83
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_86
    goto :goto_89

    :cond_87
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_89
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_83
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_86

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_86

    :cond_5c
    if-ne p1, v3, :cond_84

    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_65
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_71
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_74
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_77
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_83
    goto :goto_86

    :cond_84
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xff

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xb6

    const/16 v1, 0xb6

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xcc

    const/16 v1, 0xcc

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xdf

    const/16 v1, 0xdf

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xf0

    const/16 v1, 0xf0

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xf9

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xfa

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xb6

    const/16 v1, 0xb6

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xcc

    const/16 v1, 0xcc

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xdf

    const/16 v1, 0xdf

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xf0

    const/16 v1, 0xf0

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xec

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xee

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xed

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xe8

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xe1

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_3e

    packed-switch v2, :pswitch_data_a0

    goto :goto_3c

    :pswitch_11
    const/4 v0, 0x0

    const/16 v1, 0xd8

    goto :goto_3c

    :pswitch_15
    const/4 v0, 0x0

    const/16 v1, 0xca

    goto :goto_3c

    :pswitch_19
    const/4 v0, 0x0

    const/16 v1, 0xbc

    goto :goto_3c

    :pswitch_1d
    const/4 v0, 0x0

    const/16 v1, 0xac

    goto :goto_3c

    :pswitch_21
    const/4 v0, 0x0

    const/16 v1, 0x9c

    goto :goto_3c

    :pswitch_25
    const/4 v0, 0x0

    const/16 v1, 0x88

    goto :goto_3c

    :pswitch_29
    const/4 v0, 0x0

    const/16 v1, 0x75

    goto :goto_3c

    :pswitch_2d
    const/4 v0, 0x0

    const/16 v1, 0x5c

    goto :goto_3c

    :pswitch_31
    const/4 v0, 0x0

    const/16 v1, 0x42

    goto :goto_3c

    :pswitch_35
    const/4 v0, 0x0

    const/16 v1, 0x24

    goto :goto_3c

    :pswitch_39
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_3c
    goto/16 :goto_9a

    :cond_3e
    if-ne p1, v5, :cond_70

    packed-switch v2, :pswitch_data_ba

    goto :goto_6f

    :pswitch_44
    const/4 v0, 0x0

    const/16 v1, 0xd8

    goto :goto_6f

    :pswitch_48
    const/4 v0, 0x0

    const/16 v1, 0xca

    goto :goto_6f

    :pswitch_4c
    const/4 v0, 0x0

    const/16 v1, 0xbc

    goto :goto_6f

    :pswitch_50
    const/4 v0, 0x0

    const/16 v1, 0xac

    goto :goto_6f

    :pswitch_54
    const/4 v0, 0x0

    const/16 v1, 0x9c

    goto :goto_6f

    :pswitch_58
    const/4 v0, 0x0

    const/16 v1, 0x88

    goto :goto_6f

    :pswitch_5c
    const/4 v0, 0x0

    const/16 v1, 0x75

    goto :goto_6f

    :pswitch_60
    const/4 v0, 0x0

    const/16 v1, 0x5c

    goto :goto_6f

    :pswitch_64
    const/4 v0, 0x0

    const/16 v1, 0x42

    goto :goto_6f

    :pswitch_68
    const/4 v0, 0x0

    const/16 v1, 0x24

    goto :goto_6f

    :pswitch_6c
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_6f
    goto :goto_9a

    :cond_70
    if-ne p1, v3, :cond_98

    packed-switch v2, :pswitch_data_d4

    goto :goto_97

    :pswitch_76
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_79
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_7c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_7f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_82
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_85
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_88
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_8b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_8e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_91
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_97

    :pswitch_94
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_97
    goto :goto_9a

    :cond_98
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_9a
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_39

    packed-switch v2, :pswitch_data_96

    goto :goto_37

    :pswitch_11
    const/4 v0, 0x0

    const/16 v1, 0xd8

    goto :goto_37

    :pswitch_15
    const/4 v0, 0x0

    const/16 v1, 0xca

    goto :goto_37

    :pswitch_19
    const/4 v0, 0x0

    const/16 v1, 0xbc

    goto :goto_37

    :pswitch_1d
    const/4 v0, 0x0

    const/16 v1, 0xac

    goto :goto_37

    :pswitch_21
    const/4 v0, 0x0

    const/16 v1, 0x9c

    goto :goto_37

    :pswitch_25
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_28
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_2b
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_2e
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_37

    :pswitch_31
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_37

    :pswitch_34
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_37
    goto/16 :goto_90

    :cond_39
    if-ne p1, v5, :cond_66

    packed-switch v2, :pswitch_data_b0

    goto :goto_65

    :pswitch_3f
    const/4 v0, 0x0

    const/16 v1, 0xd8

    goto :goto_65

    :pswitch_43
    const/4 v0, 0x0

    const/16 v1, 0xca

    goto :goto_65

    :pswitch_47
    const/4 v0, 0x0

    const/16 v1, 0xbc

    goto :goto_65

    :pswitch_4b
    const/4 v0, 0x0

    const/16 v1, 0xac

    goto :goto_65

    :pswitch_4f
    const/4 v0, 0x0

    const/16 v1, 0x9c

    goto :goto_65

    :pswitch_53
    const/4 v0, 0x0

    const/4 v1, 0x3

    goto :goto_65

    :pswitch_56
    const/4 v0, 0x0

    const/4 v1, 0x2

    goto :goto_65

    :pswitch_59
    const/4 v0, 0x0

    const/4 v1, 0x2

    goto :goto_65

    :pswitch_5c
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_65

    :pswitch_5f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_65

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_65
    goto :goto_90

    :cond_66
    if-ne p1, v3, :cond_8e

    packed-switch v2, :pswitch_data_ca

    goto :goto_8d

    :pswitch_6c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_6f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_72
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_75
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_78
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_7b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_7e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_81
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_84
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_87
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_8d

    :pswitch_8a
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_8d
    goto :goto_90

    :cond_8e
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_90
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_86

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_86

    :cond_5c
    if-ne p1, v3, :cond_84

    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_65
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_71
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_74
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_77
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_83
    goto :goto_86

    :cond_84
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_86

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_86

    :cond_5c
    if-ne p1, v3, :cond_84

    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_65
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_71
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_74
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_77
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_83
    goto :goto_86

    :cond_84
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xef

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xee

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xe2

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xe4

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xe4

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xe2

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xdc

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_86

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_86

    :cond_5c
    if-ne p1, v3, :cond_84

    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_65
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_71
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_74
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_77
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_83
    goto :goto_86

    :cond_84
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_34

    packed-switch v2, :pswitch_data_8c

    goto :goto_32

    :pswitch_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_14
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_17
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_1d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_20
    const/4 v0, 0x0

    const/4 v1, 0x2

    goto :goto_32

    :pswitch_23
    const/4 v0, 0x0

    const/4 v1, 0x2

    goto :goto_32

    :pswitch_26
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_29
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_32

    :pswitch_2c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :pswitch_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_32
    goto/16 :goto_86

    :cond_34
    if-ne p1, v5, :cond_5c

    packed-switch v2, :pswitch_data_a6

    goto :goto_5b

    :pswitch_3a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_3d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_40
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_43
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_46
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_49
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4c
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_4f
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_52
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_55
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_5b

    :pswitch_58
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_5b
    goto :goto_86

    :cond_5c
    if-ne p1, v3, :cond_84

    packed-switch v2, :pswitch_data_c0

    goto :goto_83

    :pswitch_62
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_65
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_68
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6b
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_6e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_71
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_74
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_77
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7a
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_83

    :pswitch_80
    const/4 v0, 0x0

    const/4 v1, 0x0

    nop

    :goto_83
    goto :goto_86

    :cond_84
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_86
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xcf

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcc

    const/16 v1, 0xd8

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xd5

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xd3

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xd1

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xcf

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xd8

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xd5

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xd3

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xd0

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xcf

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xd4

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xd3

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xd2

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xd0

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xcf

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_DMC(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v2

    const/4 v5, 0x1

    if-nez p1, :cond_4a

    packed-switch v2, :pswitch_data_ce

    goto :goto_48

    :pswitch_11
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_16
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_1b
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_20
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_25
    const/16 v0, 0xfe

    const/16 v1, 0xfe

    goto :goto_48

    :pswitch_2a
    const/16 v0, 0xcc

    const/16 v1, 0xa4

    goto :goto_48

    :pswitch_2f
    const/16 v0, 0xcc

    const/16 v1, 0xad

    goto :goto_48

    :pswitch_34
    const/16 v0, 0xcc

    const/16 v1, 0xb5

    goto :goto_48

    :pswitch_39
    const/16 v0, 0xcc

    const/16 v1, 0xbc

    goto :goto_48

    :pswitch_3e
    const/16 v0, 0xcc

    const/16 v1, 0xc2

    goto :goto_48

    :pswitch_43
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_48
    goto/16 :goto_c8

    :cond_4a
    if-ne p1, v5, :cond_88

    packed-switch v2, :pswitch_data_e8

    goto :goto_87

    :pswitch_50
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_55
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5a
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_5f
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_64
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_87

    :pswitch_69
    const/16 v0, 0xcc

    const/16 v1, 0xa2

    goto :goto_87

    :pswitch_6e
    const/16 v0, 0xcc

    const/16 v1, 0xab

    goto :goto_87

    :pswitch_73
    const/16 v0, 0xcc

    const/16 v1, 0xb3

    goto :goto_87

    :pswitch_78
    const/16 v0, 0xcc

    const/16 v1, 0xba

    goto :goto_87

    :pswitch_7d
    const/16 v0, 0xcc

    const/16 v1, 0xc0

    goto :goto_87

    :pswitch_82
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_87
    goto :goto_c8

    :cond_88
    if-ne p1, v3, :cond_c6

    packed-switch v2, :pswitch_data_102

    goto :goto_c5

    :pswitch_8e
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_93
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_98
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_9d
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a2
    const/16 v0, 0xff

    const/16 v1, 0xff

    goto :goto_c5

    :pswitch_a7
    const/16 v0, 0xcc

    const/16 v1, 0xc1

    goto :goto_c5

    :pswitch_ac
    const/16 v0, 0xcc

    const/16 v1, 0xc2

    goto :goto_c5

    :pswitch_b1
    const/16 v0, 0xcc

    const/16 v1, 0xc3

    goto :goto_c5

    :pswitch_b6
    const/16 v0, 0xcc

    const/16 v1, 0xc5

    goto :goto_c5

    :pswitch_bb
    const/16 v0, 0xcc

    const/16 v1, 0xc7

    goto :goto_c5

    :pswitch_c0
    const/16 v0, 0xff

    const/16 v1, 0xff

    nop

    :goto_c5
    goto :goto_c8

    :cond_c6
    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_c8
    const/4 v3, 0x0

    aput v1, v4, v3

    aput v0, v4, v5

    return-object v4

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3e
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
    .end packed-switch
.end method

.method private roundHalfUp(D)I
    .registers 6

    const/4 v0, 0x0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method


# virtual methods
.method public getColorTransferValue_DMC(IIIDD)I
    .registers 26

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3f

    if-ne v1, v10, :cond_1f

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_1f
    if-ne v1, v9, :cond_2f

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_2f
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_3f
    const/4 v11, 0x2

    if-ne v0, v11, :cond_72

    if-ne v1, v10, :cond_52

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_52
    if-ne v1, v9, :cond_62

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_62
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_72
    if-ne v0, v9, :cond_a4

    if-ne v1, v10, :cond_84

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_84
    if-ne v1, v9, :cond_94

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_94
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_a4
    const/4 v12, 0x4

    if-ne v0, v12, :cond_d7

    if-ne v1, v10, :cond_b7

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_b7
    if-ne v1, v9, :cond_c7

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_c7
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_DMC(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_d7
    if-ne v0, v8, :cond_106

    if-ne v1, v10, :cond_e8

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_e8
    if-ne v1, v9, :cond_f7

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_f7
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_106
    const/4 v12, 0x6

    if-ne v0, v12, :cond_136

    if-ne v1, v10, :cond_118

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_118
    if-ne v1, v9, :cond_127

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_127
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_DMC(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_136
    new-array v3, v11, [I

    aput v7, v3, v6

    aput v7, v3, v10

    :cond_13c
    :goto_13c
    if-eqz v3, :cond_161

    aget v8, v3, v6

    if-ne v8, v7, :cond_147

    aget v8, v3, v10

    if-ne v8, v7, :cond_147

    goto :goto_161

    :cond_147
    aget v6, v3, v6

    aget v7, v3, v10

    sub-int/2addr v6, v7

    move-object/from16 v8, p0

    move-wide/from16 v11, p6

    invoke-direct {v8, v11, v12}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v4

    int-to-double v13, v6

    int-to-double v10, v4

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    div-double/2addr v10, v15

    mul-double/2addr v13, v10

    const/4 v5, 0x1

    aget v5, v3, v5

    int-to-double v9, v5

    add-double/2addr v13, v9

    double-to-int v2, v13

    return v2

    :cond_161
    :goto_161
    move-object/from16 v8, p0

    return v7
.end method

.method public getColorTransferValue_Hybrid(IIIDD)I
    .registers 26

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3f

    if-ne v1, v10, :cond_1f

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RR_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_1f
    if-ne v1, v9, :cond_2f

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RG_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_2f
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_RB_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_3f
    const/4 v11, 0x2

    if-ne v0, v11, :cond_72

    if-ne v1, v10, :cond_52

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YR_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_52
    if-ne v1, v9, :cond_62

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YG_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_62
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_YB_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_72
    if-ne v0, v9, :cond_a4

    if-ne v1, v10, :cond_84

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GR_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_84
    if-ne v1, v9, :cond_94

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GG_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_94
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_GB_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_a4
    const/4 v12, 0x4

    if-ne v0, v12, :cond_d7

    if-ne v1, v10, :cond_b7

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CR_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_b7
    if-ne v1, v9, :cond_c7

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CG_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_c7
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_CB_Hybrid(IDD)[I

    move-result-object v3

    goto/16 :goto_13c

    :cond_d7
    if-ne v0, v8, :cond_106

    if-ne v1, v10, :cond_e8

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BR_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_e8
    if-ne v1, v9, :cond_f7

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BG_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_f7
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_BB_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_106
    const/4 v12, 0x6

    if-ne v0, v12, :cond_136

    if-ne v1, v10, :cond_118

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MR_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_118
    if-ne v1, v9, :cond_127

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MG_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_127
    if-ne v1, v8, :cond_13c

    move-object/from16 v11, p0

    move/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/server/accessibility/ColorTransferTable;->getMaxMinColorTrnasferValue_MB_Hybrid(IDD)[I

    move-result-object v3

    goto :goto_13c

    :cond_136
    new-array v3, v11, [I

    aput v7, v3, v6

    aput v7, v3, v10

    :cond_13c
    :goto_13c
    if-eqz v3, :cond_161

    aget v8, v3, v6

    if-ne v8, v7, :cond_147

    aget v8, v3, v10

    if-ne v8, v7, :cond_147

    goto :goto_161

    :cond_147
    aget v6, v3, v6

    aget v7, v3, v10

    sub-int/2addr v6, v7

    move-object/from16 v8, p0

    move-wide/from16 v11, p6

    invoke-direct {v8, v11, v12}, Lcom/android/server/accessibility/ColorTransferTable;->roundHalfUp(D)I

    move-result v4

    int-to-double v13, v6

    int-to-double v10, v4

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    div-double/2addr v10, v15

    mul-double/2addr v13, v10

    const/4 v5, 0x1

    aget v5, v3, v5

    int-to-double v9, v5

    add-double/2addr v13, v9

    double-to-int v2, v13

    return v2

    :cond_161
    :goto_161
    move-object/from16 v8, p0

    return v7
.end method

.method public getPredefinedValueForEachType(II)[D
    .registers 9

    const/4 v0, 0x2

    new-array v0, v0, [D

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_34

    const/4 v1, 0x0

    return-object v1

    :pswitch_c
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    aget-wide v4, v1, p2

    aput-wide v4, v0, v2

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    aget-wide v1, v1, p2

    aput-wide v1, v0, v3

    goto :goto_33

    :pswitch_19
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    aget-wide v4, v1, p2

    aput-wide v4, v0, v2

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    aget-wide v1, v1, p2

    aput-wide v1, v0, v3

    goto :goto_33

    :pswitch_26
    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    aget-wide v4, v1, p2

    aput-wide v4, v0, v2

    sget-object v1, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    aget-wide v1, v1, p2

    aput-wide v1, v0, v3

    nop

    :goto_33
    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_26
        :pswitch_19
        :pswitch_c
    .end packed-switch
.end method
