.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DEACTIVATE_LICENSE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field private static final KLMS_AGENT_PKG:Ljava/lang/String; = "com.samsung.klmsagent"

.field private static final KLMS_PACKAGE_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PACKAGE_REMOVED_INTERNAL"

.field private static final MY_PID:I

.field private static final SUCCESS_STATUS_RESULT:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static final UMCpackageName:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private allowedCaller:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mELMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyDeactivateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKlmElmChangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/license/IActivationKlmElmObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .registers 11

    invoke-direct {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    const-string v1, "com.sec.knox.kccagent"

    const-string v2, "com.sec.knox.klat.agent"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x1

    if-eqz p2, :cond_cb

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_cb

    :cond_b
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    :cond_12
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v3, :cond_3d

    aget-object v6, v2, v5

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller is approved : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_3d
    :goto_3d
    if-nez v1, :cond_9f

    const-string/jumbo v2, "ro.product_ship"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6d

    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller is approved by permission : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6d
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9f

    const-string v0, "EnterpriseLicenseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller is not approved (caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_9f
    :try_start_9f
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ae

    return v0

    :cond_ae
    const-string v0, "EnterpriseLicenseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signature mismatched! caller : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_c5} :catch_c6

    return v4

    :catch_c6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :cond_cb
    :goto_cb
    const-string v1, "EnterpriseLicenseService"

    const-string v2, "caller is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .registers 6

    const-string/jumbo v0, "pkgName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private enforcePermission()V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    move-exception v1

    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1a} :catch_1c

    nop

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_34
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static declared-synchronized getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .registers 2

    const-class v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-nez v1, :cond_14

    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    :cond_14
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 9
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

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_6b

    const/4 v1, 0x0

    if-eqz p0, :cond_6a

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_6a

    :cond_1a
    const/4 v2, 0x0

    move-object v3, v1

    :try_start_1c
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    const-string/jumbo v6, "pkgName"

    const-string/jumbo v7, "rightsObject"

    invoke-virtual {v4, v5, v6, p0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_5d

    if-eqz v4, :cond_5c

    nop

    :try_start_2d
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/license/RightsObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_35

    move-object v1, v5

    goto :goto_3e

    :catch_35
    move-exception v5

    :try_start_36
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getPermissions() may new namespace "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    if-nez v1, :cond_50

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/license/RightsObject;

    move-object v2, v5

    const-string v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getPermissions() - deserializeObject"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_50
    invoke-virtual {v1}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;

    move-result-object v5

    move-object v2, v5

    :goto_55
    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v5
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5b} :catch_5d

    move-object v3, v5

    :cond_5c
    goto :goto_69

    :catch_5d
    move-exception v1

    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getPermissions() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_69
    return-object v3

    :cond_6a
    :goto_6a
    return-object v1

    :cond_6b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Caller is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez v0, :cond_11

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isLicenseLocked(I)Z
    .registers 7

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAttributes(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLicenseLocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private notifyContainerLicenseStatus(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifyLicenseStatus(Ljava/lang/String;)Z

    goto :goto_17

    :cond_f
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "failed to get KnoxMUMContainerPolicy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method private notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "rightsObject"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_6a

    const/4 v0, 0x1

    :try_start_9
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pkgName"

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    move-object v2, v5

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_28

    const-string v5, "EnterpriseLicenseService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAdminPermissions() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5b} :catch_5d

    goto :goto_28

    :cond_5c
    goto :goto_69

    :catch_5d
    move-exception v0

    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "updateAdminPermissions() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_69
    return-void

    :cond_6a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_5
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "activateKnoxLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_33e

    const/16 v8, 0x320

    const/4 v9, 0x0

    if-eqz v2, :cond_e4

    :try_start_2a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_e4

    :cond_36
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    const/4 v0, 0x1

    move-object v5, v2

    :cond_4e
    if-nez v0, :cond_62

    array-length v11, v10

    move v12, v9

    :goto_52
    if-ge v12, v11, :cond_62

    aget-object v13, v10, v12

    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5a} :catch_df
    .catchall {:try_start_2a .. :try_end_5a} :catchall_da

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5f

    const/4 v0, 0x1

    goto :goto_62

    :cond_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_52

    :cond_62
    :goto_62
    move v11, v0

    if-nez v11, :cond_ea

    const/16 v12, 0xcc

    :try_start_67
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-eqz v13, :cond_a0

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_9b} :catch_a1
    .catchall {:try_start_67 .. :try_end_9b} :catchall_da

    :try_start_9b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_33e

    monitor-exit p0

    return-void

    :cond_a0
    goto :goto_a5

    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a5
    array-length v0, v10

    const/4 v9, 0x0

    :goto_a7
    if-ge v9, v0, :cond_d5

    aget-object v13, v10, v9

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_d0} :catch_df
    .catchall {:try_start_a2 .. :try_end_d0} :catchall_da

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x320

    goto :goto_a7

    :cond_d5
    :try_start_d5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_33e

    monitor-exit p0

    return-void

    :catchall_da
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_33a

    :catch_df
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_298

    :cond_e4
    :goto_e4
    :try_start_e4
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v5, v2

    :cond_ea
    if-eqz v2, :cond_283

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_283

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_fc} :catch_295
    .catchall {:try_start_e4 .. :try_end_fc} :catchall_290

    if-nez v0, :cond_106

    :try_start_fe
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    move-object/from16 v8, p2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_105} :catch_df
    .catchall {:try_start_fe .. :try_end_105} :catchall_da

    goto :goto_108

    :cond_106
    move-object/from16 v8, p2

    :goto_108
    :try_start_108
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v9
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_117} :catch_295
    .catchall {:try_start_108 .. :try_end_117} :catchall_290

    if-nez v9, :cond_12d

    :try_start_119
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v9

    if-eqz v9, :cond_126

    goto :goto_12d

    :cond_126
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_12b} :catch_df
    .catchall {:try_start_119 .. :try_end_12b} :catchall_da

    move-object v0, v9

    goto :goto_130

    :cond_12d
    :goto_12d
    :try_start_12d
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, v9

    :goto_130
    const/4 v9, 0x0

    iget-object v10, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/SemPersonaManager;

    move-object v9, v10

    const-string/jumbo v10, "user"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v9, :cond_18b

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v15

    move-object v14, v15

    if-eqz v14, :cond_18b

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_18b

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_15f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_18b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_169} :catch_295
    .catchall {:try_start_12d .. :try_end_169} :catchall_290

    move/from16 v17, v4

    :try_start_16b
    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v16

    if-nez v16, :cond_187

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v16

    if-nez v16, :cond_187

    invoke-direct {v1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v16

    if-nez v16, :cond_187

    const/4 v11, 0x1

    move v13, v4

    :cond_187
    nop

    move/from16 v4, v17

    goto :goto_15f

    :cond_18b
    move/from16 v17, v4

    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "device_policy"

    invoke-virtual {v4, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    if-eqz v11, :cond_1ce

    if-eqz v4, :cond_1ce

    invoke-virtual {v4, v13}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_1ce

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1ce

    const/4 v12, 0x1

    const-string v15, "EnterpriseLicenseService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v9

    const-string v9, "activateKnoxLicense.["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] basic container exists. userId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d0

    :cond_1ce
    move-object/from16 v18, v9

    :goto_1d0
    const/4 v8, 0x0

    if-nez v12, :cond_218

    if-eqz v4, :cond_218

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v9

    if-eqz v9, :cond_218

    const/4 v14, 0x0

    invoke-direct {v1, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v9

    if-nez v9, :cond_218

    const-string v9, "EnterpriseLicenseService"

    const-string v15, "activateKnoxLicense. isDeviceManaged."

    invoke-static {v9, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_218

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_218

    const-string v15, "EnterpriseLicenseService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "activateKnoxLicense. DeviceOwner["

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    goto :goto_21a

    :cond_218
    move-object/from16 v19, v4

    :goto_21a
    if-nez v12, :cond_24e

    if-eqz v8, :cond_21f

    goto :goto_24e

    :cond_21f
    const-string v4, "EnterpriseLicenseService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activateKnoxLicense. from "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.KNOX_LICENSE_REGISTRATION_INTERNAL"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v9, v4, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_27e

    :cond_24e
    :goto_24e
    const-string v4, "EnterpriseLicenseService"

    const-string v9, "activateKnoxLicense needs to confirm."

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.KNOX_LICENSE_ACATIVATE_DIALOG_INTERNAL"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "destUserId"

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-virtual {v4, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "targetUserId"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_27d} :catch_28e
    .catchall {:try_start_16b .. :try_end_27d} :catchall_339

    nop

    :goto_27e
    :try_start_27e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_281
    .catchall {:try_start_27e .. :try_end_281} :catchall_33e

    monitor-exit p0

    return-void

    :cond_283
    move/from16 v17, v4

    :try_start_285
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v4, "package name is null"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_28d} :catch_28e
    .catchall {:try_start_285 .. :try_end_28d} :catchall_339

    goto :goto_2a2

    :catch_28e
    move-exception v0

    goto :goto_298

    :catchall_290
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_33a

    :catch_295
    move-exception v0

    move/from16 v17, v4

    :goto_298
    :try_start_298
    const-string v4, "EnterpriseLicenseService"

    const-string v8, "activateKnoxLicense() failed."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a2
    .catchall {:try_start_298 .. :try_end_2a2} :catchall_339

    :goto_2a2
    :try_start_2a2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/16 v0, 0x12d

    if-nez v2, :cond_2f2

    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f1

    array-length v8, v4

    if-lez v8, :cond_2f1

    array-length v8, v4

    move-wide v9, v6

    const/4 v6, 0x0

    :goto_2bc
    if-ge v6, v8, :cond_2f0

    aget-object v7, v4, v6

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v13, "fail"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v13, 0x320

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v11, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move-wide v9, v12

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2bc

    :cond_2f0
    move-wide v6, v9

    :cond_2f1
    goto :goto_337

    :cond_2f2
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v9, "fail"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v8, 0x320

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_325

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v6, v8

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_325
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    move-wide v6, v8

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_337
    .catchall {:try_start_2a2 .. :try_end_337} :catchall_33e

    :goto_337
    monitor-exit p0

    return-void

    :catchall_339
    move-exception v0

    :goto_33a
    :try_start_33a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_33e
    .catchall {:try_start_33a .. :try_end_33e} :catchall_33e

    :catchall_33e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateKnoxLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_5
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "activateLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_22a

    const/16 v8, 0x320

    const/4 v9, 0x0

    if-eqz v2, :cond_e5

    :try_start_2a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_e5

    :cond_36
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    const/4 v0, 0x1

    move-object v5, v2

    :cond_4e
    if-nez v0, :cond_62

    array-length v11, v10

    move v12, v9

    :goto_52
    if-ge v12, v11, :cond_62

    aget-object v13, v10, v12

    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5a} :catch_df
    .catchall {:try_start_2a .. :try_end_5a} :catchall_da

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5f

    const/4 v0, 0x1

    goto :goto_62

    :cond_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_52

    :cond_62
    :goto_62
    move v11, v0

    if-nez v11, :cond_eb

    const/16 v12, 0xcc

    :try_start_67
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-eqz v13, :cond_a0

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_9b} :catch_a1
    .catchall {:try_start_67 .. :try_end_9b} :catchall_da

    :try_start_9b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_22a

    monitor-exit p0

    return-void

    :cond_a0
    goto :goto_a5

    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a5
    array-length v0, v10

    const/4 v9, 0x0

    :goto_a7
    if-ge v9, v0, :cond_d5

    aget-object v13, v10, v9

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_d0} :catch_181
    .catchall {:try_start_a2 .. :try_end_d0} :catchall_da

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x320

    goto :goto_a7

    :cond_d5
    :try_start_d5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_22a

    monitor-exit p0

    return-void

    :catchall_da
    move-exception v0

    move-object/from16 v11, p2

    goto/16 :goto_226

    :catch_df
    move-exception v0

    move-object/from16 v11, p2

    move v10, v9

    goto/16 :goto_185

    :cond_e5
    :goto_e5
    :try_start_e5
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v5, v2

    :cond_eb
    if-eqz v2, :cond_173

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_173

    const/4 v0, 0x0

    if-eqz p4, :cond_fe

    move-object/from16 v0, p4

    const/4 v10, 0x0

    goto :goto_113

    :cond_fe
    const-string/jumbo v9, "package"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v9
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_109} :catch_181
    .catchall {:try_start_e5 .. :try_end_109} :catchall_da

    const/4 v10, 0x0

    :try_start_10a
    invoke-interface {v9, v2, v10, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_113

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v0, v12

    :cond_113
    :goto_113
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_123

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_11d} :catch_16f
    .catchall {:try_start_10a .. :try_end_11d} :catchall_da

    move-object/from16 v11, p2

    :try_start_11f
    invoke-interface {v9, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_125

    :cond_123
    move-object/from16 v11, p2

    :goto_125
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v12

    if-nez v12, :cond_14a

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v12

    if-eqz v12, :cond_143

    goto :goto_14a

    :cond_143
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v9, v12

    goto :goto_14d

    :cond_14a
    :goto_14a
    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v9, v12

    :goto_14d
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_REGISTRATION_INTERNAL"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v13, v12, v9, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_16a} :catch_17f
    .catchall {:try_start_11f .. :try_end_16a} :catchall_225

    :try_start_16a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_22a

    monitor-exit p0

    return-void

    :catch_16f
    move-exception v0

    move-object/from16 v11, p2

    goto :goto_185

    :cond_173
    move-object/from16 v11, p2

    const/4 v10, 0x0

    :try_start_176
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v9, "package name is null"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_17e} :catch_17f
    .catchall {:try_start_176 .. :try_end_17e} :catchall_225

    goto :goto_18f

    :catch_17f
    move-exception v0

    goto :goto_185

    :catch_181
    move-exception v0

    move-object/from16 v11, p2

    const/4 v10, 0x0

    :goto_185
    :try_start_185
    const-string v9, "EnterpriseLicenseService"

    const-string v12, "activateLicense() failed."

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18f
    .catchall {:try_start_185 .. :try_end_18f} :catchall_225

    :goto_18f
    :try_start_18f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v2, :cond_1dc

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1db

    array-length v12, v9

    if-lez v12, :cond_1db

    array-length v12, v9

    :goto_1a5
    if-ge v10, v12, :cond_1db

    aget-object v13, v9, v10

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v0, "fail"

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v15, 0x12d

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x320

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-wide v6, v15

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a5

    :cond_1db
    goto :goto_223

    :cond_1dc
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v10, "fail"

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v10, 0x12d

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v10, 0x320

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_211

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v6, v9

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_211
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-wide v6, v9

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_223
    .catchall {:try_start_18f .. :try_end_223} :catchall_22a

    :goto_223
    monitor-exit p0

    return-void

    :catchall_225
    move-exception v0

    :goto_226
    :try_start_226
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_22a
    .catchall {:try_start_226 .. :try_end_22a} :catchall_22a

    :catchall_22a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateLicenseForUMC(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized deActivateKnoxLicense(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    monitor-enter p0

    :try_start_5
    const-string v0, "EnterpriseLicenseService"

    const-string v3, "deActivateKnoxLicense()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v3, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_1ff

    const/16 v8, 0x322

    const/4 v9, 0x0

    if-eqz v2, :cond_e4

    :try_start_2a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_e4

    :cond_36
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x0

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    const/4 v0, 0x1

    move-object v5, v2

    :cond_4e
    if-nez v0, :cond_62

    array-length v11, v10

    move v12, v9

    :goto_52
    if-ge v12, v11, :cond_62

    aget-object v13, v10, v12

    invoke-direct {v1, v2, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5a} :catch_df
    .catchall {:try_start_2a .. :try_end_5a} :catchall_da

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5f

    const/4 v0, 0x1

    goto :goto_62

    :cond_5f
    add-int/lit8 v12, v12, 0x1

    goto :goto_52

    :cond_62
    :goto_62
    move v11, v0

    if-nez v11, :cond_ea

    const/16 v12, 0xcc

    :try_start_67
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13

    if-eqz v13, :cond_a0

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v9, "fail"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v14, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_9b} :catch_a1
    .catchall {:try_start_67 .. :try_end_9b} :catchall_da

    :try_start_9b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_1ff

    monitor-exit p0

    return-void

    :cond_a0
    goto :goto_a5

    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a5
    array-length v0, v10

    const/4 v9, 0x0

    :goto_a7
    if-ge v9, v0, :cond_d5

    aget-object v13, v10, v9

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v8, "fail"

    invoke-virtual {v14, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v14, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x322

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_d0} :catch_df
    .catchall {:try_start_a2 .. :try_end_d0} :catchall_da

    add-int/lit8 v9, v9, 0x1

    const/16 v8, 0x322

    goto :goto_a7

    :cond_d5
    :try_start_d5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_1ff

    monitor-exit p0

    return-void

    :catchall_da
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_1fb

    :catch_df
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_159

    :cond_e4
    :goto_e4
    :try_start_e4
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v5, v2

    :cond_ea
    if-eqz v2, :cond_14d

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14d

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_100} :catch_df
    .catchall {:try_start_e4 .. :try_end_100} :catchall_da

    move-object/from16 v8, p2

    :try_start_102
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    :cond_106
    move-object/from16 v8, p2

    :goto_108
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->exists(I)Z

    move-result v9

    if-nez v9, :cond_12d

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isManagedProfile(I)Z

    move-result v9

    if-eqz v9, :cond_126

    goto :goto_12d

    :cond_126
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, v9

    goto :goto_130

    :cond_12d
    :goto_12d
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, v9

    :goto_130
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.KNOX_LICENSE_DEACTIVATION_INTERNAL"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.sec.MDM_LICENSE_INTERNAL"

    invoke-virtual {v10, v9, v0, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_148} :catch_158
    .catchall {:try_start_102 .. :try_end_148} :catchall_1fa

    :try_start_148
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_1ff

    monitor-exit p0

    return-void

    :cond_14d
    move-object/from16 v8, p2

    :try_start_14f
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v9, "package name is null"

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_157} :catch_158
    .catchall {:try_start_14f .. :try_end_157} :catchall_1fa

    goto :goto_163

    :catch_158
    move-exception v0

    :goto_159
    :try_start_159
    const-string v9, "EnterpriseLicenseService"

    const-string v10, "deActivateKnoxLicense() failed."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_163
    .catchall {:try_start_159 .. :try_end_163} :catchall_1fa

    :goto_163
    :try_start_163
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/16 v0, 0x12d

    if-nez v2, :cond_1b3

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b1

    array-length v10, v9

    if-lez v10, :cond_1b1

    array-length v10, v9

    move-wide v11, v6

    const/4 v6, 0x0

    :goto_17d
    if-ge v6, v10, :cond_1b2

    aget-object v7, v9, v6

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v15, "fail"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v15, 0x322

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v13, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-wide v11, v14

    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v13, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_17d

    :cond_1b1
    move-wide v11, v6

    :cond_1b2
    goto :goto_1f8

    :cond_1b3
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    const-string/jumbo v11, "fail"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    const/16 v10, 0x322

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e6

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v6, v10

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1e6
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-wide v11, v10

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1f8
    .catchall {:try_start_163 .. :try_end_1f8} :catchall_1ff

    :goto_1f8
    monitor-exit p0

    return-void

    :catchall_1fa
    move-exception v0

    :goto_1fb
    :try_start_1fb
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_1ff
    .catchall {:try_start_1fb .. :try_end_1ff} :catchall_1ff

    :catchall_1ff
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteAllApiCallData()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLog;->deleteAllLog()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    :catch_8
    move-exception v0

    const-string v1, "EnterpriseLicenseService"

    const-string v2, "deleteAllApiCallData() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p2, :cond_55

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_55

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "instanceId"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pkgName"

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    if-nez v4, :cond_32

    const-string v5, "EnterpriseLicenseService"

    const-string v6, "deleteApiCallData(): result is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_32
    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    if-nez v1, :cond_44

    const-string v5, "EnterpriseLicenseService"

    const-string v6, "deleteApiCallData(): Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_44
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z

    move-result v5
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_48} :catch_49

    return v5

    :catch_49
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string v3, "deleteApiCallData() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_55
    :goto_55
    return v0
