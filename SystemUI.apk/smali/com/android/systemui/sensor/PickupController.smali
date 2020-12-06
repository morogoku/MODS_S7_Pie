.class public Lcom/android/systemui/sensor/PickupController;
.super Lcom/android/systemui/sensor/SensorController;
.source "PickupController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# static fields
.field private static sInstance:Lcom/android/systemui/sensor/PickupController;


# instance fields
.field private mAddedScreenLifecycleObserver:Z

.field mBaseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

.field private final mContext:Landroid/content/Context;

.field private mPickupListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sensor/SensorController$SensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/sensor/PickupController;->sInstance:Lcom/android/systemui/sensor/PickupController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/sensor/SensorController;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/sensor/PickupController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/sensor/PickupController$1;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mBaseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/systemui/sensor/-$$Lambda$PickupController$F3r_9XzRGexKSUBLI5_i0pAUW2E;

    invoke-direct {v0, p0}, Lcom/android/systemui/sensor/-$$Lambda$PickupController$F3r_9XzRGexKSUBLI5_i0pAUW2E;-><init>(Lcom/android/systemui/sensor/PickupController;)V

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sensor/PickupController;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private addScreenLifecycleObserver()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedScreenLifecycleObserver:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedScreenLifecycleObserver:Z

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/sensor/PickupController;
    .locals 2

    const-class v0, Lcom/android/systemui/sensor/PickupController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/sensor/PickupController;->sInstance:Lcom/android/systemui/sensor/PickupController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/sensor/PickupController;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensor/PickupController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/sensor/PickupController;->sInstance:Lcom/android/systemui/sensor/PickupController;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/systemui/sensor/PickupController;->sInstance:Lcom/android/systemui/sensor/PickupController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isLiftToWakeEnabled()Z
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiftToWakeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/android/systemui/sensor/SensorController$SensorListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      lisenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/sensor/PickupController;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "lift_to_wake"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PickupController"

    const-string/jumbo v1, "onChanged() LIFT_TO_WAKE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->addScreenLifecycleObserver()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->removeScreenLifecycleObserver()V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeScreenLifecycleObserver()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedScreenLifecycleObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedScreenLifecycleObserver:Z

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "   PickupController Dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mAddedScreenLifecycleObserver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/sensor/PickupController;->mAddedScreenLifecycleObserver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/sensor/-$$Lambda$PickupController$r_nt8hhwoGB5lopaDjURu1fpStE;

    invoke-direct {v1, p1}, Lcom/android/systemui/sensor/-$$Lambda$PickupController$r_nt8hhwoGB5lopaDjURu1fpStE;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string v0, "PickupController"

    const-string/jumbo v1, "onScreenTurnedOff() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/PickupController;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/PickupController;->unregister(I)Z

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/PickupController;->register(I)Z

    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string v0, "PickupController"

    const-string/jumbo v1, "onScreenTurnedOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/PickupController;->unregister(I)Z

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "PickupController"

    const-string/jumbo v1, "onTrigger return cause by CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/hardware/TriggerEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "PickupController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrigger Listener.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {v1}, Lcom/android/systemui/sensor/SensorController$SensorListener;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {v1}, Lcom/android/systemui/sensor/SensorController$SensorListener;->onExecute()V

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public registerListener(Lcom/android/systemui/sensor/SensorController$SensorListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mPickupListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "PickupController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register listener caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restart()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->addScreenLifecycleObserver()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->removeScreenLifecycleObserver()V

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "lift_to_wake"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public start()V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->isLiftToWakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/sensor/PickupController;->addScreenLifecycleObserver()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController;->mBaseSensorListener:Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/PickupController;->registerListener(Lcom/android/systemui/sensor/SensorController$SensorListener;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController;->mPickupSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "lift_to_wake"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method
