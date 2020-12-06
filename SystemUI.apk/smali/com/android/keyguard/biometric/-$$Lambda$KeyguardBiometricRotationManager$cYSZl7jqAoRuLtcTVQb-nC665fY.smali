.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$cYSZl7jqAoRuLtcTVQb-nC665fY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$cYSZl7jqAoRuLtcTVQb-nC665fY;->f$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$cYSZl7jqAoRuLtcTVQb-nC665fY;->f$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->lambda$addListener$0(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;Ljava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
