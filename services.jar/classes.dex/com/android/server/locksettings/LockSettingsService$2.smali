.class Lcom/android/server/locksettings/LockSettingsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_111

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1b

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V
    invoke-static {v3, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$1500(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    :cond_1b
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_81

    const-string v3, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnUserAdded(): Setup SeparateCredential for DualDAR User : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordPerUserLocked(I)V
    invoke-static {v3, v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1600(Lcom/android/server/locksettings/LockSettingsService;I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->access$1700(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    :try_start_46
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V
    invoke-static {v3, v0, v4}, Lcom/android/server/locksettings/LockSettingsService;->access$1800(Lcom/android/server/locksettings/LockSettingsService;I[B)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V
    invoke-static {v3, v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1900(Lcom/android/server/locksettings/LockSettingsService;I)V

    const-string v3, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnUserAdded(): Successfully added OLK to vold for DualDAR User : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_66} :catch_67

    goto :goto_81

    :catch_67
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnUserAdded(): Failure in adding OLK to vold for DualDAR User : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :goto_81
    const-string v3, "LockSettingsService.SDP"

    const-string v5, "Became aware of user %d added"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isEnterpriseUser(I)Z
    invoke-static {v3, v0}, Lcom/android/server/locksettings/LockSettingsService;->access$900(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v3

    if-eqz v3, :cond_f9

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordPerUserLocked(I)V
    invoke-static {v3, v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1600(Lcom/android/server/locksettings/LockSettingsService;I)V

    const-string v3, "LockSettingsService.SDP"

    const-string v5, "SP is enabled for user %d : %s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/server/locksettings/LockSettingsService;->access$1700(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isLegacyContainerUser(I)Z
    invoke-static {v3, v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2000(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v3

    if-eqz v3, :cond_f9

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->access$1700(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    const-string v3, "LockSettingsService.SDP"

    const-string v4, "Separate challenge is enabled for user %d : %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1700(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_10c

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_10d

    :cond_10c
    const/4 v3, -0x1

    :goto_10d
    invoke-virtual {v1, v0, v3}, Landroid/security/KeyStore;->onUserAdded(II)V

    goto :goto_144

    :cond_111
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_144

    :cond_12b
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_144

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$2;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1500(Lcom/android/server/locksettings/LockSettingsService;IZ)V

    :cond_144
    :goto_144
    return-void
.end method
