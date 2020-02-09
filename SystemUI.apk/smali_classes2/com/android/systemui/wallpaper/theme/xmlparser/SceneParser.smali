.class public Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "SceneParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v2

    if-eqz v1, :cond_9

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "snow"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_4

    new-instance v7, Lcom/android/systemui/wallpaper/theme/view/SnowView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/systemui/wallpaper/theme/view/SnowView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    invoke-virtual {v2, v7, v8, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_4
    const-string v7, "rain"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Lcom/android/systemui/wallpaper/theme/view/RainView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/systemui/wallpaper/theme/view/RainView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    invoke-virtual {v2, v7, v8, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_5
    const-string v7, "leaf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Lcom/android/systemui/wallpaper/theme/view/LeafView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/systemui/wallpaper/theme/view/LeafView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    invoke-virtual {v2, v7, v8, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_6
    const-string v7, "flower"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Lcom/android/systemui/wallpaper/theme/view/FlowerView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/systemui/wallpaper/theme/view/FlowerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    invoke-virtual {v2, v7, v8, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    :cond_9
    :goto_2
    return-void
.end method
