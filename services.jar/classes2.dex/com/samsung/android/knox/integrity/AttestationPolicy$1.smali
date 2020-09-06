.class Lcom/samsung/android/knox/integrity/AttestationPolicy$1;
.super Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
.source "AttestationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/integrity/AttestationPolicy;->startAttestation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->nonce:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->callingUid:I

    # invokes: Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;
    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->access$000(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v1, "com.samsung.android.knox.intent.action.KNOX_ATTESTATION_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    # getter for: Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->access$100(Lcom/samsung/android/knox/integrity/AttestationPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->callingUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;->this$0:Lcom/samsung/android/knox/integrity/AttestationPolicy;

    # getter for: Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->access$100(Lcom/samsung/android/knox/integrity/AttestationPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_37

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_36
    goto :goto_3b

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    return-void
.end method
