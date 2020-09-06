.class public Lorg/simpleframework/xml/convert/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# instance fields
.field private final binder:Lorg/simpleframework/xml/convert/RegistryBinder;

.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Lorg/simpleframework/xml/convert/Converter;",
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

    iput-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    new-instance v0, Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/RegistryBinder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/RegistryBinder;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Registry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/RegistryBinder;->bind(Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_7
    return-object p0
.end method

.method public bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-object p0
.end method

.method public lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Converter;

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/Registry;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    return-object v1

    :cond_f
    return-object v0
.end method
