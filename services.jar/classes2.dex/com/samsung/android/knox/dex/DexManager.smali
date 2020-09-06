.class public Lcom/samsung/android/knox/dex/DexManager;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dex/DexManager$SetWallpaperFlags;
    }
.end annotation


# static fields
.field public static final DEX_APP_ALREADY_SET_POLICY:I = 0x3

.field public static final DEX_APP_NOT_INSTALLED:I = 0x2

.field public static final DEX_APP_NOT_SET_POLICY:I = 0x4

.field public static final DEX_POLICY_FAIL:I = 0x1

.field public static final DEX_POLICY_SUCCESS:I = 0x0

.field public static final FLAG_DEX:I = 0x8

.field public static final FLAG_LOCK:I = 0x2

.field public static final FLAG_PHONE:I = 0x4

.field public static final FLAG_SYSTEM:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static sDexManager:Lcom/samsung/android/knox/dex/DexManager;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mEnterpriseService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field private mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

.field private mService:Lcom/samsung/android/knox/dex/IDexPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DexPolicy"

    sput-object v0, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mEnterpriseService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    const-string v0, "enterprise_policy_new"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mEnterpriseService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mEnterpriseService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/dex/DexManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/dex/DexManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/samsung/android/knox/dex/DexManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/dex/DexManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;

    :cond_e
    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->sDexManager:Lcom/samsung/android/knox/dex/DexManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_10

    const-string v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/dex/IDexPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    if-nez v0, :cond_10

    const-string v0, "dex_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dex/IDexPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    return-object v0
.end method


# virtual methods
.method public addPackageToDisableList(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addPackageToDisableList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public addPackageToInstallBlackList(Lcom/samsung/android/knox/AppIdentity;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addPackageToInstallBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->addPackageToInstallBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public addPackageToInstallWhiteList(Lcom/samsung/android/knox/AppIdentity;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addPackageToInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->addPackageToInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public addShortcut(IILandroid/content/ComponentName;)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexShortcut(IILandroid/content/ComponentName;)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public addURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 14

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.addURLShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    :try_start_1b
    iget-object v2, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_27

    return v1

    :catch_27
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    const/4 v1, -0x1

    return v1
.end method

.method public addURLShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I
    .registers 19

    move-object v1, p0

    iget-object v0, v1, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "DexManager.addURLShortcut"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v2

    sget-object v0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, -0x6

    return v0

    :cond_16
    invoke-direct {v1}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_35

    :try_start_1c
    iget-object v3, v1, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcutExtend(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2c} :catch_2d

    return v0

    :catch_2d
    move-exception v0

    sget-object v3, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with KnoxCustomManager service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    const/4 v0, -0x1

    return v0
.end method

.method public allowAutoOpenLastApp(I)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.allowAutoOpenLastApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->allowDexAutoOpenLastApp(I)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public allowScreenTimeoutChange(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.allowScreenTimeoutChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x1

    return v0
.end method

.method public clearLoadingLogo()I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.clearLoadingLogo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearDexLoadingLogo()I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public enforceEthernetOnly(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.enforceEthernetOnly"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public enforceVirtualMacAddress(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.enforceVirtualMacAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->enforceVirtualMacAddress(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundModePackageList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.getForegroundModePackageList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_1a
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    :try_start_20
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexForegroundModePackageList()Ljava/util/List;

    move-result-object v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    return-object v1

    :catch_27
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getHDMIAutoEnterState()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public getHomeAlignment()I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.getHomeAlignment"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, -0x6

    return v1

    :cond_16
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2b

    :try_start_1c
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHomeAlignment()I

    move-result v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    return v1

    :catch_23
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    const/4 v1, -0x1

    return v1
.end method

.method public getPackagesFromDisableList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/dex/IDexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromInstallBlackList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/dex/IDexPolicy;->getPackagesFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromInstallWhiteList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/dex/IDexPolicy;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenTimeout()I
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_17

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexScreenTimeout()I

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_f

    move v0, v1

    goto :goto_17

    :catch_f
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    div-int/lit16 v1, v0, 0x3e8

    return v1
.end method

.method public getShowIMEWithHardKeyboard()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getShowIMEWithHardKeyboard()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public getVirtualMacAddress()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.getVirtualMacAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, ""

    :try_start_9
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {v1}, Lcom/samsung/android/knox/dex/IDexPolicy;->getVirtualMacAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_17

    return-object v1

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed at dex policy API"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-object v0
.end method

.method public isAutoOpenLastAppAllowed()I
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with KnoxCustomManager service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public isDexActivated()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isDexActivated()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public isDexDisabled()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isDexDisabled()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method public isEthernetOnlyEnforced()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isEthernetOnlyEnforced()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method public isScreenTimeoutChangeAllowed()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method public isVirtualMacAddressEnforced()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.isVirtualMacAddressEnforced"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_8
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/dex/IDexPolicy;->isVirtualMacAddressEnforced()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_16

    return v0

    :cond_15
    goto :goto_1e

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public removePackageFromDisableList(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removePackageFromDisableList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public removePackageFromInstallBlackList(Lcom/samsung/android/knox/AppIdentity;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removePackageFromInstallBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->removePackageFromInstallBlackList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public removePackageFromInstallWhiteList(Lcom/samsung/android/knox/AppIdentity;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removePackageFromInstallWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->removePackageFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Dex policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public removeShortcut(Landroid/content/ComponentName;)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexShortcut(Landroid/content/ComponentName;)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public removeURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.removeURLShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public setDexDisabled(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setDexDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getService()Lcom/samsung/android/knox/dex/IDexPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mService:Lcom/samsung/android/knox/dex/IDexPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/dex/IDexPolicy;->setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    return v0

    :cond_16
    goto :goto_1f

    :catch_17
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed at dex policy API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setForegroundModePackageList(ILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setForegroundModePackageList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexForegroundModePackageList(ILjava/util/List;)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public setHDMIAutoEnterState(I)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setHDMIAutoEnterState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHDMIAutoEnterState(I)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public setHomeAlignment(I)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setHomeAlignment"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHomeAlignment(I)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public setLoadingLogo(Landroid/os/ParcelFileDescriptor;)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setLoadingLogo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexLoadingLogo(Landroid/os/ParcelFileDescriptor;)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public setScreenTimeout(I)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setScreenTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexScreenTimeout(I)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public setShowIMEWithHardKeyboard(I)I
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setShowIMEWithHardKeyboard"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getKnoxCustomService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_1b
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mKnoxCustomService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShowIMEWithHardKeyboard(I)I

    move-result v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_22

    return v1

    :catch_22
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v1, -0x1

    return v1
.end method

.method public setWallpaper(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 11

    iget-object v0, p0, Lcom/samsung/android/knox/dex/DexManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DexManager.setWallpaper"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x6

    return v1

    :cond_15
    and-int/lit8 v1, p5, 0x8

    if-nez v1, :cond_1c

    const/16 v1, -0x32

    return v1

    :cond_1c
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/DexManager;->getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_5e

    :try_start_23
    iget-object v1, p0, Lcom/samsung/android/knox/dex/DexManager;->mEnterpriseService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result v3
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_41} :catch_55
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_41} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_41} :catch_43

    return v3

    :cond_42
    goto :goto_5e

    :catch_43
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with EnterpriseDeviceManager service"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_4c
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v4, "The IO to the bitmapData is failing"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_55
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/dex/DexManager;->TAG:Ljava/lang/String;

    const-string v4, "The calling process does not have the knox custom dex permission"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_5e
    :goto_5e
    return v2
.end method
