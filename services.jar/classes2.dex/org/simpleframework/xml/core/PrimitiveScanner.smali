.class Lorg/simpleframework/xml/core/PrimitiveScanner;
.super Ljava/lang/Object;
.source "PrimitiveScanner.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Scanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;
    }
.end annotation


# instance fields
.field private final detail:Lorg/simpleframework/xml/core/Detail;

.field private final section:Lorg/simpleframework/xml/core/Section;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/PrimitiveScanner$EmptySection;-><init>(Lorg/simpleframework/xml/core/Scanner;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner;->section:Lorg/simpleframework/xml/core/Section;

    iput-object p1, p0, Lorg/simpleframework/xml/core/PrimitiveScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method


# virtual methods
.method public getCaller(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Caller;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/core/Caller;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/core/Caller;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Context;)V

    return-object v0
.end method

.method public getCommit()Lorg/simpleframework/xml/core/Function;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComplete()Lorg/simpleframework/xml/core/Function;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstantiator()Lorg/simpleframework/xml/core/Instantiator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrder()Lorg/simpleframework/xml/Order;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .registers 2

    new-instance v0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    return-object v0
.end method

.method public getPersist()Lorg/simpleframework/xml/core/Function;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReplace()Lorg/simpleframework/xml/core/Function;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolve()Lorg/simpleframework/xml/core/Function;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRevision()Lorg/simpleframework/xml/Version;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSection()Lorg/simpleframework/xml/core/Section;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner;->section:Lorg/simpleframework/xml/core/Section;

    return-object v0
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Detail;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValidate()Lorg/simpleframework/xml/core/Function;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Lorg/simpleframework/xml/core/Label;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isPrimitive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStrict()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
