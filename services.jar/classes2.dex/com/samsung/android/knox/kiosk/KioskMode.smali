.class public Lcom/samsung/android/knox/kiosk/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static final ACTION_DISABLE_KIOSK_MODE_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DISABLE_KIOSK_MODE_RESULT"

.field public static final ACTION_ENABLE_KIOSK_MODE_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

.field public static final ACTION_INFORMATION_STREAM_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.INFORMATION_STREAM_INTERNAL"

.field public static ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String; = null

.field public static final ACTION_UNEXPECTED_KIOSK_BEHAVIOR:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UNEXPECTED_KIOSK_BEHAVIOR"

.field public static CONTROL_PANEL_PKGNAME:Ljava/lang/String; = null

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field public static final EDGE_FUNCTION_ALL:I = 0x1f

.field public static final EDGE_FUNCTION_APPSEDGE:I = 0x10

.field public static final EDGE_FUNCTION_EDGELIGHTING:I = 0x8

.field public static final EDGE_FUNCTION_INFORMATIONSTREAM:I = 0x4

.field public static final EDGE_FUNCTION_NIGHTCLOCK:I = 0x1

.field public static final EDGE_FUNCTION_PEOPLEEDGE:I = 0x2

.field public static final ERROR_BUSY:I = -0x4

.field public static final ERROR_KIOSK_ALREADY_ENABLED:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PACKAGE_NOT_FOUND:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_BLOCKED_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BLOCKED_STATUS"

.field public static final EXTRA_KIOSK_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

.field public static MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "KioskMode"

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    const-string v0, "com.sec.android.app.controlpanel"

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.taskmanager"

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.minimode.taskcloser"

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.intent.action.REFRESH_HWKEY_CACHE_INTERNAL"

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-object v0
.end method

.method private getCallingPackage()Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/knox/kiosk/KioskMode;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v2

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;
    .registers 5

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/kiosk/KioskMode;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/kiosk/IKioskMode;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    if-nez v0, :cond_10

    const-string v0, "kioskmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    return-object v0
.end method

.method private isEnableKioskModeAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isEnableKioskModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public allowAirCommandMode(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowAirCommandMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with Kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public allowAirViewMode(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowAirViewMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with Kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public allowEdgeScreen(IZ)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowEdgeScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_28

    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    return v1

    :catch_20
    move-exception v1

    const-string v2, "KioskMode"

    const-string v3, "Failed talking with Kiosk mode service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public allowHardwareKeys(Ljava/util/List;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowHardwareKeys"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    if-eqz p1, :cond_5f

    :try_start_10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_24
    array-length v4, v0

    if-ge v3, v4, :cond_36

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_36
    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v3, v4, v0, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v3

    if-eqz v3, :cond_5f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    nop

    :goto_46
    array-length v5, v3

    if-ge v2, v5, :cond_55

    aget v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_52} :catch_56

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_55
    return-object v4

    :catch_56
    move-exception v0

    const-string v2, "KioskMode"

    const-string v3, "Failed talking with kiosk mode service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    :cond_5f
    nop

    :cond_60
    :goto_60
    return-object v1
.end method

.method public allowMultiWindowMode(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowMultiWindowMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public allowTaskManager(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.allowTaskManager"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearAllNotifications()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.clearAllNotifications"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v2, "KioskMode"

    const-string v3, "Failed to clear notification bar"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_20
    return v1
.end method

.method public disableKioskMode()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.disableKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v1

    const-string v2, "KioskMode"

    const-string v3, "Failed talking with kiosk mode service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.DISABLE_KIOSK_MODE_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    const/16 v4, -0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public disableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.disableKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_44

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/knox/kiosk/KioskMode$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/knox/kiosk/KioskMode$3;-><init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/IKioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Lcom/samsung/android/knox/kiosk/KioskMode$4;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/knox/kiosk/KioskMode$4;-><init>(Lcom/samsung/android/knox/kiosk/KioskMode;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Interrupt occured while trying to disable kiosk mode"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_44

    instance-of v4, v3, Ljava/lang/SecurityException;

    if-nez v4, :cond_40

    goto :goto_44

    :cond_40
    move-object v4, v3

    check-cast v4, Ljava/lang/SecurityException;

    throw v4

    :cond_44
    :goto_44
    return-void
.end method

.method public enableKioskMode()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.enableKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "com.sec.android.kiosk"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v1

    const-string v2, "KioskMode"

    const-string v3, "Failed talking with kiosk mode service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    const/16 v4, -0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public enableKioskMode(Lcom/samsung/android/knox/kiosk/KioskSetting;)V
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.enableKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isEnableKioskModeAllowed()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "KioskMode"

    const-string v1, "call enableKioskMode is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_52

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/knox/kiosk/KioskMode$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/knox/kiosk/KioskMode$1;-><init>(Lcom/samsung/android/knox/kiosk/KioskMode;Lcom/samsung/android/knox/kiosk/KioskSetting;Lcom/samsung/android/knox/kiosk/IKioskMode;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Lcom/samsung/android/knox/kiosk/KioskMode$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/knox/kiosk/KioskMode$2;-><init>(Lcom/samsung/android/knox/kiosk/KioskMode;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_35
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_41

    :catch_39
    move-exception v3

    const-string v4, "KioskMode"

    const-string v5, "Interrupt occured while trying to enable kiosk mode"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_41
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_52

    instance-of v4, v3, Ljava/lang/SecurityException;

    if-nez v4, :cond_4e

    goto :goto_52

    :cond_4e
    move-object v4, v3

    check-cast v4, Ljava/lang/SecurityException;

    throw v4

    :cond_52
    :goto_52
    return-void
.end method

.method public enableKioskMode(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.enableKioskMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v1

    const-string v2, "KioskMode"

    const-string v3, "Failed talking with kiosk mode service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.intent.extra.KIOSK_RESULT"

    const/16 v4, -0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public getAllBlockedHardwareKeys()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getAllBlockedHardwareKeys(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getBlockedEdgeScreen()I
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_21

    const-string v0, "25"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19

    return v1

    :catch_19
    move-exception v1

    const-string v2, "KioskMode"

    const-string v3, "Failed talking with Kiosk mode service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public getHardwareKeyList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getHardwareKeyList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getKioskHomePackage()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideNavigationBar(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.hideNavigationBar"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public hideStatusBar(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.hideStatusBar"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public hideSystemBar(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.hideSystemBar"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public isAirCommandModeAllowed()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.isAirCommandModeAllowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "KioskMode"

    const-string v3, "Failed talking with Kiosk mode service"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    return v2
.end method

.method public isAirViewModeAllowed()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.isAirViewModeAllowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_e
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    const-string v1, "KioskMode"

    const-string v3, "Failed talking with Kiosk mode service"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    return v2
.end method

.method public isHardwareKeyAllowed(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isHardwareKeyAllowed(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isKioskModeEnabled()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiWindowModeAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiWindowModeAllowed(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isNavigationBarHidden()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBarHidden()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isStatusBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isSystemBarHidden()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isSystemBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskManagerAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_18

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public isTaskManagerAllowed(Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public wipeRecentTasks()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "KioskMode.wipeRecentTasks"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getService()Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mKioskService:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "Failed talking with kiosk mode service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
