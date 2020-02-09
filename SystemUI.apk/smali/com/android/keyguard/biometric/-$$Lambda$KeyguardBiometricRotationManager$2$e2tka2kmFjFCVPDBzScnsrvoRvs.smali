.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$e2tka2kmFjFCVPDBzScnsrvoRvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$e2tka2kmFjFCVPDBzScnsrvoRvs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$e2tka2kmFjFCVPDBzScnsrvoRvs;

    invoke-direct {v0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$e2tka2kmFjFCVPDBzScnsrvoRvs;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$e2tka2kmFjFCVPDBzScnsrvoRvs;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$e2tka2kmFjFCVPDBzScnsrvoRvs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;->lambda$e2tka2kmFjFCVPDBzScnsrvoRvs(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
