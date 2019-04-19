.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$3cEwRcfTyiMtVbVbOcZWKFy5_og;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$3cEwRcfTyiMtVbVbOcZWKFy5_og;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$3cEwRcfTyiMtVbVbOcZWKFy5_og;

    invoke-direct {v0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$3cEwRcfTyiMtVbVbOcZWKFy5_og;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$3cEwRcfTyiMtVbVbOcZWKFy5_og;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$3cEwRcfTyiMtVbVbOcZWKFy5_og;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;->lambda$3cEwRcfTyiMtVbVbOcZWKFy5_og(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    return-object p1
.end method
