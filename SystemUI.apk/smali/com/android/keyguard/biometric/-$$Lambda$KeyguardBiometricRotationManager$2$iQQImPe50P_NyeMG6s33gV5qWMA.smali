.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$iQQImPe50P_NyeMG6s33gV5qWMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$iQQImPe50P_NyeMG6s33gV5qWMA;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$iQQImPe50P_NyeMG6s33gV5qWMA;->f$0:I

    check-cast p1, Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;->lambda$handleMessage$0(ILcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    return-void
.end method
