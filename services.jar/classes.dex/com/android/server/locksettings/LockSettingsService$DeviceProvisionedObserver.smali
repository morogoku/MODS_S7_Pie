.class Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceProvisionedObserver"
.end annotation


# instance fields
.field private final mDeviceProvisionedUri:Landroid/net/Uri;

.field private mRegistered:Z

.field private final mUserSetupCompleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "device_provisioned"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mUserSetupCompleteUri:Landroid/net/Uri;

    return-void
.end method

.method private clearFrpCredentialIfOwnerNotSecure()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z
    invoke-static {v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->access$600(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    :cond_3b
    return-void

    :cond_3c
    goto :goto_e

    :cond_3d
    return-void
.end method

.method private isProvisioned()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    nop

    :cond_16
    return v2
.end method

.method private reportDeviceSetupComplete()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->reportDeviceSetupComplete()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "LockSettingsService"

    const-string v2, "Failure reporting to IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private updateRegistration()V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mRegistered:Z

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mUserSetupCompleteUri:Landroid/net/Uri;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_3b

    :cond_2e
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_3b
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "LockSettingsService"

    const-string v1, "Reporting device setup complete to IGateKeeperService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->reportDeviceSetupComplete()V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->clearFrpCredentialIfOwnerNotSecure()V

    goto :goto_2c

    :cond_1f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mUserSetupCompleteUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V
    invoke-static {v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->access$3300(Lcom/android/server/locksettings/LockSettingsService;I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onSystemReady()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    # getter for: Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$1400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    goto :goto_20

    :cond_10
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "LockSettingsService"

    const-string v1, "FRP credential disabled, reporting device setup complete to Gatekeeper immediately"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->reportDeviceSetupComplete()V

    :cond_20
    :goto_20
    return-void
.end method
