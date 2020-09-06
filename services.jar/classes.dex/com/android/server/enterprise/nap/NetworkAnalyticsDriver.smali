.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static REATTEMPT_COMMAND_ACTIVATE:I = 0x0

.field private static REATTEMPT_COMMAND_DEACTIVATE:I = 0x0

.field private static REATTEMPT_COMMAND_FREQUENCY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDriver"

.field private static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# instance fields
.field atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

.field private mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field public ncmVersion:Ljava/lang/String;

.field private stateOfFileDescriptor:Z

.field private stateOfIntervalSet:Z

.field private stateOfThread:Z

.field private syncObject:Ljava/lang/Object;

.field private test:Ljava/lang/String;

.field public versionMismatchCheck:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_ACTIVATE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_DEACTIVATE:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_FREQUENCY:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->syncObject:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfThread:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    const-string/jumbo v0, "{ \"src\":\"10.10.12.12\", \"dst\":\"66.7.251.20\", \"sport\":\"5000\", \"dport\":\"443\", \"uid\":\"10197\", \"pid\":\"666\", \"bsent\":\"1400\", \"brecv\":\"4500\", \"hostname\":\"www.space.com\", \"protocol\":\"tcp\", \"hash\":\"a0627953\" }"

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->test:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    return-object v0
.end method

.method private setStateOfCharDevice(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    return-void
.end method

.method private setStateOfThread(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public native activate(I)I
.end method

.method public beginDataRecording(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->activate(I)I

    move-result v0

    if-gez v0, :cond_13

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: Activation ioctl failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    new-instance v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    return-void
.end method

.method public checkDataCollectionState()V
    .registers 1

    return-void
.end method

.method public native checkNcmVersion()I
.end method

.method public declared-synchronized checkNcmVersionMismatch()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    if-nez v0, :cond_27

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersion()I

    move-result v1

    move v0, v1

    if-gez v0, :cond_20

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: Mismatch between kernel and userspace npa version."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x14

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2f

    monitor-exit p0

    return v0

    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    :cond_27
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->versionMismatchCheck:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return v0

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native closeDevice()I
.end method

.method public native deactivate()I
.end method

.method public endDataRecording()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getActiveProfilesNumber()I

    move-result v0

    if-lez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->deactivate()I

    move-result v1

    if-gez v1, :cond_2a

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v2, "endDataRecording: Deactivation ioctl failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    iput-boolean v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->closeDevice()I

    move-result v1

    if-gez v1, :cond_3b

    const-string v0, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v2, "endDataRecording: closing of character device failed."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    return-void
.end method

.method public native getNcmVersion()I
.end method

.method public jniSendingData(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->accumulateData(Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized openCharDevice(I)I
    .registers 5

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    if-nez v1, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openDevice(I)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_18

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: Opening of character device failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_3d

    const/16 v0, -0x13

    monitor-exit p0

    return v0

    :cond_18
    const/4 v1, 0x1

    :try_start_19
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    :cond_1c
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->getNcmVersion()I

    move-result v1

    move v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    if-gez v0, :cond_3a

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: Get npa version failed. Char device in open state."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_3d

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_3a
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native openDevice(I)I
.end method

.method public native readDevice()Ljava/lang/String;
.end method

.method public native setIntervalValue(I)I
.end method

.method public declared-synchronized setIntervalValueForFlow(I)I
    .registers 5

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfIntervalSet:Z

    if-nez v1, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setIntervalValue(I)I

    move-result v1

    move v0, v1

    if-gez v0, :cond_17

    const-string v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string v2, "beginDataRecording: set interval value failed. Char device in open state."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_1a

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_17
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
