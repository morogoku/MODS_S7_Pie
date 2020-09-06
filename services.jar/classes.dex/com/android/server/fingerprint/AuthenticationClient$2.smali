.class Lcom/android/server/fingerprint/AuthenticationClient$2;
.super Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;
.source "AuthenticationClient.java"


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

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDialogDismissed$0(Lcom/android/server/fingerprint/AuthenticationClient$2;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    :cond_b
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalError(II)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x2710

    if-le p1, v0, :cond_e

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # invokes: Lcom/android/server/fingerprint/AuthenticationClient;->handleSystemUIEventForInDisplaySensor(I)V
    invoke-static {v0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$100(Lcom/android/server/fingerprint/AuthenticationClient;I)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$200(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$300(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    if-eqz v0, :cond_53

    :try_start_1e
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDialogDismissed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    # getter for: Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;
    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$300(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Unable to notify dialog dismissed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_47
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$2;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-object v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$5-wQH2LzRaJWub6rPnJcpZdZEnM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$5-wQH2LzRaJWub6rPnJcpZdZEnM;-><init>(Lcom/android/server/fingerprint/AuthenticationClient$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_53
    return-void
.end method
