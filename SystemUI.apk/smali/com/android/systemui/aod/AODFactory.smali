.class public Lcom/android/systemui/aod/AODFactory;
.super Ljava/lang/Object;
.source "AODFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHost(Lcom/android/systemui/aod/AODService;)Lcom/android/systemui/doze/DozeHost;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODService;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/DozeHost;

    return-object v2
.end method


# virtual methods
.method public assembleMachine(Lcom/android/systemui/aod/AODService;Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;)Lcom/android/systemui/aod/AODMachine;
    .locals 11

    move-object v0, p1

    invoke-static {p1}, Lcom/android/systemui/aod/AODFactory;->getHost(Lcom/android/systemui/aod/AODService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v1

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    const-string v5, "Doze"

    invoke-static {v0, v5}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    move-object v5, p1

    new-instance v6, Lcom/android/systemui/aod/AODDozeBrightnessHostForwarder;

    invoke-direct {v6, v5, v1}, Lcom/android/systemui/aod/AODDozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/aod/AODMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    move-object v5, v6

    invoke-virtual {p2}, Lcom/samsung/android/aod/SemAlwaysOnDisplayConfiguration;->alwaysOnDisplayAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/android/systemui/aod/AODDozeScreenStatePreventingAdapter;

    invoke-direct {v6, v5}, Lcom/android/systemui/aod/AODDozeScreenStatePreventingAdapter;-><init>(Lcom/android/systemui/aod/AODMachine$Service;)V

    move-object v5, v6

    :cond_0
    new-instance v6, Lcom/android/systemui/aod/AODMachine;

    invoke-direct {v6, v5, v4}, Lcom/android/systemui/aod/AODMachine;-><init>(Lcom/android/systemui/aod/AODMachine$Service;Lcom/android/systemui/util/wakelock/WakeLock;)V

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/android/systemui/aod/AODMachine$Part;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/systemui/aod/AODUi;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    invoke-direct {v9, v5, v1, v2, v10}, Lcom/android/systemui/aod/AODUi;-><init>(Lcom/android/systemui/aod/AODMachine$Service;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/systemui/aod/AODDozeScreenState;

    invoke-direct {v9, v5, v3, v2, v4}, Lcom/android/systemui/aod/AODDozeScreenState;-><init>(Lcom/android/systemui/aod/AODMachine$Service;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/android/systemui/aod/AODDozeScreenBrightness;

    invoke-direct {v9, p1, v1}, Lcom/android/systemui/aod/AODDozeScreenBrightness;-><init>(Lcom/android/systemui/aod/AODMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/systemui/aod/AODMachine;->setParts([Lcom/android/systemui/aod/AODMachine$Part;)V

    return-object v6
.end method
