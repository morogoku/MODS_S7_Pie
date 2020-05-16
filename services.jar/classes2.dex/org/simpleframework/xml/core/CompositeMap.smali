.class Lorg/simpleframework/xml/core/CompositeMap;
.super Ljava/lang/Object;
.source "CompositeMap.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


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

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getValue(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getKey(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->style:Lorg/simpleframework/xml/stream/Style;

    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeMap;->entry:Lorg/simpleframework/xml/core/Entry;

    return-void
.end method

.method private populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    :goto_3
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v3, v1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x1

    return v1

    :cond_8
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/CompositeMap;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_15
    return-object v1
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_11
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1b

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/CompositeMap;->populate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1b
    return-object p2
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/CompositeMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/CompositeMap;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v3

    return v3

    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeMap;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Entry;->getEntry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeMap;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v4, v3}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lorg/simpleframework/xml/core/CompositeMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v7, v5, v2}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/simpleframework/xml/core/CompositeMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v7, v5, v6}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_b

    :cond_34
    return-void
.end method
