.class Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getRgbFromLightSensor()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1300(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v4, v4

    const-string v5, "AdaptiveDisplayColorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLightSensorR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , mLightSensorG : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , mLightSensorB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , lux : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIII)V
    invoke-static {v5, v0, v2, v3, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIII)V

    :cond_61
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    goto :goto_82

    :cond_67
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    if-gt v0, v1, :cond_7d

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    if-lez v0, :cond_7d

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # operator-- for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1110(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    goto :goto_82

    :cond_7d
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    :goto_82
    return-void
.end method
