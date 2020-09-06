.class Lcom/android/server/input/InputManagerService$35;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    :goto_a
    # getter for: Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F
    invoke-static {}, Lcom/android/server/input/InputManagerService;->access$4900()[F

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->access$5000(Lcom/android/server/input/InputManagerService;)I

    move-result v5

    aget v4, v4, v5

    cmpg-float v4, v3, v4

    if-gez v4, :cond_21

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    # operator-- for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$5010(Lcom/android/server/input/InputManagerService;)I

    const/4 v0, 0x1

    goto :goto_a

    :cond_21
    :goto_21
    # getter for: Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F
    invoke-static {}, Lcom/android/server/input/InputManagerService;->access$5100()[F

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->access$5000(Lcom/android/server/input/InputManagerService;)I

    move-result v5

    aget v4, v4, v5

    cmpl-float v4, v3, v4

    if-lez v4, :cond_38

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    # operator++ for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$5008(Lcom/android/server/input/InputManagerService;)I

    const/4 v0, 0x1

    goto :goto_21

    :cond_38
    if-eqz v0, :cond_6e

    const-string v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mFoldingAngleListener: state changed, angle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$5000(Lcom/android/server/input/InputManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$2200(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mFoldingState:I
    invoke-static {v6}, Lcom/android/server/input/InputManagerService;->access$5000(Lcom/android/server/input/InputManagerService;)I

    move-result v6

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetFoldingState(JI)V
    invoke-static {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->access$5200(JI)V

    :cond_6e
    return-void
.end method
