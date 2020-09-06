.class Lorg/simpleframework/xml/core/CompositeInlineMap;
.super Ljava/lang/Object;
.source "CompositeInlineMap.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final factory:Lorg/simpleframework/xml/core/MapFactory;

.field private final key:Lorg/simpleframework/xml/core/Converter;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final value:Lorg/simpleframework/xml/core/Converter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/MapFactory;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/MapFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getValue(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getKey(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->style:Lorg/simpleframework/xml/stream/Style;

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->entry:Lorg/simpleframework/xml/core/Entry;

    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_8
    if-eqz p1, :cond_20

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v3, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p2, :cond_1b

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_8

    :cond_20
    return-object p2
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;Lorg/simpleframework/xml/stream/Mode;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->getEntry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v4

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p3}, Lorg/simpleframework/xml/stream/OutputNode;->setMode(Lorg/simpleframework/xml/stream/Mode;)V

    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v6, v4, v3}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v6, v4, v5}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_14

    :cond_34
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MapFactory;->getInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_10

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_10
    const/4 v2, 0x0

    return-object v2
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_8
    if-eqz p1, :cond_22

    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return v3

    :cond_14
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v3

    :cond_1d
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_8

    :cond_22
    const/4 v2, 0x1

    return v2
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    :cond_14
    invoke-direct {p0, v0, v2, v1}, Lorg/simpleframework/xml/core/CompositeInlineMap;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;Lorg/simpleframework/xml/stream/Mode;)V

    return-void
.end method
