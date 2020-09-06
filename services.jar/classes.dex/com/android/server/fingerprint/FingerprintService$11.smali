.class Lcom/android/server/fingerprint/FingerprintService$11;
.super Lcom/android/server/fingerprint/EnrollClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 27

    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v0, v12

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/EnrollClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V

    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public notifyUserActivity()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method public onStart()V
    .registers 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService$11;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "FingerprintService"

    const-string v1, "EnrollClient : onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mSemOnHandModeListener:Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->observe(Z)V

    :cond_19
    return-void
.end method

.method public onStop()V
    .registers 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService$11;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "FingerprintService"

    const-string v1, "EnrollClient : onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mSemOnHandModeListener:Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemOnHandModeListener;->observe(Z)V

    :cond_19
    return-void
.end method

.method public semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$11;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method
