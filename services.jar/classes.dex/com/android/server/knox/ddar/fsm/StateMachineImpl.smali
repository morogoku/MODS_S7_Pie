.class public Lcom/android/server/knox/ddar/fsm/StateMachineImpl;
.super Ljava/lang/Object;
.source "StateMachineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DualDAR::StateMachine"

.field private static validTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/knox/ddar/fsm/State;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/knox/ddar/fsm/Event;",
            "Lcom/samsung/android/knox/ddar/fsm/State;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private currentStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/ddar/fsm/State;",
            ">;"
        }
    .end annotation
.end field

.field private listenerLock:Ljava/lang/Object;

.field private previousStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/ddar/fsm/State;",
            ">;"
        }
    .end annotation
.end field

.field private stateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_CREATED:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DATALOCK_TIMEOUT:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DATALOCK_TIMEOUT:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_UNLOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_LOCKED:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_REMOVED:Lcom/samsung/android/knox/ddar/fsm/Event;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/knox/ddar/fsm/State;->DEVICE_UNLOCK_DATA_LOCK:Lcom/samsung/android/knox/ddar/fsm/State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addStateChangeListener(Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getCurrentState(I)Lcom/samsung/android/knox/ddar/fsm/State;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_16

    :try_start_4
    iget-object v2, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/ddar/fsm/State;

    move-object v0, v2

    monitor-exit v1

    goto :goto_17

    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    :try_start_15
    throw v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception v1

    :goto_17
    if-nez v0, :cond_1b

    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    :cond_1b
    return-object v0
.end method

.method public getPreviousState(I)Lcom/samsung/android/knox/ddar/fsm/State;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_16

    :try_start_4
    iget-object v2, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/ddar/fsm/State;

    move-object v0, v2

    monitor-exit v1

    goto :goto_17

    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    :try_start_15
    throw v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception v1

    :goto_17
    if-nez v0, :cond_1b

    sget-object v0, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    :cond_1b
    return-object v0
.end method

.method public processEvent(Lcom/samsung/android/knox/ddar/fsm/Event;I)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->getCurrentState(I)Lcom/samsung/android/knox/ddar/fsm/State;

    move-result-object v4

    move-object v1, v4

    sget-object v4, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x0

    if-eqz p1, :cond_66

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/ddar/fsm/State;

    move-object v2, v6

    iget-object v6, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "DualDAR::StateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transition: ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") --> ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") because ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_8f

    :cond_66
    const-string v6, "DualDAR::StateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :goto_8f
    sget-object v5, Lcom/samsung/android/knox/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/ddar/fsm/State;

    if-ne v2, v5, :cond_a5

    iget-object v5, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_6 .. :try_end_a6} :catchall_c7

    if-eqz v0, :cond_c6

    iget-object v3, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_ab
    iget-object v4, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;

    invoke-interface {v5, v1, v2, p1, p2}, Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;->onStateChanged(Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/State;Lcom/samsung/android/knox/ddar/fsm/Event;I)V

    goto :goto_b1

    :cond_c1
    monitor-exit v3

    goto :goto_c6

    :catchall_c3
    move-exception v4

    monitor-exit v3
    :try_end_c5
    .catchall {:try_start_ab .. :try_end_c5} :catchall_c3

    throw v4

    :cond_c6
    :goto_c6
    return v0

    :catchall_c7
    move-exception v4

    :try_start_c8
    monitor-exit v3
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v4
.end method

.method public removeStateChangeListener(Lcom/android/server/knox/ddar/fsm/StateMachineImpl$StateChangeListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setInitialState(ILcom/samsung/android/knox/ddar/fsm/State;)V
    .registers 7

    const-string v0, "DualDAR::StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState() initialState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_25
    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/knox/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_3a

    throw v1
.end method
