.class public Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;
.super Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
.source "MultiWindowCoreStateSettingObserver.java"


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public registerObservingItems()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->sSharedPrefIntegerKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "multi_resume"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->sSharedPrefIntegerKeyMap:Ljava/util/Map;

    const-string v1, "corner_gesture"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->sSharedPrefIntegerKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "mw_snap_window_enabled"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;->sSharedPrefIntegerKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "stay_focus_activity"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
