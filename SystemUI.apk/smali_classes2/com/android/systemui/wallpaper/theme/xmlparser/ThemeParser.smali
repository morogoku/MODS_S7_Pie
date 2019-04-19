.class public Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;
.super Ljava/lang/Object;
.source "ThemeParser.java"


# instance fields
.field private mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

.field private mParserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    return-void
.end method

.method private getXml(Landroid/content/res/Resources;Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "animation"

    const-string v1, "xml"

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseXml()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v3, v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setStartTag(Z)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setStartTag(Z)V

    :cond_1
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getParser(Ljava/lang/String;)Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "ThemeParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v3, v4}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;->parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public generateAnimationFromXml()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getXml(Landroid/content/res/Resources;Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setXpp(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->parseXml()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v1

    return-object v1
.end method

.method protected generateParser(Ljava/lang/String;)Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;-><init>()V

    return-object v0

    :cond_1
    const-string v0, "view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;-><init>()V

    return-object v0

    :cond_2
    const-string v0, "scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;-><init>()V

    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string v0, "frame"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;-><init>()V

    return-object v0

    :cond_5
    const-string v0, "item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ItemParser;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ItemParser;-><init>()V

    return-object v0

    :cond_6
    return-object v1
.end method

.method public getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "rotate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "parabola"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sinX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sinY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "round"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ellipse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "translateX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "translateY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "scaleX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "scaleY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ImageResource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    const-string v1, "rotate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "rotation"

    goto :goto_0

    :cond_2
    const-string v1, "translateX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "x"

    goto :goto_0

    :cond_3
    const-string v1, "translateY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "y"

    goto :goto_0

    :cond_4
    move-object v0, p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method protected getParser(Ljava/lang/String;)Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->generateParser(Ljava/lang/String;)Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
