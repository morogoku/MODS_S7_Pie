.class Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardProximitySensorManager.java"


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

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    const-string v0, "KeyguardProximitySensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardVisibilityChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v2}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$400(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$402(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$100(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$4;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$100(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V

    return-void
.end method
