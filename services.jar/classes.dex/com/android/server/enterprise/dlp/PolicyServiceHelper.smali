.class public Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
.super Ljava/lang/Object;
.source "PolicyServiceHelper.java"


# static fields
.field private static final ContentProviderRestrictingApps:[Ljava/lang/String;

.field protected static final DELIMITER:Ljava/lang/String; = ","

.field protected static final EMP_DLP_CMD_NOTIFY_DLP_FILE_OPEN:I = 0x4

.field protected static final EMP_DLP_CMD_NOTIFY_PROCESS_DIED:I = 0x1

.field protected static final EMP_DLP_CMD_SET_AUDITLOG_STATUS:I = 0x6

.field protected static final EMP_DLP_CMD_SET_EXPIRY_AFTER:I = 0x3

.field protected static final EMP_DLP_CMD_SET_EXTENSIONS:I = 0x5

.field protected static final EMP_DLP_CMD_SET_FILE_EXPIRY:I = 0x2

.field private static final ENTERPRISE_DLP_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DLP_MGMT"

.field private static final TAG:Ljava/lang/String; = "DLP_PolicyServiceHelper"

.field private static _instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;


# instance fields
.field private dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->_instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    const-string v0, "com.microsoft.office"

    const-string v1, "com.hancom.office.editor"

    const-string v2, "com.infraware.office"

    const-string v3, "com.mobisystems.editor"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->ContentProviderRestrictingApps:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    return-void
.end method

.method private enableClipboard(Lcom/samsung/android/knox/container/KnoxContainerManager;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/container/KnoxContainerManager;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_22
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromDisableClipboardBlackList(Ljava/util/List;)Z

    move-result v3

    return v3
.end method

.method private enableNetwork(Lcom/samsung/android/knox/container/KnoxContainerManager;Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/container/KnoxContainerManager;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/net/firewall/Firewall;->enableFirewall(Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v2

    if-eqz v2, :cond_34

    const-string v3, "DLP_PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "firewall.enableFirewall response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "firewall.enableFirewall response message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_34
    const-string v3, "DLP_PolicyServiceHelper"

    const-string v4, "Firewall response is null"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/AppIdentity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*:*;*;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "DLP_PolicyServiceHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rulesString["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_96
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-direct {p0, v3, v5}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getRuleArray(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/net/firewall/Firewall;->removeRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v6

    if-nez v6, :cond_a3

    return v1

    :cond_a3
    const/4 v7, 0x1

    array-length v8, v6

    move v9, v7

    move v7, v1

    :goto_a7
    if-ge v7, v8, :cond_bc

    aget-object v10, v6, v7

    if-eqz v9, :cond_b7

    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    if-ne v11, v12, :cond_b7

    const/4 v11, 0x1

    goto :goto_b8

    :cond_b7
    move v11, v1

    :goto_b8
    move v9, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_a7

    :cond_bc
    return v9
.end method

.method private getDLPManagerService()Lcom/android/server/DLPManagerService;
    .registers 2

    const-string/jumbo v0, "dlp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DLPManagerService;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    .registers 4

    const-class v0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->_instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;)V

    sput-object v1, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->_instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;

    :cond_e
    sget-object v1, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->_instance:Lcom/android/server/enterprise/dlp/PolicyServiceHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getRuleArray(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;",
            ")[",
            "Lcom/samsung/android/knox/net/firewall/FirewallRule;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_49

    if-nez p2, :cond_a

    goto :goto_49

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    :try_start_18
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_45

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    nop

    const-string v6, "*"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v6

    aput-object v6, v0, v3
    :try_end_41
    .catch Ljava/security/InvalidParameterException; {:try_start_18 .. :try_end_41} :catch_46

    :cond_41
    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_45
    return-object v1

    :catch_46
    move-exception v2

    return-object v1

    :cond_48
    return-object v0

    :cond_49
    :goto_49
    return-object v1
.end method

.method private revertPolicy(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 13

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;IJ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_67

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4e

    iget-object v5, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v5

    if-nez v5, :cond_32

    const-string v2, "DLP_PolicyServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Knox container manager is null:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_32
    const/4 v6, 0x0

    if-eqz p4, :cond_41

    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enableClipboard(Lcom/samsung/android/knox/container/KnoxContainerManager;Ljava/util/List;)Z

    move-result v6

    if-eqz v0, :cond_3e

    if-eqz v6, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v4

    :goto_3f
    move v0, v2

    goto :goto_4c

    :cond_41
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->enableNetwork(Lcom/samsung/android/knox/container/KnoxContainerManager;Ljava/util/List;)Z

    move-result v6

    if-eqz v0, :cond_4a

    if-eqz v6, :cond_4a

    goto :goto_4b

    :cond_4a
    move v2, v4

    :goto_4b
    move v0, v2

    :goto_4c
    nop

    goto :goto_6e

    :cond_4e
    const-string v2, "DLP_PolicyServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnterpriseKnoxManager is null:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_67
    const-string v2, "DLP_PolicyServiceHelper"

    const-string v3, "OldList is null"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6e
    return v0
.end method


# virtual methods
.method protected addPackagesToAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method protected checkCaller()Ljava/lang/String;
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DLP_PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller Uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected checkDLPCaller()Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->checkCaller()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLP_PolicyServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkDLPCaller(), performing validation, calling packagename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isPlatformOrProvider(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v3, "DLP_PolicyServiceHelper"

    const-string v4, "checkDLPCaller(). Called from non-platform, non-media app. Return false"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_2a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz v0, :cond_3b

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getAccessInfo(ILjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3b

    const/4 v1, 0x1

    :cond_3b
    const-string v4, "DLP_PolicyServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDLPCaller(). isSignaturePlatform : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDLPWhitelisted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method protected checkLaunchIntentForAccessDLPInternal(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .registers 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    if-eqz v2, :cond_140

    if-eqz v1, :cond_140

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_140

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_17

    goto/16 :goto_140

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :try_start_20
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    sget-object v8, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->ContentProviderRestrictingApps:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_32
    if-ge v11, v9, :cond_41

    aget-object v12, v8, v11

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3e

    const/4 v7, 0x1

    goto :goto_41

    :cond_3e
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    :cond_41
    :goto_41
    if-eqz v7, :cond_11f

    invoke-static {v6}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v8

    if-nez v8, :cond_4b

    goto/16 :goto_11f

    :cond_4b
    invoke-static {v6, v0}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->getAccessInfo(ILjava/lang/String;)I

    move-result v8

    const/16 v9, 0x10

    if-eq v8, v9, :cond_54

    return v3

    :cond_54
    const-string/jumbo v8, "media"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_99

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "@media"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_99

    const-string/jumbo v8, "downloads"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_99

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "@downloads"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    goto :goto_99

    :cond_95
    move-object/from16 v8, p0

    goto/16 :goto_11c

    :cond_99
    :goto_99
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_cf

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_ce} :catch_122

    move-object v4, v8

    :cond_cf
    move-object/from16 v8, p0

    :try_start_d1
    iget-object v9, v8, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v9, "_data"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v4

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_11c

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_119

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_119

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_119

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_119
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_11c} :catch_11d

    :cond_11c
    :goto_11c
    goto :goto_13f

    :catch_11d
    move-exception v0

    goto :goto_125

    :cond_11f
    :goto_11f
    move-object/from16 v8, p0

    return v3

    :catch_122
    move-exception v0

    move-object/from16 v8, p0

    :goto_125
    const-string v6, "DLP_PolicyServiceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkLaunchIntentForAccessDLPInternal Exception: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13f
    return v3

    :cond_140
    :goto_140
    move-object/from16 v8, p0

    return v3
.end method

.method protected enforceKnoxDLPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.permission.KNOX_DLP"

    const-string v3, "com.samsung.android.knox.permission.KNOX_DLP_MGMT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method protected feederToMdmMigration(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V
    .registers 16

    if-nez p2, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v2, "DLP_PolicyServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callerUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    if-ne v0, v2, :cond_106

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->isMdmActivated(I)Z

    move-result v3

    if-nez v3, :cond_125

    const-string v3, "DLP_PolicyServiceHelper"

    const-string/jumbo v4, "setDLPConfig: called by MDM - updating DBEntries for system and disabling the receiver"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_126

    :try_start_46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v1, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    const-string v6, "DLP_PolicyServiceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdminUid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/ SystemCallerUid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    iget-object v7, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "Activate"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_da

    const-string v9, "Activate"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_da

    const-string v9, "CLIPBOARD"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b5

    int-to-long v9, v5

    const/4 v11, 0x1

    invoke-direct {p0, v6, v9, v10, v11}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->revertPolicy(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v9

    move v8, v9

    const-string v9, "DLP_PolicyServiceHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Clipboard revert policy res : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    const-string v9, "NETWORK"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_da

    int-to-long v9, v5

    const/4 v11, 0x0

    invoke-direct {p0, v6, v9, v10, v11}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->revertPolicy(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v9

    move v8, v9

    const-string v9, "DLP_PolicyServiceHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Firewall revert policy res : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_da
    iget-object v9, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    int-to-long v10, v5

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->updateAdminUid(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v9

    const-string v10, "DLP_PolicyServiceHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdminUid updated for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " rows."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_46 .. :try_end_fc} :catchall_101

    :try_start_fc
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_125

    :catchall_101
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_106
    const-string v3, "DLP_PolicyServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDLPConfig: caller : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not owner for container: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_125} :catch_126

    :cond_125
    :goto_125
    goto :goto_15d

    :catch_126
    move-exception v0

    const-string v1, "DLP_PolicyServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDLPConfig Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDLPConfig Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->addDumpLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :goto_15d
    return-void
.end method

.method protected getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getDLPConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getIntValueForAuditEvents(Landroid/os/Bundle;)I
    .registers 4

    const/4 v0, 0x0

    const-string v1, "CREATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit8 v0, v0, 0x1

    :cond_b
    const-string v1, "OPEN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x2

    :cond_15
    const-string v1, "RENAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    or-int/lit8 v0, v0, 0x4

    :cond_1f
    const-string v1, "EXPIRED"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    or-int/lit8 v0, v0, 0x8

    :cond_29
    const-string v1, "UNAUTHORIZED"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    or-int/lit8 v0, v0, 0x10

    :cond_33
    return v0
.end method

.method protected getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 7

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string v1, "DLP_PolicyServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPackageMetaData: Application Meta data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_35

    return-object v1

    :cond_34
    goto :goto_50

    :catch_35
    move-exception v0

    const-string v1, "DLP_PolicyServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackagesFromAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getWhitelistApps(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isDLPKernelEnabled()Z
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/dev/sdp_dlp"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_26

    :catch_b
    move-exception v0

    const-string v1, "DLP_PolicyServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    const/4 v0, 0x1

    return v0

    :catch_28
    move-exception v0

    const-string v1, "DLP_PolicyServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method protected isFirewallRuleEnabled(Landroid/content/Context;[Ljava/lang/String;I)Z
    .registers 12

    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getFirewall()Lcom/samsung/android/knox/net/firewall/Firewall;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7a

    const/4 v3, 0x2

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/knox/net/firewall/Firewall;->getRules(ILcom/samsung/android/knox/net/firewall/FirewallRule$Status;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v3

    move v4, v2

    :goto_14
    array-length v5, v3

    if-ge v4, v5, :cond_79

    aget-object v5, v3, v4

    if-eqz v5, :cond_76

    const-string v5, "*"

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string v5, "*"

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    move v5, v2

    :goto_38
    array-length v6, p2

    if-ge v5, v6, :cond_76

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    const-string v2, "DLP_PolicyServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network is  blocked for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_6e
    const-string v5, "DLP_PolicyServiceHelper"

    const-string/jumbo v6, "pkgNames is null OR firewall rules are not fully deny rules"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_79
    goto :goto_82

    :cond_7a
    const-string v3, "DLP_PolicyServiceHelper"

    const-string/jumbo v4, "firewallPolicy is null"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_82
    return v2
.end method

.method protected isMdmActivated(I)Z
    .registers 16

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->getPolicyConfigOwners()Landroid/util/SparseLongArray;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_5c

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5b

    invoke-virtual {v1, v4}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    if-ne p1, v5, :cond_58

    invoke-virtual {v1, v5}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-virtual {v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v8

    invoke-static {v5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    int-to-long v9, v9

    const-string v11, "DLP_PolicyServiceHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getPolicyOwner:: For containerId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", actual ownerId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/knox/dlp/log/DLPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v11, v6, v9

    if-nez v11, :cond_56

    const/4 v3, 0x1

    nop

    :cond_56
    move v0, v3

    goto :goto_5b

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_5b
    :goto_5b
    goto :goto_63

    :cond_5c
    const-string v2, "DLP_PolicyServiceHelper"

    const-string v3, "No config entry found in DB !"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_63
    return v0
.end method

.method protected isPlatformOrProvider(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_d

    :cond_7
    iget-object v1, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :goto_d
    if-eqz p1, :cond_22

    if-eqz v1, :cond_22

    const-string v2, "android"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "com.android.providers.media"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    const/4 v0, 0x1

    :cond_22
    return v0
.end method

.method protected removePackagesFromAllowWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->dlpHelper:Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmDLPStorageHelper;->removeWhitelistApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method protected sendSetDLPAuditEPMDCommand(II)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_24

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected sendSetExtensionEPMDCommand(Ljava/lang/String;I)V
    .registers 12

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/server/enterprise/dlp/DLPUtils;->getDelimFormattedList(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1b
    iget-object v3, p0, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/EnterprisePartitionManager;->sendDLPCommand(II[Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_37

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_37
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected setDLPAdminExpiry(II)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/DLPManagerService;->setDLPExpiry(II)Z

    move-result v3
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_13
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected setDLPExtension(ILjava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/DLPManagerService;->setDLPExtensions(ILjava/lang/String;)Z

    move-result v3
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :catchall_13
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected setDLPLock(IZ)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p2, :cond_12

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/DLPManagerService;->lockDLP(I)Z

    move-result v3

    goto :goto_1b

    :catchall_10
    move-exception v3

    goto :goto_21

    :cond_12
    nop

    invoke-direct {p0}, Lcom/android/server/enterprise/dlp/PolicyServiceHelper;->getDLPManagerService()Lcom/android/server/DLPManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/DLPManagerService;->unlockDLP(I)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_10

    :goto_1b
    move v2, v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v2

    :goto_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
