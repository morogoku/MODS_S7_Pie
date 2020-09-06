.class public Lorg/simpleframework/xml/transform/RegistryMatcher;
.super Ljava/lang/Object;
.source "RegistryMatcher.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# instance fields
.field private final transforms:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Lorg/simpleframework/xml/transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->transforms:Lorg/simpleframework/xml/util/Cache;

    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->types:Lorg/simpleframework/xml/util/Cache;

    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->types:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/RegistryMatcher;->create(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v1

    return-object v1

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private create(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/simpleframework/xml/transform/Transform;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->transforms:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1, v1}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-object v1
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->types:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bind(Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->transforms:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->transforms:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/transform/Transform;

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/RegistryMatcher;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v1

    return-object v1

    :cond_f
    return-object v0
.end method
