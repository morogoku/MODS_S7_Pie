.class Lorg/simpleframework/xml/stream/PrefixResolver;
.super Ljava/util/LinkedHashMap;
.source "PrefixResolver.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/NamespaceMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lorg/simpleframework/xml/stream/NamespaceMap;"
    }
.end annotation


# instance fields
.field private final source:Lorg/simpleframework/xml/stream/OutputNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    return-void
.end method

.method private resolvePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/PrefixResolver;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    return-object v1

    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private resolveReference(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->size()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolvePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReference(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/PrefixResolver;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_25

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return-object v1

    :cond_25
    goto :goto_a

    :cond_26
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolveReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/PrefixResolver;->setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolvePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/PrefixResolver;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
