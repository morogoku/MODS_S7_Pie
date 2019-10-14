.class Lorg/simpleframework/xml/core/TextList;
.super Ljava/lang/Object;
.source "TextList.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final factory:Lorg/simpleframework/xml/core/CollectionFactory;

.field private final primitive:Lorg/simpleframework/xml/core/Primitive;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextList;->type:Lorg/simpleframework/xml/strategy/Type;

    new-instance v0, Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/CollectionFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TextList;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextList;->primitive:Lorg/simpleframework/xml/core/Primitive;

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

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextList;->factory:Lorg/simpleframework/xml/core/CollectionFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/CollectionFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_15
    invoke-virtual {p0, p1, v1}, Lorg/simpleframework/xml/core/TextList;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

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

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TextList;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object p2
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/core/TextList;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v4, v1, v3}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_b

    :cond_1b
    return-void
.end method
