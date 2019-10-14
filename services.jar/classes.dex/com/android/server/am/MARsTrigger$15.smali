.class Lcom/android/server/am/MARsTrigger$15;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$15;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    if-eqz p2, :cond_53

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_53

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$15;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/am/MARsTrigger$15;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v2, v2, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPolicyManager;->init(Z)V

    goto :goto_52

    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_49

    const-string v4, "MARS_EXTRA"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "create"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v2, 0x1

    :cond_3f
    const-string/jumbo v5, "update"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    const/4 v3, 0x1

    :cond_49
    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$15;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/MARsDBManager;->onSMDBChanged(ZZ)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    :goto_53
    return-void
.end method