.end method

.method public deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_22

    :cond_11
    :try_start_11
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    return v1

    :catch_16
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string v3, "deleteApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_22
    :goto_22
    return v0
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .registers 12

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz p1, :cond_74

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_74

    :cond_16
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "instanceId"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "pkgName"

    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "LICENSE"

    invoke-virtual {v7, v8, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-nez v7, :cond_3b

    const-string v8, "EnterpriseLicenseService"

    const-string v9, "deleteLicense(): result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_36} :catch_60
    .catchall {:try_start_b .. :try_end_36} :catchall_5e

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_3b
    :try_start_3b
    const-string/jumbo v8, "pkgName"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    if-nez v4, :cond_51

    const-string v8, "EnterpriseLicenseService"

    const-string v9, "deleteLicense(): pkgName is null, Record does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_60
    .catchall {:try_start_3b .. :try_end_4c} :catchall_5e

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_51
    :try_start_51
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-eqz v0, :cond_6b

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5d} :catch_60
    .catchall {:try_start_51 .. :try_end_5d} :catchall_5e

    goto :goto_6b

    :catchall_5e
    move-exception v3

    goto :goto_70

    :catch_60
    move-exception v3

    :try_start_61
    const-string v4, "EnterpriseLicenseService"

    const-string v5, "deleteLicense() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_5e

    :cond_6b
    :goto_6b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_74
    :goto_74
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    if-eqz p1, :cond_67

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_67

    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v6

    move v0, v6

    if-eqz v0, :cond_34

    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_2c
    .catchall {:try_start_d .. :try_end_29} :catchall_2a

    goto :goto_34

    :catchall_2a
    move-exception v5

    goto :goto_63

    :catch_2c
    move-exception v6

    :try_start_2d
    const-string v7, "EnterpriseLicenseService"

    const-string v8, "deleteLicenseByAdmin() failed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_2a

    :cond_34
    :goto_34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v0, :cond_62

    :try_start_3a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_43

    const/4 v5, 0x1

    nop

    :cond_43
    move v1, v5

    if-eqz v1, :cond_59

    const-string v5, "EnterpriseLicenseService"

    const-string v6, "deleteLicenseByAdmin(): notify ELM observers"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    sget-object v7, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Lcom/samsung/android/knox/license/LicenseResult$Status;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_59} :catch_5a

    :cond_59
    goto :goto_62

    :catch_5a
    move-exception v5

    const-string v6, "EnterpriseLicenseService"

    const-string v7, "deleteLicenseByAdmin(): invalid number"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    return v0

    :goto_63
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_67
    :goto_67
    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5
