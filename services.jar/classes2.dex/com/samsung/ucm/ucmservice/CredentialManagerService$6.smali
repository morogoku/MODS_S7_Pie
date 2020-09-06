.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside mRefreshReceiver onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_a3

    const-string v1, "UcmService"

    const-string/jumbo v4, "onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2c
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V
    invoke-static {v1, v3, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_32

    goto :goto_4a

    :catch_32
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRefreshReceiver exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    :try_start_4a
    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->registerHALService()I

    move-result v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerHALService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_65} :catch_66

    goto :goto_7d

    :catch_66
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in registerHALService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    :try_start_7d
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->runSefTestForEseCommTA()V
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    const-string v1, "UcmService"

    const-string/jumbo v2, "runSefTestForEseCommTA executed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8a} :catch_8b

    goto :goto_a2

    :catch_8b
    move-exception v1

    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in runSefTestForEseCommTA : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a2
    goto :goto_e6

    :cond_a3
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result v1

    if-eqz v1, :cond_bf

    const-string v1, "UcmService"

    const-string v2, "Already UPSM is enabled nothing to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    :cond_bf
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z
    invoke-static {v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1402(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)Z

    const-string v1, "UcmService"

    const-string v2, "Already UPSM disabled -> enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    :cond_cd
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result v1

    if-eqz v1, :cond_e6

    const-string v1, "UcmService"

    const-string v4, "Already UPSM enabled -> disabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V
    invoke-static {v1, v3, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$6;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # setter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z
    invoke-static {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1402(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Z)Z

    :cond_e6
    :goto_e6
    return-void
.end method
