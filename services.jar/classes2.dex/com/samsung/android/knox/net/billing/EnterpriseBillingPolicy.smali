.class public Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;
.super Ljava/lang/Object;
.source "EnterpriseBillingPolicy.java"


# static fields
.field public static final ALL_APPS_IN_SCOPE:Ljava/lang/String; = "*"


# instance fields
.field private billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private policy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iput-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->policy:Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;

    iput-object p1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private declared-synchronized getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    if-nez v0, :cond_29

    const-string v0, "enterprise_billing_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created Client : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object v0

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activateProfile(Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.activateProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->activateProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_1c

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    return v0
.end method

.method public allowRoaming(Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.allowRoaming"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->allowRoaming(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_1c

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    return v0
.end method

.method public bindAppsToProfile(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.bindAppsToProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_35

    if-eqz p2, :cond_2c

    const-string v1, "*"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->enableProfileForContainer(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_35

    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->enableProfileForApps(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_36

    move v0, v1

    :cond_35
    :goto_35
    goto :goto_3a

    :catch_36
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3a
    return v0
.end method

.method public bindVpnToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.bindVpnToProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->addVpnToBillingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_1c

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    return v0
.end method

.method public createProfile(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.createProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->addProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_1c

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    return v0
.end method

.method public getAppsBoundToProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.getAppsBoundToProfile"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->getApplicationsUsingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    move-object v0, v1

    :cond_18
    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return-object v0
.end method

.method public getAvailableProfiles()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.getAvailableProfiles"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->getAvailableProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    move-object v0, v1

    :cond_18
    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return-object v0
.end method

.method public getBoundedProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.getBoundedProfile"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v1, "*"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->getProfileForContainer(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v1

    move-object v0, v1

    goto :goto_2a

    :cond_21
    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->getProfileForApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_2b

    move-object v0, v1

    :cond_2a
    :goto_2a
    goto :goto_2f

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2f
    return-object v0
.end method

.method public getProfileDetails(Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.getProfileDetails"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->getProfileDetails(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    move-object v0, v1

    :cond_18
    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return-object v0
.end method

.method public isProfileActive(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.isProfileActive"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->isProfileActive(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    move v0, v1

    :cond_18
    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return v0
.end method

.method public isRoamingAllowed(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.isRoamingAllowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->isRoamingAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_19

    move v0, v1

    :cond_18
    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return v0
.end method

.method public removeProfile(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.removeProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->removeProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_1c

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    return v0
.end method

.method public unbindAppsFromProfile(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.unbindAppsFromProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_35

    if-eqz p2, :cond_2c

    const-string v1, "*"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->disableProfileForContainer(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    move v0, v1

    goto :goto_35

    :cond_2c
    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p2}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->disableProfileForApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_34} :catch_36

    move v0, v1

    :cond_35
    :goto_35
    goto :goto_3a

    :catch_36
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3a
    return v0
.end method

.method public unbindVpnFromProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.unbindVpnFromProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->removeVpnFromBillingProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_1c

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    return v0
.end method

.method public updateProfile(Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EnterpriseBillingPolicy.updateProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->getEnterpriseBillingService()Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->billingPolicyService:Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/billing/EnterpriseBillingPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/net/billing/IEnterpriseBillingPolicy;->updateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/billing/EnterpriseBillingProfile;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_18

    move v0, v1

    :cond_17
    goto :goto_1c

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1c
    return v0
.end method
