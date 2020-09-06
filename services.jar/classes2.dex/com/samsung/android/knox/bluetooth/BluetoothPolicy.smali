.class public Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/bluetooth/BluetoothPolicy$BluetoothProfile;,
        Lcom/samsung/android/knox/bluetooth/BluetoothPolicy$BluetoothUUID;
    }
.end annotation


# static fields
.field public static final NO_PROFILE:I = -0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "BluetoothPolicy"

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private convertBluetoothProfile(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1c

    packed-switch p1, :pswitch_data_20

    const-string v0, ""

    return-object v0

    :pswitch_a
    const-string v0, "Profile: PBAP\n"

    return-object v0

    :pswitch_d
    const-string v0, "Profile: PAN\n"

    return-object v0

    :pswitch_10
    const-string v0, "Profile: INPUT DEVICE\n"

    return-object v0

    :pswitch_13
    const-string v0, "Profile: HEALTH\n"

    return-object v0

    :pswitch_16
    const-string v0, "Profile: A2DP\n"

    return-object v0

    :pswitch_19
    const-string v0, "Profile: Headset and Handsfree\n"

    return-object v0

    :cond_1c
    const-string v0, "Profile: MAP\n"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    if-nez v0, :cond_10

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    return-object v0
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.activateBluetoothDeviceRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->activateBluetoothDeviceRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public activateBluetoothUUIDRestriction(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.activateBluetoothUUIDRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->activateBluetoothUUIDRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothDevicesToBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothDevicesToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothDevicesToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothDevicesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothDevicesToWhiteList(Ljava/util/List;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothDevicesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_22

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->addBluetoothDevicesToBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to update WildCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->addBluetoothDevicesToWhiteList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method

.method public addBluetoothUUIDsToBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothUUIDsToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothUUIDsToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothUUIDsToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothUUIDsToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothUUIDsToWhiteList(Ljava/util/List;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothUUIDsToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_22

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->addBluetoothUUIDsToBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to update wildCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method

.method public allowBLE(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public allowBluetooth(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public allowCallerIDDisplay(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.allowCallerIDDisplay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block caller id display "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public allowOutgoingCalls(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.allowOutgoingCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .registers 12

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    :cond_16
    if-eqz p3, :cond_20

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :cond_20
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, -0x1

    if-eq p2, v6, :cond_31

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->convertBluetoothProfile(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    const/16 v6, 0xa

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_46

    const-string v7, "Remote Address: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_46
    if-eqz v3, :cond_59

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_59

    const-string v7, "Remote Name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_59
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6c

    const-string v7, "Local Address: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6c
    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7f

    const-string v7, "Local Name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public clearBluetoothDevicesFromBlackList()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothDevicesFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearBluetoothDevicesFromList()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothDevicesFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->clearBluetoothDevicesFromBlackList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->clearBluetoothDevicesFromWhiteList()Z

    move-result v1

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method public clearBluetoothDevicesFromWhiteList()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothDevicesFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearBluetoothUUIDsFromBlackList()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothUUIDsFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearBluetoothUUIDsFromList()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothUUIDsFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->clearBluetoothUUIDsFromBlackList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->clearBluetoothUUIDsFromWhiteList()Z

    move-result v1

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2
.end method

.method public clearBluetoothUUIDsFromWhiteList()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothUUIDsFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public getBluetoothDevicesFromBlackLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothDevicesFromBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBluetoothDevicesFromWhiteLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothDevicesFromWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBluetoothLog()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothLog"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getBluetoothLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUUIDsFromBlackLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothUUIDsFromBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBluetoothUUIDsFromWhiteLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothUUIDsFromWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectiveBluetoothDevicesBlackLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isBLEAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothDeviceAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothDeviceRestrictionActive()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.isBluetoothDeviceRestrictionActive"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothDeviceRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v0, v1

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    return v1

    :catch_12
    move-exception v1

    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothEnabled(Z)Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v0, v1

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    :catch_10
    move-exception v1

    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothLogEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothUUIDAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothUUIDRestrictionActive()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.isBluetoothUUIDRestrictionActive"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothUUIDRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public isCallerIDDisplayAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getting caller id display status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isDesktopConnectivityEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isDesktopConnectivityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isDiscoverableEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isLimitedDiscoverableEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isOutgoingCallsAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isOutgoingCallsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isPairingEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isPairingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileEnabled(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isProfileEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isRequiredPasswordForDiscovery()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRequiredPasswordForEnable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothDevicesFromBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.removeBluetoothDevicesFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.removeBluetoothDevicesFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothUUIDsFromBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.removeBluetoothUUIDsFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothUUIDsFromWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.removeBluetoothUUIDsFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowBluetoothDataTransfer(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setAllowBluetoothDataTransfer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothLogEnabled(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setBluetoothLogEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothState(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public setDesktopConnectivityState(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setDesktopConnectivityState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setDesktopConnectivityState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setDiscoverableState(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setDiscoverableState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setLimitedDiscoverableState(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setLimitedDiscoverableState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setLimitedDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setPairingState(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setPairingState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setPairingState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setProfileState(ZI)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setProfileState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setProfileState(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setRequiredPasswordForDiscovery(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setRequiredPasswordForEnable(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
