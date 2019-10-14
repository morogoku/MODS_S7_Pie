.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$G4BUQ5yuPth3zmsxpoZRLXu-tUQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$G4BUQ5yuPth3zmsxpoZRLXu-tUQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$G4BUQ5yuPth3zmsxpoZRLXu-tUQ;

    invoke-direct {v0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$G4BUQ5yuPth3zmsxpoZRLXu-tUQ;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$G4BUQ5yuPth3zmsxpoZRLXu-tUQ;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$G4BUQ5yuPth3zmsxpoZRLXu-tUQ;

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

    check-cast p1, Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;->lambda$G4BUQ5yuPth3zmsxpoZRLXu-tUQ(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
