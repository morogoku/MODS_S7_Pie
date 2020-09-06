.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;
.super Ljava/lang/Object;
.source "EdgeLightingListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRunning:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    return v0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string v0, "-ListenerManager start"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_25

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mIsRunning:Z

    return v0
.end method

.method register(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v1, :cond_34

    :cond_b
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mListeners = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v2, :cond_5c

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$000(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "register : already registered"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_5c
    goto :goto_3a

    :cond_5d
    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "R listener."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_82

    throw v1
.end method

.method startEdgeLighting()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v3, :cond_2e

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z
    invoke-static {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z

    move-result v4

    if-nez v4, :cond_2e

    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z
    invoke-static {v3, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$102(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)Z

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->onEdgeLightingStarted()V

    :cond_2e
    goto :goto_14

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method stopEdgeLighting()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v2, :cond_2f

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z
    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x0

    # setter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z
    invoke-static {v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$102(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)Z

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->onEdgeLightingStopped()V

    :cond_2f
    goto :goto_14

    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method unregister(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v1, :cond_30

    :cond_b
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mListeners = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v3, :cond_50

    # getter for: Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$000(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    move-object v1, v3

    :cond_50
    goto :goto_37

    :cond_51
    if-nez v1, :cond_5d

    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregister : cannot find the matched host"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_5d
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    const-string v3, "UR listener"

    invoke-virtual {v2, p2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v0

    return-void

    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw v1
.end method
