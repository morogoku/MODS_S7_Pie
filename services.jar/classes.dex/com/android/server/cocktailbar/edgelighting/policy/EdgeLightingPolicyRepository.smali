.class public Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyRepository.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "EdgeLightingPolicyRepository"


# instance fields
.field private mRepository:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-EdgeLightingPolicyInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    invoke-virtual {v4}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    :cond_51
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1c .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public getPolicyInfoWithComponentName(Landroid/content/ComponentName;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "EdgeLightingPolicyRepository"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePolicy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_22
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v1
.end method
