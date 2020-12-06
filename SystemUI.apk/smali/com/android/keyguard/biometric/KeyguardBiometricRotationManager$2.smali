.class Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic lambda$3cEwRcfTyiMtVbVbOcZWKFy5_og(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$e2tka2kmFjFCVPDBzScnsrvoRvs(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$handleMessage$0(ILcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;->onRotationChanged(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "KeyguardBiometricRotationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRotationChanged : from mCurrentRotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->access$100(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    invoke-static {v1, v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->access$102(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;I)I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager$2;->this$0:Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->access$200(Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$LLz30GfLzO6eB_6oPJqqQOqA5KA;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$LLz30GfLzO6eB_6oPJqqQOqA5KA;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$3cEwRcfTyiMtVbVbOcZWKFy5_og;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$3cEwRcfTyiMtVbVbOcZWKFy5_og;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$e2tka2kmFjFCVPDBzScnsrvoRvs;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$e2tka2kmFjFCVPDBzScnsrvoRvs;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$iQQImPe50P_NyeMG6s33gV5qWMA;

    invoke-direct {v2, v0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricRotationManager$2$iQQImPe50P_NyeMG6s33gV5qWMA;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
