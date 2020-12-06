.class Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$2;
.super Ljava/lang/Object;
.source "KeyguardProximitySensorManager.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


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

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$2;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    const-string v0, "KeyguardProximitySensorManager"

    const-string/jumbo v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$2;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$100(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string v0, "KeyguardProximitySensorManager"

    const-string/jumbo v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$2;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$100(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)V

    return-void
.end method
