.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$yefwXIpfqx5dJ6W2XKvZewNi6co;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$yefwXIpfqx5dJ6W2XKvZewNi6co;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$yefwXIpfqx5dJ6W2XKvZewNi6co;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->lambda$semInitSensorInfo$7(Lcom/android/server/fingerprint/FingerprintService;ILjava/util/ArrayList;)V

    return-void
.end method
