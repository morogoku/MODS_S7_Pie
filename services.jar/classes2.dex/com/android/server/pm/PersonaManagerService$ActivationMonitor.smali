.class Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivationMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;->getLicenseService()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-eqz v0, :cond_15

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V

    :cond_15
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method

.method private getLicenseService()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v1, "enterprise_license_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$5902(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/enterprise/license/EnterpriseLicenseService;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    :cond_15
    return-void
.end method


# virtual methods
.method public onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 6

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "onUpdateElm is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getKnoxMUMContainerPolicy()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyLicenseStatus(Ljava/lang/String;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    :cond_1f
    goto :goto_29

    :catch_20
    move-exception v0

    const-string v1, "PersonaManagerService"

    const-string/jumbo v2, "onUpdateElm() failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method

.method public onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 6

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "onUpdateKlm is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getKnoxMUMContainerPolicy()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyLicenseStatus(Ljava/lang/String;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_20

    :cond_1f
    goto :goto_29

    :catch_20
    move-exception v0

    const-string v1, "PersonaManagerService"

    const-string/jumbo v2, "onUpdateKlm() failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method
