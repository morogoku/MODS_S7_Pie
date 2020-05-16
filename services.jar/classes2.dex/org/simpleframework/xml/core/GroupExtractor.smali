.class Lorg/simpleframework/xml/core/GroupExtractor;
.super Ljava/lang/Object;
.source "GroupExtractor.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Group;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/GroupExtractor$Registry;
    }
.end annotation


# instance fields
.field private final elements:Lorg/simpleframework/xml/core/LabelMap;

.field private final factory:Lorg/simpleframework/xml/core/ExtractorFactory;

.field private final label:Ljava/lang/annotation/Annotation;

.field private final registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/stream/Format;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/ExtractorFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/ExtractorFactory;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->factory:Lorg/simpleframework/xml/core/ExtractorFactory;

    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    new-instance v0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    iget-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;-><init>(Lorg/simpleframework/xml/core/LabelMap;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    iput-object p2, p0, Lorg/simpleframework/xml/core/GroupExtractor;->label:Ljava/lang/annotation/Annotation;

    invoke-direct {p0}, Lorg/simpleframework/xml/core/GroupExtractor;->extract()V

    return-void
.end method

.method private extract()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->factory:Lorg/simpleframework/xml/core/ExtractorFactory;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ExtractorFactory;->getInstance()Lorg/simpleframework/xml/core/Extractor;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/GroupExtractor;->extract(Lorg/simpleframework/xml/core/Extractor;)V

    :cond_b
    return-void
.end method

.method private extract(Lorg/simpleframework/xml/core/Extractor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Extractor;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v1, v0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    invoke-direct {p0, p1, v4}, Lorg/simpleframework/xml/core/GroupExtractor;->extract(Lorg/simpleframework/xml/core/Extractor;Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method private extract(Lorg/simpleframework/xml/core/Extractor;Ljava/lang/annotation/Annotation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/simpleframework/xml/core/Extractor;->getLabel(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    invoke-interface {p1, p2}, Lorg/simpleframework/xml/core/Extractor;->getType(Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v2, v1, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->register(Ljava/lang/Class;Lorg/simpleframework/xml/core/Label;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public getElements()Lorg/simpleframework/xml/core/LabelMap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabels()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolve(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaths()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolveText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public isDeclared(Ljava/lang/Class;)Z
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Label;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_1a
    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTextList()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->isText()Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/Class;)Z
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->registry:Lorg/simpleframework/xml/core/GroupExtractor$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolve(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor;->label:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
