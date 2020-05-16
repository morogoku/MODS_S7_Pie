.class Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricProximityGuidePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDexModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    return-void
.end method

.method public onIBError(ILjava/lang/CharSequence;)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$700(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$800(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    :cond_0
    return-void
.end method

.method public onIBRunningStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$700(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$800(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    :cond_0
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$600(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$602(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    if-nez p1, :cond_1

    const-string v0, "KeyguardProximityPopup"

    const-string/jumbo v1, "set text preview - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$102(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$200(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$300(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$500(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$500(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$400(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometric/KeyguardBiometricProximityGuidePopup;)V

    :cond_0
    return-void
.end method
