.class Lcom/android/server/enterprise/certificate/CertificatePolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isMarketInstallation"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_41

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_41

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_41

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    if-eqz v2, :cond_41

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->displayAppSignature(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_3c

    goto :goto_41

    :catch_3c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42

    :cond_41
    :goto_41
    nop

    :goto_42
    return-void
.end method
