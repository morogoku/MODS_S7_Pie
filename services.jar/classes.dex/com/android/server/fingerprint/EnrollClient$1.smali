.class Lcom/android/server/fingerprint/EnrollClient$1;
.super Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;
.source "EnrollClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/EnrollClient;->start()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/EnrollClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/EnrollClient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(I)V
    .registers 4

    packed-switch p1, :pswitch_data_2c

    goto :goto_2a

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/EnrollClient;->semDeliveryTouchEvent(Z)I

    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    iget-object v0, v0, Lcom/android/server/fingerprint/EnrollClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/EnrollClient$1$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/EnrollClient$1$2;-><init>(Lcom/android/server/fingerprint/EnrollClient$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    :pswitch_17
    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/EnrollClient;->semDeliveryTouchEvent(Z)I

    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient$1;->this$0:Lcom/android/server/fingerprint/EnrollClient;

    iget-object v0, v0, Lcom/android/server/fingerprint/EnrollClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/EnrollClient$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/EnrollClient$1$1;-><init>(Lcom/android/server/fingerprint/EnrollClient$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    nop

    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x4e21
        :pswitch_17
        :pswitch_4
    .end packed-switch
.end method
