.class Lorg/simpleframework/xml/core/Composite;
.super Ljava/lang/Object;
.source "Composite.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/Composite$Injector;,
        Lorg/simpleframework/xml/core/Composite$Builder;
    }
.end annotation


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final criteria:Lorg/simpleframework/xml/core/Criteria;

.field private final factory:Lorg/simpleframework/xml/core/ObjectFactory;

.field private final primitive:Lorg/simpleframework/xml/core/Primitive;

.field private final revision:Lorg/simpleframework/xml/core/Revision;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/ObjectFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    new-instance v0, Lorg/simpleframework/xml/core/Collector;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Collector;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    new-instance v0, Lorg/simpleframework/xml/core/Revision;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Revision;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    iput-object p1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method static synthetic access$100(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    return-void
.end method

.method static synthetic access$200(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method static synthetic access$300(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method static synthetic access$400(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/strategy/Type;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p3, p2, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Lorg/simpleframework/xml/core/Composite$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Composite$Builder;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/simpleframework/xml/core/Caller;->validate(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lorg/simpleframework/xml/core/Caller;->commit(Ljava/lang/Object;)V

    invoke-interface {p2, v3}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v1}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method private read(Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Lorg/simpleframework/xml/core/Composite$Builder;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Schema;->getInstantiator()Lorg/simpleframework/xml/core/Instantiator;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instantiator;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lorg/simpleframework/xml/core/Composite$Builder;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/simpleframework/xml/core/Composite$Builder;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)V

    return-object v1

    :cond_12
    new-instance v1, Lorg/simpleframework/xml/core/Composite$Injector;

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lorg/simpleframework/xml/core/Composite$Injector;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;Lorg/simpleframework/xml/core/Composite$1;)V

    return-object v1
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method private readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    if-nez v2, :cond_40

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4, v5, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p4, v5}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_3f

    :cond_2b
    new-instance v5, Lorg/simpleframework/xml/core/AttributeException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const-string v7, "Attribute \'%s\' does not have a match in %s at %s"

    invoke-direct {v5, v7, v6}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_3f
    :goto_3f
    goto :goto_43

    :cond_40
    invoke-direct {p0, p1, p2, v2}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    :goto_43
    return-void
.end method

.method private readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-direct {p0, v4, p2, p3, v1}, Lorg/simpleframework/xml/core/Composite;->readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_21
    goto :goto_c

    :cond_22
    invoke-direct {p0, p1, v1, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    return-void
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    if-nez v2, :cond_14

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, v1}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v2

    :cond_14
    if-nez v2, :cond_4b

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4, v5, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p4, v5}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v5

    if-eqz v5, :cond_47

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_47

    :cond_33
    new-instance v5, Lorg/simpleframework/xml/core/ElementException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const-string v7, "Element \'%s\' does not have a match in %s at %s"

    invoke-direct {v5, v7, v6}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_47
    :goto_47
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->skip()V

    goto :goto_4e

    :cond_4b
    invoke-direct {p0, p1, p2, p4, v2}, Lorg/simpleframework/xml/core/Composite;->readUnion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V

    :goto_4e
    return-void
.end method

.method private readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_20

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-direct {p0, v1, p2, v3}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_1b

    :cond_18
    invoke-direct {p0, v1, p2, p3, v0}, Lorg/simpleframework/xml/core/Composite;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    :goto_1b
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    goto :goto_8

    :cond_20
    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    return-void
.end method

.method private readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVariable(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_36

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_35

    :cond_21
    new-instance v3, Lorg/simpleframework/xml/core/ValueRequiredException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const-string v5, "Empty value for %s in %s at %s"

    invoke-direct {v3, v5, v4}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_35
    :goto_35
    goto :goto_43

    :cond_36
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_43

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v1, p3, v0}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    :cond_43
    :goto_43
    return-object v0
.end method

.method private readPrimitive(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_f

    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v1
.end method

.method private readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_2f

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    invoke-virtual {p3, p2}, Lorg/simpleframework/xml/core/Caller;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-object v1

    :cond_1b
    new-instance v4, Lorg/simpleframework/xml/core/ElementException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const-string v6, "Type %s does not match %s at %s"

    invoke-direct {v4, v6, v5}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_2f
    return-object p2
.end method

.method private readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method private readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method private readUnion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_15

    aget-object v5, v2, v4

    invoke-virtual {p3, v5}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v2, p4, v0}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method private readVariable(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v1, p3}, Lorg/simpleframework/xml/core/Criteria;->get(Lorg/simpleframework/xml/core/Label;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v1

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_21
    if-eqz p2, :cond_2e

    invoke-interface {v2, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-interface {v0, p1, v3}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_2e
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_27

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;

    move-result-object v2

    invoke-interface {v2}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4, v3, v0}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method private readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_42

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/stream/InputNode;

    if-eqz v4, :cond_20

    invoke-direct {p0, v4, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_42

    :cond_20
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v5, v1}, Lorg/simpleframework/xml/core/Context;->getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;

    move-result-object v5

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v6}, Lorg/simpleframework/xml/core/Revision;->getDefault()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v8, v0, v6}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v8, v7, v6}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_42
    :goto_42
    return-void
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v5, 0x0

    invoke-interface {v4, p2, v5}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    return-void

    :cond_1d
    new-instance v4, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const-string v6, "Invalid value for %s in %s at %s"

    invoke-direct {v4, v6, v5}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_3d

    :cond_29
    new-instance v4, Lorg/simpleframework/xml/core/ValueRequiredException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const-string v6, "Unable to satisfy %s for %s at %s"

    invoke-direct {v4, v6, v5}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_3d
    :goto_3d
    goto :goto_8

    :cond_3e
    return-void
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0, v1, p3}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_3f

    :cond_2b
    new-instance v4, Lorg/simpleframework/xml/core/ValueRequiredException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const-string v6, "Unable to satisfy %s for %s at %s"

    invoke-direct {v4, v6, v5}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_3f
    :goto_3f
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v3, v4}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4c

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v5, v3, v4}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_10

    :cond_4d
    return-void
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validateText(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;)V

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isElement()Z

    move-result v2

    return v2
