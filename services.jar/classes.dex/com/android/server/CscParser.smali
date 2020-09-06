.class public Lcom/android/server/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CscParser$Holder;
    }
.end annotation


# static fields
.field public static final KEY_REGION:Ljava/lang/String; = "GeneralInfo.Region"

.field public static final KEY_SALESCODE:Ljava/lang/String; = "GeneralInfo.SalesCode"


# instance fields
.field private mDocument:Lorg/w3c/dom/Document;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/CscParser$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/CscParser;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCustomerInstance()Lcom/android/server/CscParser;
    .registers 2

    const-class v0, Lcom/android/server/CscParser;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/CscParser$Holder;->sInstance:Lcom/android/server/CscParser;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 9

    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    if-nez p1, :cond_8

    goto :goto_28

    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_27

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    return-object v4

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_27
    return-object v1

    :cond_28
    :goto_28
    return-object v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15
    return-object v1
.end method

.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_42

    if-nez p1, :cond_7

    goto :goto_42

    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_39

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_18
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_34

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_39
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    :goto_42
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_9} :catch_57

    nop

    nop

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "CscParser"

    const-string v4, "File didn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1e
    :try_start_1e
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;
    :try_end_24
    .catch Lorg/xml/sax/SAXException; {:try_start_1e .. :try_end_24} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_26

    const/4 v0, 0x1

    return v0

    :catch_26
    move-exception v3

    const-string v4, "CscParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :catch_3e
    move-exception v3

    const-string v4, "CscParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAXException is occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_56
    return v0

    :catch_57
    move-exception v1

    const-string v2, "CscParser"

    const-string v3, "ParserConfigurationException is occured"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6

    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    if-nez p1, :cond_8

    goto :goto_28

    :cond_8
    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_22

    return-object v1

    :cond_22
    invoke-direct {p0, v0, v3}, Lcom/android/server/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_15

    :cond_27
    return-object v0

    :cond_28
    :goto_28
    return-object v1
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 10

    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    if-nez p1, :cond_8

    goto :goto_3f

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_38

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_3d

    if-eqz v6, :cond_35

    :try_start_2d
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v6

    :try_start_32
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_38
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_3d

    return-object v3

    :catch_3d
    move-exception v0

    return-object v1

    :cond_3f
    :goto_3f
    return-object v1
.end method
