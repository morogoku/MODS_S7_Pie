.class Lorg/simpleframework/xml/stream/NodeExtractor;
.super Ljava/util/LinkedList;
.source "NodeExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method private extract(Lorg/w3c/dom/Document;)V
    .registers 3

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeExtractor;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    :cond_c
    return-void
.end method

.method private extract(Lorg/w3c/dom/Node;)V
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_20

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1d

    invoke-virtual {p0, v3}, Lorg/simpleframework/xml/stream/NodeExtractor;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_20
    return-void
.end method