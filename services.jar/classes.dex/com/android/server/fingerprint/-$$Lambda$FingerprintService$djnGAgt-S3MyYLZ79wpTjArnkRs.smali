.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$djnGAgt-S3MyYLZ79wpTjArnkRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$djnGAgt-S3MyYLZ79wpTjArnkRs;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    iput p2, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$djnGAgt-S3MyYLZ79wpTjArnkRs;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$djnGAgt-S3MyYLZ79wpTjArnkRs;->f$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$djnGAgt-S3MyYLZ79wpTjArnkRs;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->lambda$semRemoveTemplateForUser$5(Lcom/android/server/fingerprint/FingerprintService;I)V

    return-void
.end method
