.class Lorg/simpleframework/xml/core/ObjectFactory;
.super Lorg/simpleframework/xml/core/PrimitiveFactory;
.source "ObjectFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ObjectFactory;->getType()Ljava/lang/Class;

    move-result-object v1

    if-nez v0, :cond_2a

    invoke-static {v1}, Lorg/simpleframework/xml/core/ObjectFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/simpleframework/xml/core/ObjectFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v2

    return-object v2

    :cond_17
    new-instance v2, Lorg/simpleframework/xml/core/InstantiationException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/ObjectFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v5, v3, v4

    const-string v4, "Cannot instantiate %s for %s"

    invoke-direct {v2, v4, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_2a
    new-instance v2, Lorg/simpleframework/xml/core/ObjectInstance;

    iget-object v3, p0, Lorg/simpleframework/xml/core/ObjectFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v2, v3, v0}, Lorg/simpleframework/xml/core/ObjectInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;)V

    return-object v2
.end method
