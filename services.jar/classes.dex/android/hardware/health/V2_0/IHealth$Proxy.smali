.class public final Landroid/hardware/health/V2_0/IHealth$Proxy;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_0/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;->onValues(II)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2c

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;->onValues(II)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2c

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;->onValues(II)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;->onValues(II)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2c

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;->onValues(II)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2c

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    nop

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v2

    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-static {v1}, Landroid/hardware/health/V2_0/DiskStats;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;->onValues(ILjava/util/ArrayList;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;->onValues(IJ)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 15
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

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v12, v2

    const-wide/16 v2, 0x8

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v13, v2

    mul-int/lit8 v2, v13, 0x20

    int-to-long v3, v2

    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    nop

    :goto_45
    move v3, v10

    if-ge v3, v13, :cond_59

    const/16 v4, 0x20

    new-array v5, v4, [B

    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    nop

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_f .. :try_end_56} :catchall_5e

    add-int/lit8 v10, v3, 0x1

    goto :goto_45

    :cond_59
    nop

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v11

    :catchall_5e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    new-instance v3, Landroid/hardware/health/V2_0/HealthInfo;

    invoke-direct {v3}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    invoke-virtual {v3, v1}, Landroid/hardware/health/V2_0/HealthInfo;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-interface {p1, v2, v3}, Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;->onValues(ILandroid/hardware/health/V2_0/HealthInfo;)V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_31

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-static {v1}, Landroid/hardware/health/V2_0/StorageInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;->onValues(ILjava/util/ArrayList;)V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public final hashCode()I
    .registers 2

    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 6
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

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    nop

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v2

    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    nop

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object v2

    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_1a
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    nop

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return v2

    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    nop

    return-void

    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    const-string v0, "[class or subclass of android.hardware.health@2.0::IHealth]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_1a
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    nop

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return v2

    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method

.method public update()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    const-string v1, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    nop

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return v2

    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v2
.end method
