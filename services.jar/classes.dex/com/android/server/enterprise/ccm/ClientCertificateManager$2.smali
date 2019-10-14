.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400()Z

    move-result v2

    if-eqz v2, :cond_31

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    if-nez v2, :cond_54

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400()Z

    move-result v3

    if-eqz v3, :cond_53

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "managedProfileUserHandle is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-void

    :cond_54
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400()Z

    move-result v4

    if-eqz v4, :cond_77

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "managedProfileUserId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z
    invoke-static {v4, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v4

    if-eqz v4, :cond_87

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    sget-object v5, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V
    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    goto :goto_8e

    :cond_87
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    sget-object v5, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V
    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    :goto_8e
    goto/16 :goto_131

    :cond_90
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isKnoxWorkSpace(I)Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v2

    if-eqz v2, :cond_a2

    goto/16 :goto_131

    :cond_a2
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v3, -0x1

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    goto/16 :goto_131

    :cond_b9
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    goto :goto_fb

    :cond_d2
    const-string v2, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    if-nez v2, :cond_ef

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400()Z

    move-result v3

    if-eqz v3, :cond_ee

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onReceive ACTION_DEVICE_OWNER_CHANGED userHandle is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    return-void

    :cond_ef
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    sget-object v5, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V
    invoke-static {v4, v3, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    goto :goto_131

    :cond_fb
    :goto_fb
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$2;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->existCCMprofile()Z
    invoke-static {v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Z

    move-result v2

    if-eqz v2, :cond_131

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mInternalHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1200()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_126

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Send message MSG_UPDATE_LOCK_STATUS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mInternalHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1200()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x14

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_130

    :cond_126
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "update lock status Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_130
    nop

    :cond_131
    :goto_131
    return-void
.end method
