.class public Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;
.super Ljava/lang/Object;
.source "BluetoothSecureModePolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTSecureModePolicy"

.field private static btSecureMode:Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;

.field private static mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private static getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    if-nez v0, :cond_10

    const-string v0, "bluetooth_secure_mode_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    :cond_10
    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    return-object v0
.end method


# virtual methods
.method public addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.addBluetoothDevicesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public disableSecureMode()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.disableSecureMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public enableDeviceWhiteList(Z)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.enableDeviceWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->enableDeviceWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public enableSecureMode(Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.enableSecureMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->enableSecureMode(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getBluetoothDevicesFromWhiteList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureModeConfiguration()Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->getSecureModeConfiguration(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeviceWhiteListEnabled()Z
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->isDeviceWhiteListEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public isSecureModeEnabled()Z
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothSecureModePolicy.removeBluetoothDevicesFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mBTSecureModeService:Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "BTSecureModePolicy"

    const-string v2, "Failed talking to BT Secure Mode service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method
