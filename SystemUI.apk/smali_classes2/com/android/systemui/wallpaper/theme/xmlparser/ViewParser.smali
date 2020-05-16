.class public Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "ViewParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 24

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isStartTag()Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setFrameImageView(Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isScaled()Z

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ViewParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseAttribute: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] , ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeWidth()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeHeight()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeWidth()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPackgeHeight()F

    move-result v10

    sub-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const-string v8, "ViewParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseAttribute: isWallpaperView : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setWallpaperView(Z)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_16

    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :goto_2
    move-object/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v9

    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_3
    const-string v12, "ViewParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\" "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "img"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "drawable"

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPkgName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v11, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceWidth()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceDensity()F

    move-result v16

    mul-float v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceHeight()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDeviceDensity()F

    move-result v17

    mul-float v8, v16, v17

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v18, v1

    int-to-float v1, v13

    mul-float/2addr v1, v8

    move/from16 v19, v3

    int-to-float v3, v14

    mul-float/2addr v3, v15

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    int-to-float v1, v14

    div-float v1, v8, v1

    :goto_3
    goto :goto_4

    :cond_5
    int-to-float v1, v13

    div-float v1, v15, v1

    goto :goto_3

    :goto_4
    int-to-float v3, v13

    mul-float/2addr v3, v1

    sub-float v3, v15, v3

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v20, v6

    int-to-float v6, v14

    mul-float/2addr v6, v1

    sub-float v6, v8, v6

    mul-float v6, v6, v16

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledRatio(F)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledDx(F)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaledDy(F)V

    move-object/from16 v21, v7

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setScaled(Z)V

    const-string v7, "ViewParser"

    move/from16 v22, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v11

    const-string v11, "drawableWidth = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ViewParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drawableHeight = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ViewParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "viewWidth = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ViewParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "viewHeight = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ViewParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scaledRatio = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ViewParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scaledDx = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ViewParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scaledDy = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    move-object/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v9

    move-object/from16 v23, v11

    :goto_5
    if-eqz v4, :cond_8

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isPreview()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getUpdateBitmapCallback()Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getUpdateBitmapCallback()Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-result-object v1

    invoke-static {v12}, Lcom/android/systemui/wallpaper/WallpaperUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v1, v3, v6}, Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_6
    invoke-virtual {v2, v12}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    :cond_9
    move-object/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v9

    move-object/from16 v23, v11

    const/4 v6, 0x0

    const-string v1, "x"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v1, v23

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setX(F)V

    goto/16 :goto_9

    :cond_a
    move-object/from16 v1, v23

    const-string v3, "y"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setY(F)V

    goto/16 :goto_9

    :cond_b
    const-string v3, "width"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    goto/16 :goto_9

    :cond_c
    const-string v3, "height"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    goto/16 :goto_9

    :cond_d
    const-string v3, "pivotX"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v4, :cond_e

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateX(F)F

    move-result v3

    goto :goto_7

    :cond_e
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v3

    :goto_7
    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setPivotX(F)V

    goto :goto_9

    :cond_f
    const-string v3, "pivotY"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v4, :cond_10

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getCoordinateY(F)F

    move-result v3

    goto :goto_8

    :cond_10
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v3

    :goto_8
    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setPivotY(F)V

    goto :goto_9

    :cond_11
    const-string v3, "alpha"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setAlpha(F)V

    goto :goto_9

    :cond_12
    const-string v3, "scaleX"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setScaleX(F)V

    goto :goto_9

    :cond_13
    const-string v3, "scaleY"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setScaleY(F)V

    goto :goto_9

    :cond_14
    move-object/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v9

    const/4 v6, 0x0

    :cond_15
    :goto_9
    add-int/lit8 v9, v22, 0x1

    move-object/from16 v1, v18

    move/from16 v3, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    goto/16 :goto_1

    :cond_16
    move-object/from16 v18, v1

    goto :goto_a

    :cond_17
    move-object/from16 v18, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getFrameImageView()Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    move-result-object v2

    if-eqz v2, :cond_1a

    if-nez v1, :cond_18

    goto :goto_b

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isWallpaperView()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setX(F)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->setY(F)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getImageViewWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getImageViewHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewWidth(I)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setImageViewHeight(I)V

    :goto_a
    return-void

    :cond_1a
    :goto_b
    return-void
.end method
