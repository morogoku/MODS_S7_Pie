.class Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;->this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBroadCastReceive [DQA]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;->this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->getAndAddBigFeatures()V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;->this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->putBigFeatures()V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager$1;->this$0:Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$SemFingerprintDQAManager;->initBigFeatures()V

    :cond_32
    return-void
.end method