.class public Lcom/android/systemui/controller/DeviceControllerImpl;
.super Ljava/lang/Object;
.source "DeviceControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/DeviceController;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceControllerImpl"

    iput-object v0, p0, Lcom/android/systemui/controller/DeviceControllerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private setFlashlight(Z)I
    .locals 3

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "setFlashlight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    const/4 v2, 0x0

    return v2

    :cond_3
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public restartDevice(Landroid/content/Context;)V
    .locals 4

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "restartDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->reboot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DeviceControllerImpl"

    const-string/jumbo v3, "reboot RemoteException "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public turnOffDevice(Landroid/content/Context;)V
    .locals 4

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "turnOffDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DeviceControllerImpl"

    const-string/jumbo v3, "shutdown RemoteException "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public turnOffFlash(Landroid/content/Context;)I
    .locals 2

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "turnOffFlash"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controller/DeviceControllerImpl;->setFlashlight(Z)I

    move-result v0

    return v0
.end method

.method public turnOffScreen(Landroid/content/Context;)V
    .locals 3

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "turnOffScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->semGoToSleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DeviceControllerImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public turnOnFlash(Landroid/content/Context;)I
    .locals 2

    const-string v0, "DeviceControllerImpl"

    const-string/jumbo v1, "turnOnFlash"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/controller/DeviceControllerImpl;->setFlashlight(Z)I

    move-result v0

    return v0
.end method
