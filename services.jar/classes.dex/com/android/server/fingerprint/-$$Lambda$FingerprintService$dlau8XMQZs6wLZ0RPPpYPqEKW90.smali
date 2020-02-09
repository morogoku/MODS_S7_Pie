.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService;

.field private final synthetic f$1:Landroid/os/IBinder;

.field private final synthetic f$2:[B

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    iput-object p2, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$2:[B

    iput p4, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$3:I

    iput-object p5, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$4:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$2:[B

    iget v3, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$3:I

    iget-object v4, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$dlau8XMQZs6wLZ0RPPpYPqEKW90;->f$4:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->lambda$semStartRequest$8(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    return-void
.end method
