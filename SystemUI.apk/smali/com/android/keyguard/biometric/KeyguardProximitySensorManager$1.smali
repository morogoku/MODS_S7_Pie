.class Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$1;
.super Ljava/lang/Object;
.source "KeyguardProximitySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$1;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v1, v2, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$1;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$000(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$1;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$000(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
