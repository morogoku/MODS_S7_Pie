.class Lcom/android/server/enterprise/certificate/CertificatePolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
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

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CertificatePolicy"

    invoke-static {v1, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_40

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_24
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$502(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v2, 0x3

    const/4 v3, -0x1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V

    :cond_40
    return-void
.end method
