.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;
.super Landroid/content/BroadcastReceiver;
.source "DLPManagerPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$100(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # invokes: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getDlpCacheHelper()Lcom/android/server/enterprise/dlp/DLPCacheHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$200(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/DLPCacheHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/dlp/DLPCacheHelper;->updateUserDLPCacheFromDB(Lcom/samsung/android/knox/ContextInfo;)Z

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v5

    if-eqz v5, :cond_f4

    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPProcessObserver:Lcom/android/server/enterprise/dlp/DLPProcessObserver;
    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$300(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/DLPProcessObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/dlp/DLPProcessObserver;->registerObserver()V

    iget-object v5, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$400(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v5

    const/16 v6, 0x10e

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_db

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BootCompleteReceiver: getting extended extensions for userId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "UID is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Extensions"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    invoke-static {v7}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$500(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v7

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v6, v8}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->sendSetExtensionEPMDCommand(Ljava/lang/String;I)V

    invoke-static {v6}, Lcom/android/server/enterprise/dlp/DLPUtils;->getMergedExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_db

    iget-object v8, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$500(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v8

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v7}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->setDLPExtension(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_db

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DLP : Extensions set at boot time in kernel for user: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_db
    const/16 v6, 0x118

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v6

    if-eqz v6, :cond_f4

    const-string v6, "AUDIT"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$1;->this$0:Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mServiceHelper:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    invoke-static {v7}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$500(Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    move-result-object v7

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v6, v8}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->sendSetDLPAuditEPMDCommand(II)V

    :cond_f4
    goto/16 :goto_22

    :cond_f6
    return-void
.end method
