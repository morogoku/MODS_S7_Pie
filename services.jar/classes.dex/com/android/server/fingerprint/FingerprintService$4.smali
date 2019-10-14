.class Lcom/android/server/fingerprint/FingerprintService$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "run: START PENDING CLIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$002(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->access$200(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$102(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;

    return-void
.end method
