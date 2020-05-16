.class public Lcom/android/systemui/infinity/preview/ThemeFactory;
.super Ljava/lang/Object;
.source "ThemeFactory.java"


# static fields
.field public static final THEME_NAME_BLACK:Ljava/lang/String; = "black"

.field public static final THEME_NAME_BLUE:Ljava/lang/String; = "blue"

.field public static final THEME_NAME_GOLD:Ljava/lang/String; = "gold"

.field public static final THEME_NAME_ORCHID:Ljava/lang/String; = "orchid"

.field public static final THEME_TYPE_BLACK:I = 0x0

.field public static final THEME_TYPE_BLUE:I = 0x1

.field public static final THEME_TYPE_GOLD:I = 0x2

.field public static final THEME_TYPE_ORCHID:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;
    .locals 17

    move/from16 v0, p0

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/high16 v8, -0x1000000

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    if-nez v0, :cond_0

    new-array v15, v14, [I

    const/16 v1, 0x33

    const/16 v12, 0x46

    const/16 v9, 0x4f

    invoke-static {v1, v12, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v15, v13

    aput v8, v15, v11

    aput v8, v15, v10

    move-object v1, v15

    new-array v8, v14, [F

    fill-array-data v8, :array_0

    const/16 v9, 0xb

    new-array v12, v9, [F

    fill-array-data v12, :array_1

    new-array v15, v9, [I

    const/16 v5, 0xf

    invoke-static {v9, v9, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v15, v13

    const/16 v5, 0xd

    const/16 v9, 0x11

    const/16 v13, 0x1f

    invoke-static {v5, v9, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v15, v11

    const/16 v5, 0x22

    const/16 v9, 0x28

    const/16 v11, 0x35

    invoke-static {v5, v9, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v15, v10

    const/16 v5, 0x41

    const/16 v9, 0x49

    const/16 v10, 0x59

    invoke-static {v5, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v15, v14

    const/16 v5, 0x71

    const/16 v9, 0x70

    const/16 v10, 0x7d

    invoke-static {v5, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v15, v4

    const/16 v4, 0x93

    const/16 v5, 0x8c

    const/16 v9, 0x95

    invoke-static {v4, v5, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v15, v3

    const/16 v3, 0xa3

    const/16 v4, 0x96

    const/16 v5, 0xa1

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v15, v6

    const/16 v3, 0xa1

    const/16 v4, 0x91

    const/16 v5, 0xa2

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v15, v7

    const/16 v3, 0x7e

    const/16 v4, 0x7f

    const/16 v5, 0x9a

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v15, v2

    const/16 v2, 0x65

    const/16 v3, 0x6d

    const/16 v4, 0x85

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v15, v3

    const/16 v2, 0x49

    const/16 v3, 0x55

    const/16 v4, 0x6b

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v3, 0xa

    aput v2, v15, v3

    move-object v2, v15

    new-instance v3, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v3}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    iput-object v1, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    iput-object v8, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    iput-object v2, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    iput-object v12, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    iput v4, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    iput v4, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v4, 0x45390000    # 2960.0f

    iput v4, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v3

    :cond_0
    if-ne v0, v11, :cond_1

    new-array v1, v14, [I

    const/16 v5, 0x41

    invoke-static {v13, v13, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v13

    aput v8, v1, v11

    aput v8, v1, v10

    new-array v5, v14, [F

    fill-array-data v5, :array_2

    const/16 v8, 0xa

    new-array v9, v8, [I

    invoke-static {v13, v14, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v9, v13

    const/16 v12, 0x27

    invoke-static {v11, v8, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    aput v12, v9, v11

    const/16 v8, 0x2c

    const/16 v11, 0x5e

    invoke-static {v7, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v9, v10

    const/16 v8, 0x29

    const/16 v10, 0x62

    const/16 v11, 0x93

    invoke-static {v8, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v9, v14

    const/16 v8, 0x54

    const/16 v10, 0x83

    const/16 v11, 0xa2

    invoke-static {v8, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    aput v8, v9, v4

    const/16 v4, 0x79

    const/16 v8, 0x98

    const/16 v10, 0xa7

    invoke-static {v4, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v9, v3

    const/16 v3, 0x83

    const/16 v4, 0x9b

    const/16 v8, 0xa6

    invoke-static {v3, v4, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v6

    const/16 v3, 0x7c

    const/16 v4, 0x94

    const/16 v6, 0xa3

    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v7

    const/16 v3, 0x54

    const/16 v4, 0x78

    const/16 v6, 0x94

    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v2

    const/16 v2, 0x26

    const/16 v3, 0x44

    const/16 v4, 0x66

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v9, v3

    move-object v2, v9

    const/16 v3, 0xa

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    new-instance v4, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v4}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    iput-object v1, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    iput-object v5, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    iput-object v2, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    iput-object v3, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    const/4 v6, 0x0

    iput v6, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    iput v6, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    iput v6, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v6, 0x45390000    # 2960.0f

    iput v6, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v4

    :cond_1
    if-ne v0, v10, :cond_2

    new-array v1, v14, [I

    const/16 v5, 0x3f

    const/16 v9, 0x2e

    const/16 v12, 0x18

    invoke-static {v5, v9, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v1, v13

    aput v8, v1, v11

    aput v8, v1, v10

    new-array v5, v14, [F

    fill-array-data v5, :array_4

    const/16 v8, 0x9

    new-array v9, v8, [F

    fill-array-data v9, :array_5

    new-array v8, v8, [I

    const/16 v12, 0x70

    const/16 v15, 0x43

    const/16 v2, 0x28

    invoke-static {v12, v15, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v13

    const/16 v2, 0x94

    const/16 v12, 0x63

    const/16 v13, 0x2a

    invoke-static {v2, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v11

    const/16 v2, 0xb5

    const/16 v11, 0x99

    const/16 v12, 0x62

    invoke-static {v2, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v10

    const/16 v2, 0x9f

    const/16 v11, 0x88

    const/16 v12, 0x76

    invoke-static {v2, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v14

    const/16 v2, 0x6c

    const/16 v11, 0x64

    const/16 v12, 0x6a

    invoke-static {v2, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v4

    const/16 v2, 0x30

    const/16 v4, 0x38

    const/16 v11, 0x50

    invoke-static {v2, v4, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v3

    const/16 v2, 0xf

    const/16 v3, 0x1e

    const/16 v4, 0x40

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v6

    const/16 v2, 0x14

    const/16 v3, 0x30

    const/16 v4, 0xa

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v8, v7

    const/16 v2, 0x1a

    invoke-static {v10, v6, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v8, v3

    move-object v2, v8

    new-instance v3, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v3}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    iput-object v1, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    iput-object v5, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    iput-object v2, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    iput-object v9, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    iput v4, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    iput v4, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v4, 0x45390000    # 2960.0f

    iput v4, v3, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v3

    :cond_2
    if-ne v0, v14, :cond_3

    new-array v1, v14, [I

    const/16 v2, 0x2e

    const/16 v5, 0x40

    invoke-static {v2, v13, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v13

    aput v8, v1, v11

    aput v8, v1, v10

    new-array v2, v14, [F

    fill-array-data v2, :array_6

    const/16 v5, 0xa

    new-array v8, v5, [F

    fill-array-data v8, :array_7

    new-array v9, v5, [I

    const/16 v5, 0x58

    const/16 v12, 0x41

    const/16 v15, 0x67

    invoke-static {v5, v12, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v9, v13

    const/16 v5, 0x7f

    const/16 v12, 0x5e

    const/16 v13, 0x80

    invoke-static {v5, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v9, v11

    const/16 v5, 0xb1

    const/16 v11, 0x7c

    const/16 v12, 0x8e

    invoke-static {v5, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v9, v10

    const/16 v5, 0xca

    const/16 v10, 0x91

    const/16 v11, 0xa3

    invoke-static {v5, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v9, v14

    const/16 v5, 0xc9

    const/16 v10, 0x9a

    const/16 v11, 0xb3

    invoke-static {v5, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v9, v4

    const/16 v4, 0xb9

    const/16 v5, 0x90

    const/16 v10, 0xb8

    invoke-static {v4, v5, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    aput v4, v9, v3

    const/16 v3, 0x9c

    const/16 v4, 0x7a

    const/16 v5, 0xb0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v6

    const/16 v3, 0x62

    const/16 v4, 0x4d

    const/16 v5, 0x89

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v7

    const/16 v3, 0x34

    const/16 v4, 0x29

    const/16 v5, 0x59

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/16 v4, 0x8

    aput v3, v9, v4

    const/16 v3, 0x1d

    const/16 v4, 0xa

    invoke-static {v4, v7, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/16 v4, 0x9

    aput v3, v9, v4

    move-object v3, v9

    new-instance v4, Lcom/android/systemui/infinity/preview/ThemeModel;

    invoke-direct {v4}, Lcom/android/systemui/infinity/preview/ThemeModel;-><init>()V

    iput-object v1, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->aodColor:[I

    iput-object v2, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->aodPosition:[F

    iput-object v3, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->homeColor:[I

    iput-object v8, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->homePosition:[F

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->x0:F

    iput v5, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->y0:F

    iput v5, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->x1:F

    const/high16 v5, 0x45390000    # 2960.0f

    iput v5, v4, Lcom/android/systemui/infinity/preview/ThemeModel;->y1:F

    return-object v4

    :cond_3
    const/4 v1, 0x0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3df5c28f    # 0.12f
        0x3e75c28f    # 0.24f
        0x3ebd70a4    # 0.37f
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        0x3f2b851f    # 0.67f
        0x3f428f5c    # 0.76f
        0x3f5eb852    # 0.87f
        0x3f6e147b    # 0.93f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3df5c28f    # 0.12f
        0x3e800000    # 0.25f
        0x3ec28f5c    # 0.38f
        0x3f000000    # 0.5f
        0x3f2147ae    # 0.63f
        0x3f333333    # 0.7f
        0x3f428f5c    # 0.76f
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3db7e910    # 0.0898f
        0x3e572474    # 0.2101f
        0x3eadfa44    # 0.3398f
        0x3eeb5dcc    # 0.4597f
        0x3f16fd22    # 0.5898f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3ebd6388    # 0.3699f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3df58e22    # 0.1199f
        0x3e79096c    # 0.2432f
        0x3eadfa44    # 0.3398f
        0x3ed6fd22    # 0.4199f
        0x3f000000    # 0.5f
        0x3f16fd22    # 0.5898f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getThemeModel(Ljava/lang/String;)Lcom/android/systemui/infinity/preview/ThemeModel;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "blue"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "gold"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v1, "orchid"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/infinity/preview/ThemeFactory;->getThemeModel(I)Lcom/android/systemui/infinity/preview/ThemeModel;

    move-result-object v0

    return-object v0
.end method
