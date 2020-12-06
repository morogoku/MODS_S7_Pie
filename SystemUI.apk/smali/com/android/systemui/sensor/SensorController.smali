.class public abstract Lcom/android/systemui/sensor/SensorController;
.super Ljava/lang/Object;
.source "SensorController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sensor/SensorController$SensorListener;,
        Lcom/android/systemui/sensor/SensorController$SensorInfo;
    }
.end annotation


# instance fields
.field private mSensorInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/sensor/SensorController$SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/sensor/SensorController$SensorInfo;-><init>(Lcom/android/systemui/sensor/SensorController$1;)V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensorType:I

    iget-object v2, p0, Lcom/android/systemui/sensor/SensorController;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10036

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected isRegistered(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const-string v0, "SensorController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensor/SensorController;->onTrigger(Landroid/hardware/TriggerEvent;)V

    return-void
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3

    const-string v0, "SensorController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    if-eqz v2, :cond_1

    const-string v2, "SensorController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register - already registered sensortype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/sensor/SensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, p0, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SensorController"

    const-string/jumbo v3, "register - requestTriggerSensor return false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v1, "SensorController"

    const-string/jumbo v2, "register - requestTriggerSensor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    return v1

    :cond_3
    :goto_0
    const-string v2, "SensorController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register - not supported sensortype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public unregister(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/sensor/SensorController;->mSensorInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->sensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    if-nez v2, :cond_1

    const-string v2, "SensorController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister - already unregistered sensortype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/sensor/SensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v2, "SensorController"

    const-string/jumbo v3, "register - unregisterListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v0, Lcom/android/systemui/sensor/SensorController$SensorInfo;->bRegistered:Z

    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    const-string v2, "SensorController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister - not supported sensortype="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
