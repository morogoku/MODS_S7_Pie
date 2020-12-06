.class Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "KeyguardBiometricRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    invoke-static {v2}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
