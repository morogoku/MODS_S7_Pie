.class public Lcom/android/server/location/GnssBatchingProvider;
.super Ljava/lang/Object;
.source "GnssBatchingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssBatchingProvider"


# instance fields
.field private mEnabled:Z

.field private final mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

.field private mPeriodNanos:J

.field private mStarted:Z

.field private mWakeOnFifoFull:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "GnssBatchingProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssBatchingProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    new-instance v0, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssBatchingProvider;-><init>(Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_get_batch_size()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JZ)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/location/GnssBatchingProvider;->native_start_batch(JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_flush_batch()V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_stop_batch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_init_batching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()V
    .registers 0

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_cleanup_batching()V

    return-void
.end method

.method private extension_isSupportGnssBatching()Z
    .registers 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.location.hwflp"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const-string v0, "GnssBatchingProvider"

    const-string v1, "GNSS batching is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static native native_cleanup_batching()V
.end method

.method private static native native_flush_batch()V
.end method

.method private static native native_get_batch_size()I
.end method

.method private static native native_init_batching()Z
.end method

.method private static native native_start_batch(JZ)Z
.end method

.method private static native native_stop_batch()Z
.end method


# virtual methods
.method public disable()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/location/GnssBatchingProvider;->stop()Z

    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->cleanupBatching()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    return-void
.end method

.method public enable()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/location/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->initBatching()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    if-nez v0, :cond_1a

    const-string v0, "GnssBatchingProvider"

    const-string v1, "Failed to initialize GNSS batching"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method public flush()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/location/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-nez v0, :cond_13

    const-string v0, "GnssBatchingProvider"

    const-string v1, "Cannot flush since GNSS batching has not started."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->flushBatch()V

    return-void
.end method

.method public getBatchSize()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/location/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->getBatchSize()I

    move-result v0

    return v0
.end method

.method resumeIfStarted()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/location/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-boolean v0, Lcom/android/server/location/GnssBatchingProvider;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "GnssBatchingProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    iget-wide v1, p0, Lcom/android/server/location/GnssBatchingProvider;->mPeriodNanos:J

    iget-boolean v3, p0, Lcom/android/server/location/GnssBatchingProvider;->mWakeOnFifoFull:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    :cond_20
    return-void
.end method

.method public start(JZ)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/location/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    if-eqz v0, :cond_41

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2e

    const-string v0, "GnssBatchingProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid periodNanos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " in batching request, not started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2e
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-eqz v0, :cond_3e

    iput-wide p1, p0, Lcom/android/server/location/GnssBatchingProvider;->mPeriodNanos:J

    iput-boolean p3, p0, Lcom/android/server/location/GnssBatchingProvider;->mWakeOnFifoFull:Z

    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    return v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/location/GnssBatchingProvider;->extension_isSupportGnssBatching()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->stopBatch()Z

    move-result v0

    if-eqz v0, :cond_12

    iput-boolean v1, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    :cond_12
    return v0
.end method
