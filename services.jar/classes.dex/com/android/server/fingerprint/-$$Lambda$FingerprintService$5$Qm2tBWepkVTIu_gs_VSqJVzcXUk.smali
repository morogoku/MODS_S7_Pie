.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$5$Qm2tBWepkVTIu_gs_VSqJVzcXUk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/FingerprintService$5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$5$Qm2tBWepkVTIu_gs_VSqJVzcXUk;->f$0:Lcom/android/server/fingerprint/FingerprintService$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$5$Qm2tBWepkVTIu_gs_VSqJVzcXUk;->f$0:Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService$5;->lambda$onTaskStackChanged$0(Lcom/android/server/fingerprint/FingerprintService$5;)V

    return-void
.end method
