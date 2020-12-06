.class Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic lambda$G4BUQ5yuPth3zmsxpoZRLXu-tUQ(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$LLz30GfLzO6eB_6oPJqqQOqA5KA(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$XFTsobFpErT2yA_zBs_h0c1KJzg(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleMessage$0(ZLcom/android/keyguard/biometric/KeyguardProximitySensorListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorListener;->onProximitySensorOccludedChanged(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$200(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "KeyguardProximitySensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProximitySensorOccludedChanged() isSensorOccluded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v3}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$200(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v1, v0}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$202(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager$3;->this$0:Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;

    invoke-static {v1}, Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;->access$300(Lcom/android/keyguard/biometric/KeyguardProximitySensorManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$LLz30GfLzO6eB_6oPJqqQOqA5KA;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$LLz30GfLzO6eB_6oPJqqQOqA5KA;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$XFTsobFpErT2yA_zBs_h0c1KJzg;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$XFTsobFpErT2yA_zBs_h0c1KJzg;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$G4BUQ5yuPth3zmsxpoZRLXu-tUQ;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$G4BUQ5yuPth3zmsxpoZRLXu-tUQ;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$gIXucQt7NyZ-_LDz4PXhg7qVdbE;

    invoke-direct {v2, v0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardProximitySensorManager$3$gIXucQt7NyZ-_LDz4PXhg7qVdbE;-><init>(Z)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
