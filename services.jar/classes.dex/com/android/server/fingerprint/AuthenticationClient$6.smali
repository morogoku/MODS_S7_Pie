.class Lcom/android/server/fingerprint/AuthenticationClient$6;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/AuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorEventListener:onSensorChanged called = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v2, 0x10039

    if-ne v0, v2, :cond_7c

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-boolean v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$900(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$1000(Lcom/android/server/fingerprint/AuthenticationClient;)Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_76

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$700(Lcom/android/server/fingerprint/AuthenticationClient;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5e

    goto :goto_76

    :cond_5e
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semDozeControl(Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$800(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    new-instance v1, Lcom/android/server/fingerprint/AuthenticationClient$6$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/AuthenticationClient$6$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$6;)V

    # setter for: Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$802(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_7c

    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$6;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/fingerprint/AuthenticationClient;->semShowFingerIcon(I)V
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$400(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    :cond_7c
    :goto_7c
    return-void
.end method
