.class final Lcom/android/server/am/Pageboost$VramdiskXMLParser;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VramdiskXMLParser"
.end annotation


# static fields
.field private static final mFileListPath:Ljava/lang/String; = "/system/vramdiskddata/vramdiskd.xml"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_8
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/system/vramdiskddata/vramdiskd.xml"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Element;->normalize()V

    invoke-interface {v6, p0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_5e
    .catchall {:try_start_8 .. :try_end_27} :catchall_5c

    const/4 v9, 0x0

    move v10, v0

    move v0, v9

    :goto_2a
    :try_start_2a
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v0, v11, :cond_48

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_43} :catch_58
    .catchall {:try_start_2a .. :try_end_43} :catchall_54

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_48
    nop

    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    :goto_4c
    goto :goto_52

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    :goto_52
    move v0, v10

    goto :goto_6d

    :catchall_54
    move-exception v0

    move-object v2, v0

    move v0, v10

    goto :goto_72

    :catch_58
    move-exception v0

    move-object v4, v0

    move v0, v10

    goto :goto_5f

    :catchall_5c
    move-exception v2

    goto :goto_72

    :catch_5e
    move-exception v4

    :goto_5f
    :try_start_5f
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_5c

    if-eqz v3, :cond_6d

    :try_start_64
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_68

    :goto_67
    goto :goto_6d

    :catch_68
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_67

    :cond_6d
    :goto_6d
    if-lez v0, :cond_71

    move-object v2, v1

    nop

    :cond_71
    return-object v2

    :goto_72
    if-eqz v3, :cond_7c

    :try_start_74
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7c
    :goto_7c
    throw v2
.end method
