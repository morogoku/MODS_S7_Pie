.class public Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;
.super Ljava/lang/Object;
.source "KeyguardProximitySensorManager.java"


# static fields
.field private static volatile sInstance:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsKeyguardVisible:Z

.field private mIsProximitySensorOccluded:Z

.field private mIsSensorListening:Z

.field private mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStateChangeHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsProximitySensorOccluded:Z

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    iput-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsSensorListening:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$1;-><init>(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$2;-><init>(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;-><init>(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mStateChangeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$4;-><init>(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensor:Landroid/hardware/Sensor;

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mScreenLifecycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->shouldListenForProximitySensor()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mStateChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->shouldListenForProximitySensor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsProximitySensorOccluded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsProximitySensorOccluded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;
    .locals 2

    sget-object v0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->sInstance:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->sInstance:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->sInstance:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->sInstance:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    return-object v0
.end method

.method static synthetic lambda$addListener$0(Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;Ljava/lang/ref/WeakReference;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldListenForProximitySensor()V
    .locals 10

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-class v4, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v5

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    const-string v7, "KeyguardProximitySensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shouldListenForProximitySensor() shouldListening = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsSensorListening = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsSensorListening:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "(isThereAnyCallback="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",isScreenOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",isBiometricUnlockState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",mIsKeyguardVisible="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsKeyguardVisible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsSensorListening:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v8, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensor:Landroid/hardware/Sensor;

    const/4 v9, 0x3

    invoke-virtual {v2, v7, v8, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v3, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsSensorListening:Z

    const-string v2, "KeyguardProximitySensorManager"

    const-string/jumbo v3, "proximity sensor start"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsSensorListening:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsSensorListening:Z

    const-string v2, "KeyguardProximitySensorManager"

    const-string/jumbo v3, "proximity sensor stop"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$yp9bGkwcj_KbLLNzxJCpd7ym0Yk;

    invoke-direct {v1, p1}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$yp9bGkwcj_KbLLNzxJCpd7ym0Yk;-><init>(Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mCallbacks:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->mIsProximitySensorOccluded:Z

    invoke-interface {p1, v0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;->onProximitySensorOccludedChanged(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->shouldListenForProximitySensor()V

    return-void
.end method
