.class public interface abstract Landroid/hardware/health/V2_0/IHealth;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/health/V2_0/IHealth$Stub;,
        Landroid/hardware/health/V2_0/IHealth$Proxy;,
        Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;,
        Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;,
        Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;,
        Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;,
        Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;,
        Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;,
        Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;,
        Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;,
        Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.health@2.0::IHealth"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealth;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    if-eqz v1, :cond_14

    instance-of v2, v1, Landroid/hardware/health/V2_0/IHealth;

    if-eqz v2, :cond_14

    move-object v0, v1

    check-cast v0, Landroid/hardware/health/V2_0/IHealth;

    return-object v0

    :cond_14
    new-instance v2, Landroid/hardware/health/V2_0/IHealth$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/health/V2_0/IHealth$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_19
    invoke-interface {v2}, Landroid/hardware/health/V2_0/IHealth;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_33} :catch_38

    if-eqz v5, :cond_36

    return-object v2

    :cond_36
    goto :goto_21

    :cond_37
    goto :goto_39

    :catch_38
    move-exception v3

    :goto_39
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/health/V2_0/IHealth;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealth;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Landroid/hardware/health/V2_0/IHealth;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealth;->getService(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealth;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/health/V2_0/IHealth;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealth;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/health/V2_0/IHealth;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/health/V2_0/IHealth;->getService(Ljava/lang/String;Z)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract update()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
