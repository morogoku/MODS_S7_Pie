.class interface abstract Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IHealthSupplier"
.end annotation


# virtual methods
.method public get(Ljava/lang/String;)Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;

    move-result-object v0

    return-object v0
.end method
