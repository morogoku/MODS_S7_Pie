.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$oF58LtKhS1CzDgKIpZjg9RFPzsc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$oF58LtKhS1CzDgKIpZjg9RFPzsc;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$oF58LtKhS1CzDgKIpZjg9RFPzsc;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    return-void
.end method
