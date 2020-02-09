.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    iput p2, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;->f$1:I

    iput p3, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;->f$1:I

    iget v2, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$Qap677oA9s8Y0eXCSdoqybx4eeA;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->lambda$semRemoveTemplateForUser$4(Lcom/android/server/fingerprint/FingerprintService;II)V

    return-void
.end method
