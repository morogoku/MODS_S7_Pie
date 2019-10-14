.class Lcom/android/server/net/NetworkPolicyManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_12

    return-void

    :cond_12
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x1002

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_c0

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigAllowedPackagesDuringRoamingReduction"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-eqz v8, :cond_94

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_94

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move v0, v7

    :goto_42
    move v11, v0

    array-length v0, v10

    if-ge v11, v0, :cond_94

    aget-object v0, v10, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :try_start_4d
    invoke-virtual {v9, v12, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8e

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-ne v13, v5, :cond_8e

    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package name: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "NetworkPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Apply Roaming Reduction Whitelist. uid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V
    invoke-static {v7, v13, v4, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;IIZ)V
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4d .. :try_end_8d} :catch_8f

    goto :goto_94

    :cond_8e
    goto :goto_90

    :catch_8f
    move-exception v0

    :goto_90
    add-int/lit8 v0, v11, 0x1

    const/4 v7, 0x0

    goto :goto_42

    :cond_94
    :goto_94
    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string v0, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_PACKAGE_ADDED for uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_b5
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V
    invoke-static {v0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    monitor-exit v7

    goto/16 :goto_18a

    :catchall_bd
    move-exception v0

    monitor-exit v7
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_bd

    throw v0

    :cond_c0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_d2

    return-void

    :cond_d2
    const-string v0, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_PACKAGE_REMOVED for uid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-ne v9, v4, :cond_111

    const-string v0, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove Roaming Reduction Whitelist. uid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V
    invoke-static {v0, v5, v4, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;IIZ)V

    :cond_111
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18a

    const-string/jumbo v0, "trafficmanager"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18a

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_12b
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRejectedDataRules:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    move v10, v0

    if-eqz v10, :cond_158

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRejectedDataRules:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_143
    .catchall {:try_start_12b .. :try_end_143} :catchall_187

    :try_start_143
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    monitor-exit v11
    :try_end_149
    .catchall {:try_start_143 .. :try_end_149} :catchall_155

    :try_start_149
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/os/INetworkManagementService;->setUidMobileDataRule(IZ)V
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_149 .. :try_end_152} :catch_153
    .catchall {:try_start_149 .. :try_end_152} :catchall_187

    goto :goto_158

    :catch_153
    move-exception v0

    goto :goto_158

    :catchall_155
    move-exception v0

    :try_start_156
    monitor-exit v11
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    :try_start_157
    throw v0

    :cond_158
    :goto_158
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRejectedWifiRules:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    move v11, v0

    if-eqz v11, :cond_185

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRejectedWifiRules:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_170
    .catchall {:try_start_157 .. :try_end_170} :catchall_187

    :try_start_170
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    monitor-exit v12
    :try_end_176
    .catchall {:try_start_170 .. :try_end_176} :catchall_182

    :try_start_176
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/os/INetworkManagementService;->setUidWifiRule(IZ)V
    :try_end_17f
    .catch Landroid/os/RemoteException; {:try_start_176 .. :try_end_17f} :catch_180
    .catchall {:try_start_176 .. :try_end_17f} :catchall_187

    goto :goto_185

    :catch_180
    move-exception v0

    goto :goto_185

    :catchall_182
    move-exception v0

    :try_start_183
    monitor-exit v12
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_182

    :try_start_184
    throw v0

    :cond_185
    :goto_185
    monitor-exit v7

    goto :goto_18a

    :catchall_187
    move-exception v0

    monitor-exit v7
    :try_end_189
    .catchall {:try_start_184 .. :try_end_189} :catchall_187

    throw v0

    :cond_18a
    :goto_18a
    return-void
.end method
