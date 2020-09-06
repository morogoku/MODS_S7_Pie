.class Lcom/android/server/pm/PersonaServiceHelper$1;
.super Ljava/lang/Object;
.source "PersonaServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaServiceHelper;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;IILandroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageHandler;Lcom/android/server/pm/Settings;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$handler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pms:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$settings:Lcom/android/server/pm/Settings;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$PackageHandler;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/pm/IPackageDeleteObserver;Landroid/content/Context;)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$handler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iput p2, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$flags:I

    iput-object p4, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iput-object p6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$settings:Lcom/android/server/pm/Settings;

    iput-object p7, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iput-object p8, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$handler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v2, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$userId:I

    iget v3, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_17

    const/4 v2, -0x1

    :cond_17
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2c

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "PersonaServiceHelper"

    const-string v6, "This app uninstallation is not allowed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_4b

    :cond_2c
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$userId:I

    iget v8, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$flags:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->deletePackageXForKnox(Ljava/lang/String;II)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    const-string v6, "jp.co.mmbi.app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4b

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$settings:Lcom/android/server/pm/Settings;

    const-string v6, "android.uid.mmbi"

    const/16 v7, 0x2392

    invoke-virtual {v5, v6, v7, v4, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    :cond_4b
    :goto_4b
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    if-ltz v0, :cond_51

    move v3, v4

    nop

    :cond_51
    iget v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$userId:I

    invoke-static {v5, v3, v6}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    if-eqz v3, :cond_9e

    :try_start_5a
    const-string v3, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "return delete result to caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "returnCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_95} :catch_96

    goto :goto_9e

    :catch_96
    move-exception v3

    const-string v5, "PersonaServiceHelper"

    const-string v6, "Observer no longer exists."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    :goto_9e
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    return-void
.end method
