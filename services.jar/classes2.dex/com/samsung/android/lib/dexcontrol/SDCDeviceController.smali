.class public Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;
.super Ljava/lang/Object;
.source "SDCDeviceController.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DexControl_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DexControlLib Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "2.17.1221"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public requestChargingModeUpdate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    return-void
.end method

.method public requestConnectedPowerChargerInfoUpdate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    return-void
.end method

.method public setFastChargingEnable(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    return-void
.end method

.method public updateDexBinaryDownloadingState(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    return-void
.end method