.end method

.method private validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Section;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v3

    if-nez v3, :cond_3e

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p3, v5}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_3d

    :cond_29
    new-instance v5, Lorg/simpleframework/xml/core/AttributeException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const-string v7, "Attribute \'%s\' does not exist for %s at %s"

    invoke-direct {v5, v7, v6}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_3d
    :goto_3d
    goto :goto_41

    :cond_3e
    invoke-direct {p0, p1, v3}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    :goto_41
    return-void
.end method

.method private validateAttributes(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-direct {p0, v4, p2, v1}, Lorg/simpleframework/xml/core/Composite;->validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    :cond_21
    goto :goto_c

    :cond_22
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V

    return-void
.end method

.method private validateElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    if-nez v2, :cond_14

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, v1}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v2

    :cond_14
    if-nez v2, :cond_49

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p3, v5}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v5

    if-nez v5, :cond_31

    goto :goto_45

    :cond_31
    new-instance v5, Lorg/simpleframework/xml/core/ElementException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const-string v7, "Element \'%s\' does not exist for %s at %s"

    invoke-direct {v5, v7, v6}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_45
    :goto_45
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->skip()V

    goto :goto_4c

    :cond_49
    invoke-direct {p0, p1, p3, v2}, Lorg/simpleframework/xml/core/Composite;->validateUnion(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V

    :goto_4c
    return-void
.end method

.method private validateElements(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Section;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_20

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-direct {p0, v1, v3}, Lorg/simpleframework/xml/core/Composite;->validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_1b

    :cond_18
    invoke-direct {p0, v1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->validateElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    :goto_1b
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    goto :goto_8

    :cond_20
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V

    return-void
.end method

.method private validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Composite;->validateAttributes(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Composite;->validateElements(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method private validateText(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Schema;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    :cond_9
    return-void
.end method

.method private validateUnion(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    invoke-virtual {p2, v4}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v2, 0x0

    invoke-interface {v1, p3, v2}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    :cond_1d
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeVersion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method private writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_17

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/ObjectFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    :cond_17
    return-void
.end method

.method private writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v5, v6, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    if-nez v4, :cond_2c

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v6}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v4

    :cond_2c
    if-nez v4, :cond_46

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v6

    if-nez v6, :cond_35

    goto :goto_46

    :cond_35
    new-instance v6, Lorg/simpleframework/xml/core/AttributeException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const-string v8, "Value for %s is null in %s"

    invoke-direct {v6, v8, v7}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_46
    :goto_46
    invoke-direct {p0, p1, v4, v2}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_8

    :cond_4a
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Converter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3, p1, p2}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v4

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-direct {p0, v4, v3, v1}, Lorg/simpleframework/xml/core/Composite;->writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V

    :cond_1f
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-direct {p0, v4, p2, v3}, Lorg/simpleframework/xml/core/Composite;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v5

    if-nez v5, :cond_3b

    :cond_2b
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v5}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v5

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v6

    invoke-interface {v4, v6}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    invoke-direct {p0, v4, p2, v5}, Lorg/simpleframework/xml/core/Composite;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Converter;)V

    :cond_3b
    return-void
.end method

.method private writeElements(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3, v1}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v3

    invoke-direct {p0, v3, p2, v2}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_4d

    :cond_1e
    invoke-interface {p3, v1}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/simpleframework/xml/core/Section;->getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v4

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v5, v6, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v6, v4}, Lorg/simpleframework/xml/core/Criteria;->get(Lorg/simpleframework/xml/core/Label;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v6

    if-nez v6, :cond_4d

    if-eqz v4, :cond_3c

    invoke-direct {p0, p1, p2, p3, v4}, Lorg/simpleframework/xml/core/Composite;->writeUnion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_4d

    :cond_3c
    new-instance v7, Lorg/simpleframework/xml/core/ElementException;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const-string v9, "Element \'%s\' not defined in %s"

    invoke-direct {v7, v9, v8}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    :cond_4d
    :goto_4d
    goto :goto_4

    :cond_4e
    return-void
.end method

.method private writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v1

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    return-void
.end method

.method private writeReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getCaller(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/Caller;->replace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_11
    return-object p1
.end method

.method private writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    goto :goto_27

    :cond_14
    new-instance v3, Lorg/simpleframework/xml/core/ElementException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v6, v4, v5

    const-string v5, "Namespace prefix \'%s\' in %s is not in scope"

    invoke-direct {v3, v5, v4}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_27
    :goto_27
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeElements(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method private writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_18

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ObjectFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v1

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method private writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3, v4, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    if-nez v2, :cond_1e

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v4}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v2

    :cond_1e
    if-nez v2, :cond_38

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_38

    :cond_27
    new-instance v4, Lorg/simpleframework/xml/core/TextException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "Value for %s is null in %s"

    invoke-direct {v4, v6, v5}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_38
    :goto_38
    invoke-direct {p0, p1, v2, v0}, Lorg/simpleframework/xml/core/Composite;->writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    :cond_3b
    return-void
.end method

.method private writeUnion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/Label;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    if-nez v1, :cond_2a

    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_2a

    :cond_19
    new-instance v3, Lorg/simpleframework/xml/core/ElementException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v5, "Value for %s is null in %s"

    invoke-direct {v3, v5, v4}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_2a
    :goto_2a
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/Composite;->writeReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-direct {p0, p1, v3, p4}, Lorg/simpleframework/xml/core/Composite;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    :cond_33
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v4, p4, v3}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    return-void
.end method

.method private writeVersion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object v0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    if-eqz v0, :cond_31

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Revision;->getDefault()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4, v3, v2}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-direct {p0, p1, v3, v1}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_31

    :cond_2e
    invoke-direct {p0, p1, v3, v1}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    :cond_31
    :goto_31
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

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_15
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->readPrimitive(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_22
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v1

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, p2}, Lorg/simpleframework/xml/core/Criteria;->commit(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/Caller;->validate(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/Caller;->commit(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v2}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v3

    return v3

    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v1

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v2

    :try_start_e
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Schema;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v3, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_20

    :cond_1a
    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/Caller;->persist(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_25

    :goto_20
    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/Caller;->complete(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_25
    move-exception v3

    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/Caller;->complete(Ljava/lang/Object;)V

    throw v3
.end method
