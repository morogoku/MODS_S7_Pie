.class Lcom/android/systemui/sensor/PickupController$1;
.super Lcom/android/systemui/sensor/SensorController$SensorListener;
.source "PickupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sensor/PickupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-direct {p0}, Lcom/android/systemui/sensor/SensorController$SensorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onExecute()V
    .locals 4

    const-string v0, "PickupController"

    const-string/jumbo v1, "onExecute : Lift to wake"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$000(Lcom/android/systemui/sensor/PickupController;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$000(Lcom/android/systemui/sensor/PickupController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JI)V

    return-void
.end method
