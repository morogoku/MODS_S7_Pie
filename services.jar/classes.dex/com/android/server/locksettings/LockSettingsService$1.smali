.class Lcom/android/server/locksettings/LockSettingsService$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(ILcom/android/server/SdpManagerService;)V
    .registers 3

    nop

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    return-void
.end method

.method static synthetic lambda$run$1(ILcom/android/server/SdpManagerService;)V
    .registers 3

    nop

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    return-void
.end method

.method static synthetic lambda$run$2(Landroid/content/pm/UserInfo;Lcom/android/server/SdpManagerService;)V
    .registers 3

    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Lcom/android/server/SdpManagerService;->unlockUser(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$300(Lcom/android/server/locksettings/LockSettingsService;I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_62

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z
    invoke-static {v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_5f

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_5f

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;Z)V
    invoke-static {v7, v6, v4}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;Z)V

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_62
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    :cond_7c
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-nez v2, :cond_9f

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$800(Lcom/android/server/locksettings/LockSettingsService;I)V

    :cond_9f
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_c1

    const-string v1, "LockSettingsService.SDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking user - Dualdar user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_233

    :cond_c1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$900(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_198

    const-string v2, "LockSettingsService.SDP"

    const-string v3, "Unlocking user - Check user %d security status : %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v7, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->getSecurityStatus(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->access$1000(Lcom/android/server/locksettings/LockSettingsService;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-nez v2, :cond_233

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->hasLegacyCredential(I)Z
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$1100(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_115

    const-string v2, "LockSettingsService.SDP"

    const-string v3, "Unlocking user - User %d has legacy credential"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    :cond_115
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->hasNoneTypeCredential(I)Z
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$1200(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_145

    const-string v2, "LockSettingsService.SDP"

    const-string v3, "Unlocking user - User %d has non type credential"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    new-instance v4, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$1$xhduRNGz7vpWmwvXM2rE1ZqclQ8;

    invoke-direct {v4, v3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$1$xhduRNGz7vpWmwvXM2rE1ZqclQ8;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_16a

    :cond_145
    const-string v2, "LockSettingsService.SDP"

    const-string v3, "Unlocking user - User %d has no credential"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    move-result-object v2

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    new-instance v4, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$1$JIDqzGsXdXVsh87xIm1WA6eNymM;

    invoke-direct {v4, v3}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$1$JIDqzGsXdXVsh87xIm1WA6eNymM;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_16a
    const-string v2, "LockSettingsService.SDP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unlocking user - Set device locked state for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "trust"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/TrustManager;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    invoke-virtual {v2, v3, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    goto/16 :goto_233

    :cond_198
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    if-nez v1, :cond_233

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_233

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService$1;->val$userId:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z
    invoke-static {v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-nez v1, :cond_233

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_233

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-eqz v3, :cond_231

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v3

    if-nez v3, :cond_1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Secure folder user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not running yet when on unlock system user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_231

    :cond_1ec
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_231

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unlock secure folder user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/SDPLog;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_214
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService$1;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->getSdpManagerService()Ljava/util/Optional;
    invoke-static {v5}, Lcom/android/server/locksettings/LockSettingsService;->access$1300(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$1$euLrOHuFNQxPxeA58PJQOW-PGyQ;

    invoke-direct {v6, v2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$1$euLrOHuFNQxPxeA58PJQOW-PGyQ;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_222} :catch_225
    .catchall {:try_start_214 .. :try_end_222} :catchall_223

    goto :goto_229

    :catchall_223
    move-exception v1

    goto :goto_22d

    :catch_225
    move-exception v5

    :try_start_226
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_229
    .catchall {:try_start_226 .. :try_end_229} :catchall_223

    :goto_229
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_231

    :goto_22d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_231
    :goto_231
    goto/16 :goto_1b0

    :cond_233
    :goto_233
    return-void
.end method
