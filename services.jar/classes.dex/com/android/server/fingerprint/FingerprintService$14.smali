.class Lcom/android/server/fingerprint/FingerprintService$14;
.super Lcom/android/server/fingerprint/UpdateClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->semStartUpdateTrustApp(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/lang/String;)V
    .registers 25

    move-object v11, p0

    move-object v12, p1

    iput-object v12, v11, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v0, v11

    move-object v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/fingerprint/UpdateClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$handleUpdate$0(Lcom/android/server/fingerprint/FingerprintService$14;I)V
    .registers 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService$14;->onAcquired(II)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService$14;->stop(Z)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$14;->destroy()V

    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public handleUpdate(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$14$6T_8pMlTzpy57i2C9VkbylKgKvc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$14$6T_8pMlTzpy57i2C9VkbylKgKvc;-><init>(Lcom/android/server/fingerprint/FingerprintService$14;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyUserActivity()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method
