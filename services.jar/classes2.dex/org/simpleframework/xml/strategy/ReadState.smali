.class Lorg/simpleframework/xml/strategy/ReadState;
.super Lorg/simpleframework/xml/util/WeakCache;
.source "ReadState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/WeakCache<",
        "Lorg/simpleframework/xml/strategy/ReadGraph;",
        ">;"
    }
.end annotation


# instance fields
.field private final contract:Lorg/simpleframework/xml/strategy/Contract;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;)V
    .registers 3

    invoke-direct {p0}, Lorg/simpleframework/xml/util/WeakCache;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/strategy/Loader;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/Loader;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadState;->loader:Lorg/simpleframework/xml/strategy/Loader;

    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ReadState;->contract:Lorg/simpleframework/xml/strategy/Contract;

    return-void
.end method

.method private create(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/ReadGraph;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/ReadState;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/strategy/ReadGraph;

    if-nez v0, :cond_15

    new-instance v1, Lorg/simpleframework/xml/strategy/ReadGraph;

    iget-object v2, p0, Lorg/simpleframework/xml/strategy/ReadState;->contract:Lorg/simpleframework/xml/strategy/Contract;

    iget-object v3, p0, Lorg/simpleframework/xml/strategy/ReadState;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/strategy/ReadGraph;-><init>(Lorg/simpleframework/xml/strategy/Contract;Lorg/simpleframework/xml/strategy/Loader;)V

    move-object v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/strategy/ReadState;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/ReadGraph;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/ReadState;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/strategy/ReadGraph;

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/strategy/ReadState;->create(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/ReadGraph;

    move-result-object v1

    return-object v1
.end method
