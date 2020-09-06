.class public Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;
.super Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
.source "MultiWindowCoreStateVolatileObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public registerObservingItems()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->sVolatileStatesToTypeMapForUser:Ljava/util/Map;

    const-string/jumbo v1, "mw_enabled"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "mw_enabled"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
