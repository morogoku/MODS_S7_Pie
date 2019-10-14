.class Lcom/android/systemui/keyguardimage/ImageOptionCreator;
.super Ljava/lang/Object;
.source "ImageOptionCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createImageOption(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;
    .locals 21

    move-object/from16 v1, p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    invoke-direct {v0}, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;-><init>()V

    move-object v5, v0

    iget v0, v2, Landroid/graphics/Point;->x:I

    iput v0, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realWidth:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    iput v0, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->realHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    iput-boolean v0, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "/portrait"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    const-string v0, "/landscape"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v4, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iput v3, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto :goto_5

    :cond_2
    const-string v0, "/custom"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v9, 0x0

    move v10, v6

    :try_start_0
    const-string/jumbo v0, "width"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    const-string v0, "height"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    if-eqz v9, :cond_7

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    if-ge v9, v10, :cond_4

    if-gt v9, v3, :cond_4

    if-gt v10, v4, :cond_4

    int-to-float v12, v9

    int-to-float v13, v3

    div-float v11, v12, v13

    goto :goto_2

    :cond_4
    if-le v9, v10, :cond_5

    if-gt v9, v4, :cond_5

    if-gt v10, v3, :cond_5

    int-to-float v12, v9

    int-to-float v13, v4

    div-float v11, v12, v13

    :cond_5
    :goto_2
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-nez v12, :cond_6

    return-object v0

    :cond_6
    iput v11, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    iput v9, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iput v10, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    goto :goto_5

    :cond_7
    :goto_3
    return-object v0

    :cond_8
    :goto_4
    iput v3, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iput v4, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v0, v10, [Z

    fill-array-data v0, :array_0

    move-object v11, v0

    const-string v0, "&"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    const-string v0, "="

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    const/4 v10, 0x2

    if-eq v0, v10, :cond_a

    nop

    :goto_7
    const/4 v10, 0x4

    goto :goto_6

    :cond_a
    aget-object v10, v15, v6

    aget-object v6, v15, v7

    const/4 v0, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v7, "color_main"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v17, 0x1

    goto :goto_9

    :sswitch_1
    const-string/jumbo v7, "white_theme"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v17, 0x0

    goto :goto_9

    :sswitch_2
    const-string v7, "color_bg_main"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x3

    move/from16 v17, v7

    goto :goto_9

    :sswitch_3
    const-string v7, "color_bg_second"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v17, 0x4

    goto :goto_9

    :sswitch_4
    const-string v7, "color_second"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v17, 0x2

    goto :goto_9

    :cond_b
    :goto_8
    const/16 v17, -0x1

    :goto_9
    packed-switch v17, :pswitch_data_0

    :cond_c
    const/4 v7, 0x4

    goto :goto_b

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_b

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_b

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_b

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_b

    :pswitch_4
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "on"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_d
    const/16 v18, 0x0

    :goto_a
    move/from16 v7, v18

    const/4 v13, 0x4

    if-ge v7, v13, :cond_e

    iget-object v13, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const v16, -0xbababb

    aput v16, v13, v7

    add-int/lit8 v18, v7, 0x1

    goto :goto_a

    :cond_e
    return-object v5

    :goto_b
    move v7, v0

    const/4 v0, -0x1

    if-le v7, v0, :cond_f

    :try_start_1
    iget-object v0, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    const/16 v1, 0x10

    invoke-static {v6, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x1

    aput-boolean v1, v11, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_c
    nop

    move-object/from16 v1, p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_10
    array-length v0, v11

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_12

    aget-boolean v6, v11, v1

    if-nez v6, :cond_11

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    goto :goto_e

    :cond_11
    const/4 v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_12
    :goto_e
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70ca7330 -> :sswitch_4
        -0x6d5ea82e -> :sswitch_3
        -0x289da769 -> :sswitch_2
        -0x223bddcd -> :sswitch_1
        0x4cdbb515 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
