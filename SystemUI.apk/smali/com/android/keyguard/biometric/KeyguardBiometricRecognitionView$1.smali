.class Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView$1;
.super Ljava/lang/Object;
.source "KeyguardBiometricRecognitionView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView$1;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;

    invoke-virtual {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRecognitionView;->updateLayout()V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