.end method

.method public getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 12

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v3, 0x3

    :try_start_7
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "pkgName"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "instanceId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "pkgVersion"

    aput-object v5, v3, v4

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_39
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_68

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    move-object v5, v10

    const-string/jumbo v10, "pkgName"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    const-string/jumbo v10, "instanceId"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    const-string/jumbo v10, "pkgVersion"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    new-instance v10, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v10, v6, v7, v8}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/samsung/android/knox/license/LicenseInfo;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7a} :catch_7c

    return-object v10

    :cond_7b
    goto :goto_85

    :catch_7c
    move-exception v3

    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getLicenseInfo() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return-object v1
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_58

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "instanceId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pkgName"

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    if-nez v4, :cond_33

    const-string v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getApiCallData(): result is null, Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_33
    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    if-nez v1, :cond_46

    const-string v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getApiCallData(): pkgName is null, Record does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_46
    invoke-static {v1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4a} :catch_4b

    return-object v5

    :catch_4b
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getApiCallData() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_58
    :goto_58
    return-object v0
.end method

.method public getApiCallDataByAdmin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception v1

    :try_start_a
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_LOG"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_11} :catch_2f

    nop

    :goto_12
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_2e

    :cond_1f
    :try_start_1f
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_24

    return-object v1

    :catch_24
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2e
    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_47
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2b

    :cond_11
    nop

    :try_start_12
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_21

    goto :goto_2a

    :catch_21
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getELMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-object v0

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
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

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "getELMPermissions() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_69

    :cond_11
    const/4 v1, 0x2

    :try_start_12
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pkgName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "instanceId"

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_38
    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    move-object v3, v7

    const-string/jumbo v7, "pkgName"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    if-eqz v5, :cond_38

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    const-string/jumbo v7, "instanceId"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5c} :catch_5f

    move-object v0, v7

    goto :goto_38

    :cond_5e
    goto :goto_68

    :catch_5f
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getInstanceId() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    return-object v0

    :cond_69
    :goto_69
    return-object v0
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2b

    :cond_11
    nop

    :try_start_12
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_21

    goto :goto_2a

    :catch_21
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getKLMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-object v0

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2b

    :cond_11
    nop

    :try_start_12
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_21

    goto :goto_2a

    :catch_21
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getKLMLicenseKey() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-object v0

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_7e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7e

    :cond_11
    const/4 v1, 0x3

    :try_start_12
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pkgName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "instanceId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "pkgVersion"

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    move-object v3, v8

    const-string/jumbo v8, "instanceId"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    if-eqz v4, :cond_3f

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    const-string/jumbo v8, "pkgVersion"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v8, v5, v4, v6}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_71} :catch_74

    move-object v0, v8

    nop

    :cond_73
    goto :goto_7d

    :catch_74
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getLicenseInfo() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    return-object v0

    :cond_7e
    :goto_7e
    return-object v0
