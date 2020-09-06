.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$finishedReceiver:Landroid/content/IIntentReceiver;

.field final synthetic val$flags:I

.field final synthetic val$instantUserIds:[I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$targetPkg:Ljava/lang/String;

.field final synthetic val$userIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Landroid/content/IIntentReceiver;[I)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$userIds:[I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$extras:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$7;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/pm/PackageManagerService$7;->val$flags:I

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$7;->val$targetPkg:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$7;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$7;->val$instantUserIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    move-object/from16 v1, p0

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$7;->val$userIds:[I

    if-nez v2, :cond_13

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v2

    :goto_11
    move-object v10, v2

    goto :goto_16

    :cond_13
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$7;->val$userIds:[I

    goto :goto_11

    :goto_16
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$7;->val$action:Ljava/lang/String;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "GATE"

    const-string v3, "<GATE-M> APP_INSTALLED </GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :cond_2e
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$7;->val$action:Ljava/lang/String;

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string v2, "GATE"

    const-string v3, "<GATE-M> APP_UNINSTALLED </GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$7;->val$extras:Landroid/os/Bundle;

    if-eqz v3, :cond_57

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$7;->val$extras:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.UID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v2, 0x1

    :cond_57
    move/from16 v21, v2

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$7;->val$action:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$7;->val$pkg:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$7;->val$extras:Landroid/os/Bundle;

    iget v7, v1, Lcom/android/server/pm/PackageManagerService$7;->val$flags:I

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$7;->val$targetPkg:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$7;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    const/4 v11, 0x0

    move-object v3, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->doSendBroadcast(Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V
    invoke-static/range {v2 .. v11}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$7;->val$instantUserIds:[I

    if-eqz v2, :cond_96

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$7;->val$instantUserIds:[I

    # getter for: Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$4000()[I

    move-result-object v3

    if-eq v2, v3, :cond_96

    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$7;->val$action:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$7;->val$pkg:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$7;->val$extras:Landroid/os/Bundle;

    iget v2, v1, Lcom/android/server/pm/PackageManagerService$7;->val$flags:I

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$7;->val$targetPkg:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$7;->val$finishedReceiver:Landroid/content/IIntentReceiver;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$7;->val$instantUserIds:[I

    const/16 v20, 0x1

    move-object v12, v0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    # invokes: Lcom/android/server/pm/PackageManagerService;->doSendBroadcast(Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V
    invoke-static/range {v11 .. v20}, Lcom/android/server/pm/PackageManagerService;->access$3900(Lcom/android/server/pm/PackageManagerService;Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_96} :catch_97

    :cond_96
    goto :goto_98

    :catch_97
    move-exception v0

    :goto_98
    return-void
.end method
