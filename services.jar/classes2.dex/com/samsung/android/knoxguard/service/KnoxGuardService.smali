.class public Lcom/samsung/android/knoxguard/service/KnoxGuardService;
.super Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;
.source "KnoxGuardService.java"


# static fields
.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final KNOXGUARD_SERVICE:Ljava/lang/String; = "knoxguard_service"

.field private static final LOG:Z = false

.field public static final SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field public static mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

.field public static mPreFix:Ljava/lang/String;

.field private static mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

.field private static mSettedInterface:Ljava/lang/String;

.field private static mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;


# instance fields
.field private mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v0, "knox.guard"

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/IKnoxGuardManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    new-instance v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService$1;-><init>(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)V

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSupportKGOnSEC()Z

    move-result v0

    if-eqz v0, :cond_43

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    :try_start_17
    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    :try_end_22
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_2d

    :catch_23
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2d
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->registerReceiver(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->registerReceiver(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->setInitialState(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KnoxGuard is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/knoxguard/service/KnoxGuardService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .registers 3

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_12

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method public static getKGVM()Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
    .registers 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_13

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.kgclient"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v2

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v2, 0x5f5e101

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerReceiver(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_26

    const-string v0, "Locked"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x5f5e101

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_26
    return-void
.end method

.method private resetKnoxGuardExemptRule(I)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKnoxGuardExemptRule - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    :cond_29
    goto :goto_45

    :catch_2a
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

.method private unRegisterIntent(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_a

    const-string v0, "Locked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_a
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    if-eqz v0, :cond_23

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mServiceSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_23

    :catch_19
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public addPackagesToClearCacheBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call addPackagesToClearCacheBlackList"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call addPackagesToForceStopBlackList"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public allowFirmwareRecovery(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call allowFirmwareRecovery"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public allowOTAUpgrade(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call allowOTAUpgrade"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public allowSafeMode(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call allowSafeMode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public bindToLockScreen()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    if-nez v0, :cond_16

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "mKGVM is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mUnlockCompletedListener:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/IKnoxGuardVaultListener;)V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    :cond_16
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mKGVM:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->bindToLockScreen()V
    :try_end_1b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_1b} :catch_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_31

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catch_27
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    nop

    :goto_32
    return-void
.end method

.method public callKGsv()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call Knox Guard sv"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v1, "call dump"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    :goto_3b
    :try_start_3b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_64

    const-string v2, "data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_4e} :catch_51
    .catchall {:try_start_3b .. :try_end_4e} :catchall_4f

    goto :goto_3b

    :catchall_4f
    move-exception v2

    goto :goto_53

    :catch_51
    move-exception v1

    :try_start_52
    throw v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4f

    :goto_53
    if-eqz v0, :cond_63

    if-eqz v1, :cond_60

    :try_start_57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_63

    :cond_60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_63
    :goto_63
    throw v2

    :cond_64
    if-eqz v0, :cond_69

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_69
    return-void
.end method

.method public getKGServiceVersion()I
    .registers 2

    const v0, 0xa21fe80

    return v0
.end method

.method public getPBAUniqueNumber()Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call getPBAUniqueNumber"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    const-string v2, "/sys/class/scsi_host/host0/unique_number"

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    const-string v2, "/sys/class/scsi_host/host0/unique_number"

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ff

    :cond_22
    const-string v2, "/sys/block/mmcblk0/device/unique_number"

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_32

    const-string v2, "/sys/block/mmcblk0/device/unique_number"

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ff

    :cond_32
    const-string v2, "/sys/block/mmcblk0/device/cid"

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isExistFile(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_109

    const-string v2, "/sys/block/mmcblk0/device/cid"

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/sys/block/mmcblk0/device/name"

    invoke-static {v4}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_fe

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_ae

    const-string v9, "15"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_ae

    :cond_72
    const-string v7, "02"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x3

    if-nez v7, :cond_a9

    const-string v7, "45"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_84

    goto :goto_a9

    :cond_84
    const-string v7, "11"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a4

    const-string v7, "90"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_95

    goto :goto_a4

    :cond_95
    const-string v3, "FE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    const/4 v3, 0x4

    const/4 v7, 0x6

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_ae

    :cond_a4
    :goto_a4
    invoke-virtual {v4, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_ae

    :cond_a9
    :goto_a9
    const/4 v3, 0x5

    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_ae
    :goto_ae
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x12

    const/16 v8, 0x14

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x1c

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x1e

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_fe
    nop

    :goto_ff
    if-eqz v1, :cond_106

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_106
    const-string v2, ""

    return-object v2

    :cond_109
    const-string v2, ""

    return-object v2
.end method

.method public registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->unRegisterIntent()V

    new-instance v1, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mPreFix:Ljava/lang/String;

    sput-object p2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1f

    :cond_2f
    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v3, "KG registerIntent"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call removeActiveAdmin"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    :cond_24
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call revokeRuntimePermission"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_1a
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call setActiveAdmin"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    :cond_25
    return-void
.end method

.method public setAdminRemovable(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call setAdminRemovable"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call setApplicationUninstallationDisabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setKnoxGuardExemptRule(Z)V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-wide/16 v2, -0x1

    :try_start_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v2, v4

    invoke-direct {p0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->resetKnoxGuardExemptRule(I)V

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    if-nez v4, :cond_2c

    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setKnoxGuardExemptRule - There is no active network"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_6e
    .catchall {:try_start_e .. :try_end_28} :catchall_6c

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2c
    :try_start_2c
    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxGuardExemptRule - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_89

    invoke-direct {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v1}, Landroid/os/INetworkManagementService;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSettedInterface:Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_6b} :catch_6e
    .catchall {:try_start_2c .. :try_end_6b} :catchall_6c

    goto :goto_89

    :catchall_6c
    move-exception v4

    goto :goto_8e

    :catch_6e
    move-exception v4

    :try_start_6f
    sget-object v5, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_6c

    :cond_89
    :goto_89
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_8e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setNetRegistRejectCause(II)I
    .registers 9

    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call setNetRegistRejectCause. slotNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-lez p2, :cond_69

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send Intent to KG client. slotNum : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.KNOXGUARD_REJECTCAUSE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.kgclient"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "slot_num"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.android.knoxguard.STATUS"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_6c} :catch_6e

    const/4 v2, 0x0

    return v2

    :catch_6e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v1, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v3, "call setRemoteLockToLockscreen"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p13}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V

    return-void
.end method

.method public setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v2, "call setRuntimePermission"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_1a
    return-void
.end method

.method public shouldBlockCustomRom()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "Checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "Completed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x1

    return v1

    :cond_23
    :goto_23
    const/4 v1, 0x0

    return v1
.end method

.method public showInstallmentStatus()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "Prenormal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "Checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "Completed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v1, 0x1

    return v1

    :cond_2b
    :goto_2b
    const/4 v1, 0x0

    return v1
.end method

.method public unRegisterIntent()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knoxguard.STATUS"

    invoke-static {v0, v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getRlcState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->unRegisterIntent(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mActionList:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    if-eqz v2, :cond_2a

    :try_start_18
    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->mSystemReceiver:Lcom/samsung/android/knoxguard/service/receiver/SystemReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception v2

    sget-object v3, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    :goto_2a
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardService;->TAG:Ljava/lang/String;

    const-string v3, "KG unRegisterIntent"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