.end method

.method public getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_7e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7e

    :cond_11
    const/4 v1, 0x3

    :try_start_12
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pkgName"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "instanceId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "pkgVersion"

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    move-object v3, v8

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    if-eqz v5, :cond_3f

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    const-string/jumbo v8, "instanceId"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    const-string/jumbo v8, "pkgVersion"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v8, p1, v4, v6}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_71} :catch_74

    move-object v0, v8

    nop

    :cond_73
    goto :goto_7d

    :catch_74
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getLicenseInfoByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    return-object v0

    :cond_7e
    :goto_7e
    return-object v0
.end method

.method public getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_58

    :cond_11
    :try_start_11
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const-string/jumbo v3, "instanceId"

    const-string/jumbo v4, "rightsObject"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_4b

    if-eqz v1, :cond_4a

    const/4 v2, 0x0

    :try_start_22
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/license/RightsObject;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_2a

    move-object v2, v3

    goto :goto_33

    :catch_2a
    move-exception v3

    :try_start_2b
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getRightsObject() may new namespace"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    if-nez v2, :cond_45

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    move-object v0, v3

    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getRightsObject() - deserializeObject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_45
    invoke-virtual {v2}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;

    move-result-object v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_49} :catch_4b

    move-object v0, v3

    :cond_4a
    :goto_4a
    goto :goto_57

    :catch_4b
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getRightsObject() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_57
    return-object v0

    :cond_58
    :goto_58
    return-object v0
.end method

