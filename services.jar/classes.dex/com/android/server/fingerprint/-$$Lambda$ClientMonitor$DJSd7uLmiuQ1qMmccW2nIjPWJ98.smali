.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$ClientMonitor$DJSd7uLmiuQ1qMmccW2nIjPWJ98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/ClientMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/ClientMonitor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$ClientMonitor$DJSd7uLmiuQ1qMmccW2nIjPWJ98;->f$0:Lcom/android/server/fingerprint/ClientMonitor;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$ClientMonitor$DJSd7uLmiuQ1qMmccW2nIjPWJ98;->f$0:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->lambda$semDeliveryTouchEvent$0(Lcom/android/server/fingerprint/ClientMonitor;ILjava/util/ArrayList;)V

    return-void
.end method
