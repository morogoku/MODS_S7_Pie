.class Lcom/android/server/pm/PersonaLegacyStateMonitor$1;
.super Landroid/os/ContainerStateReceiver;
.source "PersonaLegacyStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaLegacyStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # getter for: Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$200(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # getter for: Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$300(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v3, :cond_74

    aget-object v5, v2, v4

    iget-object v6, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForRemoveContainer(Ljava/lang/String;II)V
    invoke-static {v6, v5, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$400(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    const-string v6, "PersonaManagerService::LegacyStateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending container removed intent to MDM for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Package is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_58
    iget-object v3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForRemoveContainer(Ljava/lang/String;II)V
    invoke-static {v3, v4, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$400(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    const-string v3, "PersonaManagerService::LegacyStateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending container removed intent to MDM for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # getter for: Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$100(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, p2, v2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_4b

    :cond_14
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_4b

    :cond_24
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_34

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_4b

    :cond_34
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_44

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_4b

    :cond_44
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, p2, v2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :goto_4b
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # getter for: Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$100(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, p2, v2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_43

    :cond_14
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_43

    :cond_24
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_34

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_43

    :cond_34
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_43

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method
