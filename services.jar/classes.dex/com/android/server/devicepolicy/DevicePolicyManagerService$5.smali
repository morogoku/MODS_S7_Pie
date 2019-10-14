.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "DevicePolicyManager"

    const-string/jumbo v1, "removeActiveAdminLocked : onRecieve() of ACTION_DEVICE_ADMIN_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeAdminArtifacts(Landroid/content/ComponentName;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removePackageIfRequired(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been removed as admin."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeAuditLogGroupSystem(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIEDMService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_50

    :try_start_46
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$adminReceiver:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;->val$userHandle:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V

    goto :goto_58

    :catch_4e
    move-exception v1

    goto :goto_59

    :cond_50
    const-string v1, "DevicePolicyManager"

    const-string/jumbo v2, "removeActiveAdminLocked() : passed EDMS.removeActiveAdminFromDpm() because edms is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_58} :catch_4e

    :goto_58
    goto :goto_75

    :goto_59
    nop

    const-string v2, "DevicePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove active admin from edm database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    return-void
.end method
