.class public Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "FrameParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isStartTag()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "top"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    move-result-object v7

    iput v6, v7, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    goto :goto_1

    :cond_3
    const-string v7, "minInterval"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    move-result-object v7

    iput v6, v7, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    new-instance v11, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->backgroundId:I

    iget-object v5, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->frameSize:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->x:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->y:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->scale:Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startIndex:Ljava/util/ArrayList;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v3, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;->setTop(I)V

    iget v3, v1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;->setMinInterval(I)V

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4, v4}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addSprite(Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;)V

    :goto_2
    return-void

    :cond_9
    :goto_3
    return-void
.end method
