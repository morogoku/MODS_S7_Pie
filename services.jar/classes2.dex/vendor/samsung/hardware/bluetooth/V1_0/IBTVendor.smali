.class public interface abstract Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
.super Ljava/lang/Object;
.source "IBTVendor.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Stub;,
        Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Proxy;,
        Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorPropertyCallback;,
        Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorFileInfoCallback;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.samsung.hardware.bluetooth@1.0::IBTVendor"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string/jumbo v1, "vendor.samsung.hardware.bluetooth@1.0::IBTVendor"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    if-eqz v1, :cond_15

    instance-of v2, v1, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    if-eqz v2, :cond_15

    move-object v0, v1

    check-cast v0, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    return-object v0

    :cond_15
    new-instance v2, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Proxy;

    invoke-direct {v2, p0}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_1a
    invoke-interface {v2}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "vendor.samsung.hardware.bluetooth@1.0::IBTVendor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_35} :catch_3a

    if-eqz v5, :cond_38

    return-object v2

    :cond_38
    goto :goto_22

    :cond_39
    goto :goto_3b

    :catch_3a
    move-exception v3

    :goto_3b
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.bluetooth@1.0::IBTVendor"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.samsung.hardware.bluetooth@1.0::IBTVendor"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
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

.method public abstract getVendorFileInfo(Ljava/lang/String;Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorFileInfoCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVendorProperty(Ljava/lang/String;Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorPropertyCallback;)V
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

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVendorProperty(Ljava/lang/String;Ljava/lang/String;)Z
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

.method public abstract writeOutVendorFile(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