.method public getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_58

    :cond_11
    :try_start_11
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    const-string/jumbo v3, "pkgName"

    const-string/jumbo v4, "rightsObject"

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_4b

    if-eqz v1, :cond_4a

    const/4 v2, 0x0

    :try_start_22
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/license/RightsObject;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_2a

    move-object v2, v3

    goto :goto_33

    :catch_2a
    move-exception v3

    :try_start_2b
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "getRightsObjectByAdmin() may new namespace"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    if-nez v2, :cond_45

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    move-object v0, v3

    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getRightsObjectByAdmin() - deserializeObject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_45
    invoke-virtual {v2}, Landroid/app/enterprise/license/RightsObject;->convertToNew()Lcom/samsung/android/knox/license/RightsObject;

    move-result-object v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_49} :catch_4b

    move-object v0, v3

    :cond_4a
    :goto_4a
    goto :goto_57

    :catch_4b
    move-exception v1

    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getRightsObjectByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_57
    return-object v0

    :cond_58
    :goto_58
    return-object v0
.end method

.method public isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "isServiceAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_94

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_94

    :cond_13
    const/4 v1, 0x1

    if-eqz p1, :cond_40

    :try_start_16
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_40

    :cond_1d
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const-string/jumbo v4, "pkgName"

    const-string/jumbo v5, "rightsObject"

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/license/RightsObject;

    if-eqz v3, :cond_87

    invoke-virtual {v3}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    return v1

    :catch_3e
    move-exception v1

    goto :goto_88

    :cond_40
    :goto_40
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "rightsObject"

    aput-object v3, v2, v0

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_86

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_86

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    move-object v4, v6

    const-string/jumbo v6, "rightsObject"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/license/RightsObject;

    if-nez v7, :cond_7a

    goto :goto_5d

    :cond_7a
    invoke-virtual {v7}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_82} :catch_3e

    if-eqz v9, :cond_85

    return v1

    :cond_85
    goto :goto_5d

    :cond_86
    nop

    :cond_87
    goto :goto_93

    :goto_88
    nop

    const-string v2, "EnterpriseLicenseService"

    const-string v3, "check Service failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_93
    return v0

    :cond_94
    :goto_94
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "serviceName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/enterprise/license/LicenseLog;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;IILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;I)Z
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v8, "processKnoxLicenseResponse()"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_21

    return v8

    :cond_21
    const/4 v0, 0x0

    if-eqz v6, :cond_35

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2b

    goto :goto_35

    :cond_2b
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const/4 v0, 0x0

    goto :goto_36

    :cond_33
    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x0

    :goto_36
    move v9, v0

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    const/4 v0, 0x0

    move-object v13, v0

    if-eqz p8, :cond_ec

    :try_start_40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v14, "pkgName"

    invoke-virtual {v0, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v15

    move-object/from16 v16, v15

    const-string/jumbo v8, "rightsObject"
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_59} :catch_e3
    .catchall {:try_start_40 .. :try_end_59} :catchall_da

    move/from16 v17, v10

    move-object/from16 v10, v16

    :try_start_5d
    invoke-virtual {v14, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v18, v10

    const-string v10, "LICENSE"

    invoke-virtual {v8, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_7b

    sget-object v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v19, v8

    const-string v8, "LICENSE"

    invoke-virtual {v10, v8, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8

    move-object/from16 v10, p2

    move-object/from16 v20, v0

    goto :goto_9e

    :cond_7b
    move/from16 v19, v8

    const-string/jumbo v8, "instanceId"

    const-string v10, "-1"

    invoke-virtual {v14, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "pkgVersion"
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_88} :catch_d5
    .catchall {:try_start_5d .. :try_end_88} :catchall_d0

    move-object/from16 v10, p2

    :try_start_8a
    invoke-virtual {v14, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v14, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v0, "LICENSE"

    invoke-virtual {v8, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9d} :catch_1dc
    .catchall {:try_start_8a .. :try_end_9d} :catchall_1d8

    move v8, v0

    :goto_9e
    if-eqz v8, :cond_cd

    :try_start_a0
    const-string v0, "EnterpriseLicenseService"
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a2} :catch_c8
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_c3

    move/from16 v21, v8

    :try_start_a4
    const-string/jumbo v8, "processKnoxLicenseResponse(): License Table update."

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v2}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v13, v0

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_c2} :catch_1d6
    .catchall {:try_start_a4 .. :try_end_c2} :catchall_1ed

    goto :goto_cf

    :catchall_c3
    move-exception v0

    move/from16 v21, v8

    goto/16 :goto_1ee

    :catch_c8
    move-exception v0

    move/from16 v21, v8

    goto/16 :goto_1df

    :cond_cd
    move/from16 v21, v8

    :goto_cf
    goto :goto_fa

    :catchall_d0
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_1d9

    :catch_d5
    move-exception v0

    move-object/from16 v10, p2

    goto/16 :goto_1dd

    :catchall_da
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v10, p2

    move/from16 v21, v17

    goto/16 :goto_1ee

    :catch_e3
    move-exception v0

    move/from16 v17, v10

    move-object/from16 v10, p2

    move/from16 v21, v17

    goto/16 :goto_1df

    :cond_ec
    move/from16 v17, v10

    move-object/from16 v10, p2

    :try_start_f0
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v8, "processKnoxLicenseResponse().RO is null"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f8} :catch_1dc
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_1d8

    move/from16 v21, v17

    :goto_fa
    :try_start_fa
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.action.knox_license.status"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "edm.intent.extra.knox_license.status"

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.extra.knox_license.activaton_initiator"

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.extra.knox_license.result_type"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "edm.intent.extra.knox_license.data.pkgname"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x320

    if-ne v5, v8, :cond_12d

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_12d
    if-eqz v9, :cond_139

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_139
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v8, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    invoke-virtual {v8, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    move-object/from16 v22, v0

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v0

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ACTIVATION_INITIATOR"

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v8, v0, v13}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v0, 0x320

    if-ne v5, v0, :cond_177

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_177
    if-eqz v21, :cond_191

    nop

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_191

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v4, "Permissions"

    invoke-virtual {v14, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v8, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_191
    if-eqz v9, :cond_19d

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_19d
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_1b4

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1b4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    const-string v4, "application_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v4, :cond_1d0

    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->grantRuntimePermissionsForEnterpriseAdmin()V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_1d0} :catch_1d6
    .catchall {:try_start_fa .. :try_end_1d0} :catchall_1ed

    :cond_1d0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x1

    return v0

    :catch_1d6
    move-exception v0

    goto :goto_1df

    :catchall_1d8
    move-exception v0

    :goto_1d9
    move/from16 v21, v17

    goto :goto_1ee

    :catch_1dc
    move-exception v0

    :goto_1dd
    move/from16 v21, v17

    :goto_1df
    :try_start_1df
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v8, "processKnoxLicenseResponse() failed"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e7
    .catchall {:try_start_1df .. :try_end_1e7} :catchall_1ed

    nop

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    return v4

    :catchall_1ed
    move-exception v0

    :goto_1ee
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    monitor-enter p0

    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v8, "processLicenseActivationResponse()"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_5c4

    if-nez v0, :cond_23

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_23
    const/4 v0, 0x0

    if-eqz v6, :cond_37

    :try_start_26
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2d

    goto :goto_37

    :cond_2d
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v0, 0x0

    goto :goto_38

    :cond_35
    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x0

    :goto_38
    move v8, v0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v12, 0x0

    if-nez p5, :cond_14d

    const/4 v0, 0x1

    nop

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.action.license.status"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8f

    if-eqz v8, :cond_73

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_67

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v9, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_67
    const-string/jumbo v14, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v9, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v9, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_73
    const-string/jumbo v13, "edm.intent.extra.license.status"

    invoke-virtual {v9, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.perm_group"

    invoke-virtual {v9, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v9, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a0

    :cond_8f
    const-string/jumbo v13, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_a0
    const-string/jumbo v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_b4

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v9, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_b4
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v9, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_110

    if-eqz v8, :cond_f0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_e3

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v16, v9

    const-string v9, "Permissions"

    invoke-virtual {v15, v9, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_e5

    :cond_e3
    move-object/from16 v16, v9

    :goto_e5
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v13, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f2

    :cond_f0
    move-object/from16 v16, v9

    :goto_f2
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v13, v9, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_121

    :cond_110
    move-object/from16 v16, v9

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_121
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v13, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_134

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_134
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v9, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v14, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v9, v4, v14}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    invoke-direct {v1, v2, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14b
    .catchall {:try_start_26 .. :try_end_14b} :catchall_5c4

    monitor-exit p0

    return v0

    :cond_14d
    :try_start_14d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "pkgName"

    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v14

    const-string/jumbo v15, "rightsObject"

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v15, "instanceId"
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_16a} :catch_36b
    .catchall {:try_start_14d .. :try_end_16a} :catchall_364

    move/from16 v17, v9

    move-object/from16 v9, p4

    :try_start_16e
    invoke-virtual {v13, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "pkgVersion"

    invoke-virtual {v13, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "LICENSE"

    invoke-virtual {v15, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_17f} :catch_35e
    .catchall {:try_start_16e .. :try_end_17f} :catchall_357

    if-lez v9, :cond_198

    :try_start_181
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v18, v9

    const-string v9, "LICENSE"

    invoke-virtual {v15, v9, v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18b} :catch_193
    .catchall {:try_start_181 .. :try_end_18b} :catchall_18e

    move-object/from16 v19, v0

    goto :goto_1cb

    :catchall_18e
    move-exception v0

    move/from16 v9, v17

    goto/16 :goto_4b1

    :catch_193
    move-exception v0

    move/from16 v9, v17

    goto/16 :goto_370

    :cond_198
    move/from16 v18, v9

    :try_start_19a
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v13, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "LICENSE"

    invoke-virtual {v9, v15, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a8} :catch_35e
    .catchall {:try_start_19a .. :try_end_1a8} :catchall_357

    if-nez v9, :cond_1c9

    :try_start_1aa
    const-string v15, "EnterpriseLicenseService"

    move-object/from16 v19, v0

    const-string v0, "check key field"

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "licenseKey"

    const-string/jumbo v15, "na"

    invoke-virtual {v13, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "LICENSE"

    invoke-virtual {v0, v15, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c4} :catch_1c6
    .catchall {:try_start_1aa .. :try_end_1c4} :catchall_4b0

    move v9, v0

    goto :goto_1cb

    :catch_1c6
    move-exception v0

    goto/16 :goto_370

    :cond_1c9
    move-object/from16 v19, v0

    :goto_1cb
    :try_start_1cb
    const-string v0, "EnterpriseLicenseService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1d2} :catch_353
    .catchall {:try_start_1cb .. :try_end_1d2} :catchall_34f

    move-object/from16 v20, v12

    :try_start_1d4
    const-string/jumbo v12, "processLicenseActivationResponse(): ret = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1ff

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v12, v2}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1f6} :catch_34b
    .catchall {:try_start_1d4 .. :try_end_1f6} :catchall_346

    move-object v12, v0

    :try_start_1f7
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    goto :goto_201

    :cond_1ff
    move-object/from16 v12, v20

    :goto_201
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_21e

    if-eqz v9, :cond_213

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v15

    invoke-interface {v0, v2, v4, v15}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    move-object/from16 v21, v13

    goto :goto_220

    :cond_213
    const-string/jumbo v15, "fail"

    move-object/from16 v21, v13

    const/16 v13, 0x12d

    invoke-interface {v0, v2, v15, v13}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_220

    :cond_21e
    move-object/from16 v21, v13

    :goto_220
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getCCMService()Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v0, :cond_23c

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->notifyLicenseStatus()Z

    move-result v0

    if-nez v0, :cond_23c

    const-string v0, "EnterpriseLicenseService"

    const-string v13, "ccm notifyLicenseStatus failed"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_23c} :catch_1c6
    .catchall {:try_start_1f7 .. :try_end_23c} :catchall_4b0

    :cond_23c
    :try_start_23c
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.action.license.status"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_288

    if-eqz v8, :cond_26c

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_260

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_260
    const-string/jumbo v14, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v0, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_26c
    const-string/jumbo v13, "edm.intent.extra.license.status"

    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.perm_group"

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_299

    :cond_288
    const-string/jumbo v13, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_299
    const-string/jumbo v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_2ad

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2ad
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_309

    if-eqz v8, :cond_2e9

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_2dc

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v22, v0

    const-string v0, "Permissions"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2de

    :cond_2dc
    move-object/from16 v22, v0

    :goto_2de
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2eb

    :cond_2e9
    move-object/from16 v22, v0

    :goto_2eb
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_31a

    :cond_309
    move-object/from16 v22, v0

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_31a
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_32d

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_32d
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v14, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v0, v4, v14}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    invoke-direct {v1, v2, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_344
    .catchall {:try_start_23c .. :try_end_344} :catchall_5c4

    goto/16 :goto_483

    :catchall_346
    move-exception v0

    move-object/from16 v12, v20

    goto/16 :goto_4b1

    :catch_34b
    move-exception v0

    move-object/from16 v12, v20

    goto :goto_370

    :catchall_34f
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_35c

    :catch_353
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_363

    :catchall_357
    move-exception v0

    move-object/from16 v20, v12

    move/from16 v9, v17

    :goto_35c
    goto/16 :goto_4b1

    :catch_35e
    move-exception v0

    move-object/from16 v20, v12

    move/from16 v9, v17

    :goto_363
    goto :goto_370

    :catchall_364
    move-exception v0

    move/from16 v17, v9

    move-object/from16 v20, v12

    goto/16 :goto_4b1

    :catch_36b
    move-exception v0

    move/from16 v17, v9

    move-object/from16 v20, v12

    :goto_370
    :try_start_370
    const-string v13, "EnterpriseLicenseService"

    const-string/jumbo v14, "processLicenseActivationResponse() failed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37b
    .catchall {:try_start_370 .. :try_end_37b} :catchall_4b0

    :try_start_37b
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.action.license.status"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_3c7

    if-eqz v8, :cond_3ab

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_39f

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v0, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_39f
    const-string/jumbo v14, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v0, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3ab
    const-string/jumbo v13, "edm.intent.extra.license.status"

    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.perm_group"

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3d8

    :cond_3c7
    const-string/jumbo v13, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v13, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3d8
    const-string/jumbo v13, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_3ec

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3ec
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_448

    if-eqz v8, :cond_428

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_41b

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v23, v0

    const-string v0, "Permissions"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_41d

    :cond_41b
    move-object/from16 v23, v0

    :goto_41d
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_42a

    :cond_428
    move-object/from16 v23, v0

    :goto_42a
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v13, v0, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_459

    :cond_448
    move-object/from16 v23, v0

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_459
    const-string v0, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_46c

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_46c
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v14, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v0, v4, v14}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    invoke-direct {v1, v2, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_483
    nop

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_488
    .catchall {:try_start_37b .. :try_end_488} :catchall_5c4

    move-wide v10, v13

    :try_start_489
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v0, :cond_496

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->grantRuntimePermissionsForEnterpriseAdmin()V
    :try_end_496
    .catch Ljava/lang/Exception; {:try_start_489 .. :try_end_496} :catch_49c
    .catchall {:try_start_489 .. :try_end_496} :catchall_49a

    :cond_496
    :try_start_496
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_499
    .catchall {:try_start_496 .. :try_end_499} :catchall_5c4

    :goto_499
    goto :goto_4aa

    :catchall_49a
    move-exception v0

    goto :goto_4ac

    :catch_49c
    move-exception v0

    :try_start_49d
    const-string v13, "EnterpriseLicenseService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a6
    .catchall {:try_start_49d .. :try_end_4a6} :catchall_49a

    :try_start_4a6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4a9
    .catchall {:try_start_4a6 .. :try_end_4a9} :catchall_5c4

    goto :goto_499

    :goto_4aa
    monitor-exit p0

    return v9

    :goto_4ac
    :try_start_4ac
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_4b0
    move-exception v0

    :goto_4b1
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.action.license.status"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_505

    if-eqz v8, :cond_4e7

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_4d8

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v24, v0

    const-string v0, "Permissions"

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v0, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v13, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_4da

    :cond_4d8
    move-object/from16 v24, v0

    :goto_4da
    const-string/jumbo v0, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4e9

    :cond_4e7
    move-object/from16 v24, v0

    :goto_4e9
    const-string/jumbo v0, "edm.intent.extra.license.status"

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.license.perm_group"

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.sec.enterprise.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_518

    :cond_505
    move-object/from16 v24, v0

    const-string/jumbo v0, "edm.intent.extra.license.status"

    const-string/jumbo v14, "fail"

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.extra.license.errorcode"

    const/16 v14, 0x12d

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_518
    const-string/jumbo v0, "edm.intent.extra.license.result_type"

    const/16 v14, 0x320

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_52c

    invoke-virtual {v13, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_52c
    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_588

    if-eqz v8, :cond_568

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_55b

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move/from16 v25, v9

    const-string v9, "Permissions"

    invoke-virtual {v15, v9, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_55d

    :cond_55b
    move/from16 v25, v9

    :goto_55d
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_56a

    :cond_568
    move/from16 v25, v9

    :goto_56a
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS"

    invoke-virtual {v0, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    invoke-virtual {v0, v9, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_599

    :cond_588
    move/from16 v25, v9

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_599
    const-string v9, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x320

    invoke-virtual {v0, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_5ac

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5ac
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v9, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v14, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-direct {v9, v4, v14}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Type;)V

    invoke-direct {v1, v2, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24
    :try_end_5c4
    .catchall {:try_start_4ac .. :try_end_5c4} :catchall_5c4

    :catchall_5c4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v7, "processLicenseValidationResult()"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v4, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_1f

    return v7

    :cond_1f
    const/4 v0, 0x0

    if-eqz v6, :cond_33

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_29

    goto :goto_33

    :cond_29
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    const/4 v0, 0x0

    goto :goto_34

    :cond_31
    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x0

    :goto_34
    move v8, v0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/16 v12, 0x321

    const/16 v13, 0x12d

    if-nez p3, :cond_160

    const/4 v0, 0x1

    nop

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v9, "edm.intent.action.license.status"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_71

    if-eqz v8, :cond_5a

    const-string/jumbo v9, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5a
    const-string/jumbo v9, "edm.intent.extra.license.status"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v15

    invoke-virtual {v7, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "edm.intent.extra.license.perm_group"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_80

    :cond_71
    const-string/jumbo v9, "edm.intent.extra.license.status"

    const-string/jumbo v15, "fail"

    invoke-virtual {v7, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "edm.intent.extra.license.errorcode"

    invoke-virtual {v7, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_80
    const-string/jumbo v9, "edm.intent.extra.license.result_type"

    invoke-virtual {v7, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_92

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v7, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_92
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v7, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_c5

    if-eqz v8, :cond_b1

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v9, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v9, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b1
    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v9, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v9, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v9, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d2

    :cond_c5
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v15, "fail"

    invoke-virtual {v9, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_d2
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x321

    invoke-virtual {v9, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_e5

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v9, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_e5
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v9, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15a

    new-instance v12, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_116

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v15

    invoke-virtual {v12, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_125

    :cond_116
    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v13, "fail"

    invoke-virtual {v12, v15, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v15, 0x12d

    invoke-virtual {v12, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_125
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_144

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v16, v7

    const-string v7, "Permissions"

    invoke-virtual {v15, v7, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v7, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v12, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_146

    :cond_144
    move-object/from16 v16, v7

    :goto_146
    const-string v7, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x321

    invoke-virtual {v12, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v12, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_15c

    :cond_15a
    move-object/from16 v16, v7

    :goto_15c
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_160
    :try_start_160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "pkgName"

    invoke-virtual {v0, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v13

    const-string/jumbo v15, "rightsObject"

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v15, "pkgVersion"

    invoke-virtual {v12, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v15, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    if-lez v7, :cond_196

    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v17, v7

    const-string v7, "LICENSE"

    invoke-virtual {v15, v7, v12, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    move v9, v7

    goto :goto_198

    :cond_196
    move/from16 v17, v7

    :goto_198
    const-string v7, "EnterpriseLicenseService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string/jumbo v0, "processLicenseValidationResult(): ret = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1b8

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    :cond_1b8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_1d0

    if-eqz v9, :cond_1c8

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v7

    invoke-interface {v0, v4, v2, v7}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1d0

    :cond_1c8
    const-string/jumbo v7, "fail"

    const/16 v15, 0x12d

    invoke-interface {v0, v4, v7, v15}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1d0
    :goto_1d0
    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v15, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move/from16 v19, v0

    const-string/jumbo v0, "persona"

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_245

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v15

    move-object v7, v15

    const/4 v15, 0x0

    :goto_1e8
    move-object/from16 v20, v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_240

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v16

    move/from16 v21, v16

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v16

    if-nez v16, :cond_214

    move-object/from16 v22, v7

    move/from16 v7, v21

    if-eqz v7, :cond_20d

    goto :goto_218

    :cond_20d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v20

    move-object/from16 v7, v22

    goto :goto_1e8

    :cond_214
    move-object/from16 v22, v7

    move/from16 v7, v21

    :goto_218
    move-object/from16 v23, v12

    const-string v12, "EnterpriseLicenseService"

    move-object/from16 v24, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "processLicenseValidationResult():  u"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " isLicenseLocked ? "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    nop

    move/from16 v19, v12

    goto :goto_24b

    :cond_240
    move-object/from16 v23, v12

    move-object/from16 v24, v13

    goto :goto_24b

    :cond_245
    move-object/from16 v20, v0

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    :goto_24b
    if-nez v19, :cond_262

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_262

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v7

    if-nez v7, :cond_260

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v0

    if-eqz v0, :cond_262

    :cond_260
    const/16 v19, 0x1

    :cond_262
    if-eqz v19, :cond_267

    invoke-direct {v1, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_267} :catch_371
    .catchall {:try_start_160 .. :try_end_267} :catchall_36e

    :cond_267
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.action.license.status"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_296

    if-eqz v8, :cond_27f

    const-string/jumbo v7, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_27f
    const-string/jumbo v7, "edm.intent.extra.license.status"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.extra.license.perm_group"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2a7

    :cond_296
    const-string/jumbo v7, "edm.intent.extra.license.status"

    const-string/jumbo v12, "fail"

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2a7
    const-string/jumbo v7, "edm.intent.extra.license.result_type"

    const/16 v12, 0x321

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_2bb

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2bb
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_2ee

    if-eqz v8, :cond_2da

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v7, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v7, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2da
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v7, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v7, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2fd

    :cond_2ee
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v13, "fail"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v13, 0x12d

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2fd
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v13, 0x321

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_310

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_310
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_495

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_341

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_350

    :cond_341
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_350
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_482

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v12, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_482

    :catchall_36e
    move-exception v0

    goto/16 :goto_49a

    :catch_371
    move-exception v0

    :try_start_372
    const-string v7, "EnterpriseLicenseService"

    const-string/jumbo v12, "processLicenseValidationResult() failed"

    invoke-static {v7, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37d
    .catchall {:try_start_372 .. :try_end_37d} :catchall_36e

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.action.license.status"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_3ac

    if-eqz v8, :cond_395

    const-string/jumbo v7, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_395
    const-string/jumbo v7, "edm.intent.extra.license.status"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v12

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.extra.license.perm_group"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3bd

    :cond_3ac
    const-string/jumbo v7, "edm.intent.extra.license.status"

    const-string/jumbo v12, "fail"

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.extra.license.errorcode"

    const/16 v12, 0x12d

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3bd
    const-string/jumbo v7, "edm.intent.extra.license.result_type"

    const/16 v12, 0x321

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_3d1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3d1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_404

    if-eqz v8, :cond_3f0

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v7, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v7, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3f0
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v7, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v7, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_413

    :cond_404
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v13, "fail"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v13, 0x12d

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_413
    const-string v12, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v13, 0x321

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_426

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_426
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_495

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_457

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_466

    :cond_457
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_466
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_482

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "Permissions"

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v15, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v12, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_482
    :goto_482
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x321

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v12, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_495
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v9

    :goto_49a
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.action.license.status"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_4c9

    if-eqz v8, :cond_4b2

    const-string/jumbo v12, "edm.intent.extra.license.data.pkgname"

    invoke-virtual {v7, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.extra.license.data.pkgversion"

    invoke-virtual {v7, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4b2
    const-string/jumbo v12, "edm.intent.extra.license.status"

    invoke-virtual {v7, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.extra.license.perm_group"

    invoke-virtual {v7, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4da

    :cond_4c9
    const-string/jumbo v12, "edm.intent.extra.license.status"

    const-string/jumbo v13, "fail"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.extra.license.errorcode"

    const/16 v13, 0x12d

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_4da
    const-string/jumbo v12, "edm.intent.extra.license.result_type"

    const/16 v13, 0x321

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_4ee

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4ee
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_521

    if-eqz v8, :cond_50d

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v12, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGEVERSION"

    invoke-virtual {v12, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_50d
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_530

    :cond_521
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v14, "fail"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v14, 0x12d

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_530
    const-string v13, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v14, 0x321

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v8, :cond_543

    invoke-virtual {v12, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v12, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_543
    invoke-virtual {v12, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v12, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5b2

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_574

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    invoke-virtual {v13, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    invoke-virtual {v13, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_583

    :cond_574
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    const-string/jumbo v15, "fail"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    const/16 v15, 0x12d

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_583
    const-string v14, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v13, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_59f

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Permissions"

    invoke-virtual {v15, v2, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_59f
    const-string v2, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const/16 v15, 0x321

    invoke-virtual {v13, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v13, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5b2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public removeElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .registers 12

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz p1, :cond_77

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_77

    :cond_16
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "instanceId"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "pkgName"

    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "LICENSE"

    invoke-virtual {v7, v8, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    if-nez v7, :cond_3c

    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense(): result is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_37} :catch_62
    .catchall {:try_start_b .. :try_end_37} :catchall_60

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_3c
    :try_start_3c
    const-string/jumbo v8, "pkgName"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    if-nez v4, :cond_53

    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense(): pkgName is null, Record does not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4e} :catch_62
    .catchall {:try_start_3c .. :try_end_4e} :catchall_60

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_53
    :try_start_53
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-eqz v0, :cond_6e

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5f} :catch_62
    .catchall {:try_start_53 .. :try_end_5f} :catchall_60

    goto :goto_6e

    :catchall_60
    move-exception v3

    goto :goto_73

    :catch_62
    move-exception v3

    :try_start_63
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "resetLicense() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_60

    :cond_6e
    :goto_6e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_77
    :goto_77
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz p1, :cond_36

    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_36

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-eqz v0, :cond_2d

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_24
    .catchall {:try_start_a .. :try_end_21} :catchall_22

    goto :goto_2d

    :catchall_22
    move-exception v3

    goto :goto_32

    :catch_24
    move-exception v3

    :try_start_25
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_22

    :cond_2d
    :goto_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_36
    :goto_36
    const/4 v3, 0x0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public declared-synchronized validateLicenses()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->validateLicenses(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized validateLicenses(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_45

    :try_start_8
    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateLicenses to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    move-object v4, p1

    goto :goto_1b

    :cond_19
    const-string v4, "all packages"

    :goto_1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.LICENSE_VALIDATION_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_40

    :try_start_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    nop

    monitor-exit p0

    return-void

    :catchall_40
    move-exception v2

    :try_start_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method
