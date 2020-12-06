.class Lorg/simpleframework/xml/core/SignatureCreator;
.super Ljava/lang/Object;
.source "SignatureCreator.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Creator;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:Lorg/simpleframework/xml/core/Signature;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Signature;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Signature;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Signature;->getAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    iput-object p1, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    return-void
.end method

.method private getAdjustment(D)D
    .registers 7

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1e

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p1, v2

    add-double/2addr v2, v0

    return-wide v2

    :cond_1e
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p1, v2

    return-wide v2
.end method

.method private getPercentage(Lorg/simpleframework/xml/core/Criteria;)D
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v5

    if-nez v5, :cond_2e

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->isRequired()Z

    move-result v6

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    if-eqz v6, :cond_27

    return-wide v7

    :cond_27
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_31

    return-wide v7

    :cond_2e
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v6

    :cond_31
    goto :goto_8

    :cond_32
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/SignatureCreator;->getAdjustment(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private getVariable(Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Criteria;->remove(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_17
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->create()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lorg/simpleframework/xml/core/SignatureCreator;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/SignatureCreator;->getVariable(Lorg/simpleframework/xml/core/Criteria;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    iget-object v1, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Signature;->create([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getScore(Lorg/simpleframework/xml/core/Criteria;)D
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->copy()Lorg/simpleframework/xml/core/Signature;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Criteria;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/core/Criteria;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Variable;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    if-eqz v3, :cond_37

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v3}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/simpleframework/xml/core/Support;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_37

    return-wide v6

    :cond_37
    invoke-interface {v5}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v8

    if-eqz v8, :cond_40

    if-nez v3, :cond_40

    return-wide v6

    :cond_40
    goto :goto_a

    :cond_41
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SignatureCreator;->getPercentage(Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v1

    return-wide v1
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/SignatureCreator;->signature:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
