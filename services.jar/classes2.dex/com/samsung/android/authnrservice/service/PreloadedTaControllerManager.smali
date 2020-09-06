.class public Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
.super Ljava/lang/Object;
.source "PreloadedTaControllerManager.java"


# static fields
.field public static final DEVICE_ROOT_KEY_TRUSTED_APP_HANDLE:I = 0x2

.field public static final FINGERPRINT_TRUSTED_APP_HANDLE:I = 0x1

.field public static final TAD_TRUSTED_APP_HANDLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PTCM"

.field private static sControllerManager:Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;


# instance fields
.field private final mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/authnrservice/service/IPreloadedTaController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->sControllerManager:Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->sControllerManager:Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;

    :cond_e
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->sControllerManager:Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPreloadedTaController(I)Lcom/samsung/android/authnrservice/service/IPreloadedTaController;
    .registers 5

    const-string v0, "PTCM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "private IPreloadedTaController getPreloadedTaController(int trustedAppType)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    if-nez v0, :cond_41

    const/4 v1, 0x3

    if-eq p1, v1, :cond_31

    const-string v1, "PTCM"

    const-string v2, "Not supported type"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_31
    new-instance v2, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;

    invoke-direct {v2, v1}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;-><init>(I)V

    move-object v0, v2

    nop

    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    return-object v0
.end method


# virtual methods
.method public declared-synchronized initialize(I)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_10

    :try_start_4
    const-string v1, "PTCM"

    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception p1

    goto :goto_25

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getPreloadedTaController(I)Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    move-result-object v1

    if-nez v1, :cond_1f

    const-string v2, "PTCM"

    const-string v3, "gptc failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_e

    monitor-exit p0

    return v0

    :cond_1f
    :try_start_1f
    invoke-interface {v1}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->initialize()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_e

    monitor-exit p0

    return v0

    :goto_25
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process(I[B)[B
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_10

    :try_start_4
    const-string v1, "PTCM"

    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception p1

    goto :goto_25

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getPreloadedTaController(I)Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    move-result-object v1

    if-nez v1, :cond_1f

    const-string v2, "PTCM"

    const-string v3, "gptc failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_e

    monitor-exit p0

    return-object v0

    :cond_1f
    :try_start_1f
    invoke-interface {v1, p2}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->process([B)[B

    move-result-object v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_e

    monitor-exit p0

    return-object v0

    :goto_25
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized terminate(I)Z
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_10

    :try_start_4
    const-string v1, "PTCM"

    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception p1

    goto :goto_2e

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->getPreloadedTaController(I)Lcom/samsung/android/authnrservice/service/IPreloadedTaController;

    move-result-object v1

    if-nez v1, :cond_1f

    const-string v2, "PTCM"

    const-string v3, "gptc failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_e

    monitor-exit p0

    return v0

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedTaControllerManager;->mTrustedApplications:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/samsung/android/authnrservice/service/IPreloadedTaController;->terminate()Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_e

    monitor-exit p0

    return v0

    :goto_2e
    monitor-exit p0

    throw p1
.end method
