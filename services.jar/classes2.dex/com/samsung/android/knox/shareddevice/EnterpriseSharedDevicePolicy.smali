.class public Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;
.super Ljava/lang/Object;
.source "EnterpriseSharedDevicePolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->mService:Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    if-nez v0, :cond_10

    const-string v0, "enterprise_shared_device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->mService:Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->mService:Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    return-object v0
.end method


# virtual methods
.method public getSharedDevicePolicies()Landroid/os/Bundle;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->getService()Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->mService:Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;->getSharedDevicePolicies()Landroid/os/Bundle;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Unable to call getSharedDevicePolicies!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSharedDeviceEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->getService()Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->mService:Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Unable to call isSharedDeviceEnabled!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setSharedDeviceState(IZ)I
    .registers 6

    sget-object v0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSharedDeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->getService()Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    move-result-object v0

    if-eqz v0, :cond_31

    :try_start_1d
    iget-object v0, p0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->mService:Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/shareddevice/IEnterpriseSharedDevicePolicy;->setSharedDeviceState(Lcom/samsung/android/knox/ContextInfo;IZ)I

    move-result v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_26

    return v0

    :catch_26
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;

    const-string v2, "Unable to call setSharedDeviceState!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    const/4 v0, -0x1

    return v0

    :cond_31
    const/4 v0, -0x2

    return v0
.end method
