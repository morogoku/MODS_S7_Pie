.class Lcom/android/server/pm/PersonaServiceProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "PersonaServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "PersonaManagerService::Proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast received. Action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e5

    const-string v2, "PersonaManagerService::Proxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " started. Finding container service..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # invokes: Lcom/android/server/pm/PersonaServiceProxy;->findAndConnectToContainerService(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaServiceProxy;->access$100(Lcom/android/server/pm/PersonaServiceProxy;I)V

    const-string v2, "PersonaManagerService::Proxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking if "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is enabled COM container"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/pm/PersonaServiceProxy;->access$200(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;

    move-result-object v2

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/pm/PersonaServiceProxy;->access$200(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_7b

    :cond_7a
    const/4 v2, 0x0

    :goto_7b
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceProxy;->access$300(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_e3

    if-eqz v2, :cond_e3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_e3

    const-string v5, "PersonaManagerService::Proxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Switch to profile immediately for COM container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v5}, Lcom/android/server/pm/PersonaServiceProxy;->access$400(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/app/KeyguardManager;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-eqz v5, :cond_c4

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;
    invoke-static {v5}, Lcom/android/server/pm/PersonaServiceProxy;->access$500(Lcom/android/server/pm/PersonaServiceProxy;)Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->showScrim(Z)V

    :cond_c4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v5, v3}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_e3

    const-string v5, "PersonaManagerService::Proxy"

    const-string v6, "Switch to COM container failed since container service not running"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/pm/PersonaServiceProxy;->pendingCOMSwitch:Z
    invoke-static {v5, v6}, Lcom/android/server/pm/PersonaServiceProxy;->access$602(Lcom/android/server/pm/PersonaServiceProxy;Z)Z

    :cond_e3
    goto/16 :goto_1f0

    :cond_e5
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_197

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "PersonaManagerService::Proxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed User - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z
    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceProxy;->access$000(Lcom/android/server/pm/PersonaServiceProxy;)Z

    move-result v3

    if-nez v3, :cond_18f

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # invokes: Lcom/android/server/pm/PersonaServiceProxy;->isKnoxProfileExist()Z
    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceProxy;->access$700(Lcom/android/server/pm/PersonaServiceProxy;)Z

    move-result v3

    if-nez v3, :cond_18f

    const-string v3, "PersonaManagerService::Proxy"

    const-string v4, "No Knox profile exist on device so stopping all Container service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceProxy;->access$800(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_128
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceProxy;->access$900(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_18a

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceProxy;->access$900(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_18a

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaServiceProxy;->access$900(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_181

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ContainerServiceInfo;

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ContainerServiceWrapper;

    const-string v8, "PersonaManagerService::Proxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stopping Container service - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/server/ContainerServiceWrapper;->disconnect()Z

    goto :goto_14a

    :cond_181
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # getter for: Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/pm/PersonaServiceProxy;->access$900(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_18a
    monitor-exit v3

    goto :goto_196

    :catchall_18c
    move-exception v4

    monitor-exit v3
    :try_end_18e
    .catchall {:try_start_128 .. :try_end_18e} :catchall_18c

    throw v4

    :cond_18f
    const-string v3, "PersonaManagerService::Proxy"

    const-string v4, "Knox profile exist on device so not stopping Container service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_196
    goto :goto_1f0

    :cond_197
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f0

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "PersonaManagerService::Proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added User - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_1c7

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy$2;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    # invokes: Lcom/android/server/pm/PersonaServiceProxy;->findAndConnectToContainerService(I)V
    invoke-static {v4, v3}, Lcom/android/server/pm/PersonaServiceProxy;->access$100(Lcom/android/server/pm/PersonaServiceProxy;I)V

    goto :goto_1f0

    :cond_1c7
    const-string v4, "PersonaManagerService::Proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added User - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is a non-knox user, so disable Secure Folder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    const-string v5, "com.samsung.knox.securefolder"

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :cond_1f0
    :goto_1f0
    return-void
.end method
