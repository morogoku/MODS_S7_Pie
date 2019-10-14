.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final AOD_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.aod.AODManagerService"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final COVER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cover.CoverManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030407

.field private static final DRK_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.DeviceRootKeyService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final FRIENDS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.friends.FrsService"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.things.services.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PACM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.PACMService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SALES_CODE_CHANGED_FILE:Ljava/lang/String; = "/efs/imei/salesCodeChanged"

.field private static final SDP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.SdpManagerService$Lifecycle"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SEPUNION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sepunion.SemUnionMasterService"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIMA_KEYSTORE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final TYPE_TIMA_VERSION:I = -0xdffffe

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.WearConfigManagerService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final isMobilePaymentAllowed:Z = true

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field private ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mLedBackCoverService:Lcom/android/server/ledcovereditor/LedBackCoverService;

.field private mLedCoverEditorService:Lcom/android/server/ledcovereditor/LedCoverEditorService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

.field private mSamsungNotesService:Lcom/android/server/samsungnotes/SamsungNotesService;

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSmartThingsService:Lcom/android/server/smartthings/SmartThingsService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mVoiceNoteService:Lcom/android/server/voicenote/VoiceNoteService;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field pkmService:Lcom/android/server/PKMService;

.field sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

.field safeModeValueForTheme:Z

.field private timaService:Lcom/android/server/TimaService;

.field ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->IS_OVERLAY_THEMES_ENABLED:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iput-object v0, p0, Lcom/android/server/SystemServer;->pkmService:Lcom/android/server/PKMService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    return-void
.end method

.method private createSystemContext()V
    .registers 4

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030407

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .registers 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 4

    :try_start_0
    const-string v0, "SystemServer"

    const-string v1, "SecondaryZygotePreload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "SecondaryZygotePreload"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "SystemServer"

    const-string v2, "Unable to preload default resources"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception v0

    const-string v1, "SystemServer"

    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    return-void
.end method

.method static synthetic lambda$startOtherServices$2(Landroid/content/Context;)V
    .registers 8

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "Hqm Service"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    :try_start_f
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/hqm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v2, "com.samsung.android.hqm.HqmManagerService"

    invoke-virtual {v1, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const-string v5, "HqmManagerService"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3b} :catch_3c

    goto :goto_48

    :catch_3c
    move-exception v1

    const-string v2, "SystemServer"

    const-string/jumbo v3, "hqm.jar not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_48
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method static synthetic lambda$startOtherServices$3()V
    .registers 4

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic lambda$startOtherServices$4(Lcom/android/server/SystemServer;)V
    .registers 5

    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public static synthetic lambda$startOtherServices$5(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/net/UrspService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 41

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const-string v0, "SystemServer"

    const-string v5, "Making services ready"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x226

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_21
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_2e

    :catch_27
    move-exception v0

    const-string/jumbo v5, "observing native crashes"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v5, "WebViewFactoryPreparation"

    const/4 v0, 0x0

    iget-boolean v6, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_4b

    iget-object v6, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v6, :cond_4b

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    new-instance v7, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;

    invoke-direct {v7, v1}, Lcom/android/server/-$$Lambda$SystemServer$72PvntN28skIthlRYR9w5EhsdX8;-><init>(Lcom/android/server/SystemServer;)V

    const-string v8, "WebViewFactoryPreparation"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    :cond_4b
    move-object v6, v0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.type.automotive"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_65
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_6a
    invoke-static/range {p1 .. p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_76

    :catch_6e
    move-exception v0

    move-object v7, v0

    const-string/jumbo v7, "starting System UI"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_76
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_79
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->startThemeService()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_85

    :catch_7d
    move-exception v0

    move-object v7, v0

    const-string/jumbo v7, "starting Theme Service"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_85
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_8a
    const-string v0, "SystemServer"

    const-string v7, "!@Boot_DEBUG: start networkManagement"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_96

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/NetworkManagementService;->systemReady()V

    :cond_96
    const-string v0, "SystemServer"

    const-string v8, "!@Boot_DEBUG: end networkManagement"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_9d} :catch_9e

    goto :goto_a5

    :catch_9e
    move-exception v0

    const-string/jumbo v8, "making Network Managment Service ready"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a5
    const/4 v0, 0x0

    if-eqz v3, :cond_ad

    nop

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    :cond_ad
    move-object v8, v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p5, :cond_c5

    :try_start_b8
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_c5

    :catch_bc
    move-exception v0

    move-object v9, v0

    const-string/jumbo v9, "making IpSec Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c6

    :cond_c5
    :goto_c5
    nop

    :goto_c6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p6, :cond_dd

    :try_start_d0
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_dd

    :catch_d4
    move-exception v0

    move-object v10, v0

    const-string/jumbo v10, "making Network Stats Service ready"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_de

    :cond_dd
    :goto_dd
    nop

    :goto_de
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p7, :cond_f5

    :try_start_e8
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_f5

    :catch_ec
    move-exception v0

    move-object v11, v0

    const-string/jumbo v11, "making Connectivity Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f6

    :cond_f5
    :goto_f5
    nop

    :goto_f6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v3, :cond_10d

    :try_start_100
    invoke-virtual {v3, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_103} :catch_104

    goto :goto_10d

    :catch_104
    move-exception v0

    move-object v11, v0

    const-string/jumbo v11, "making Network Policy Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10e

    :cond_10d
    :goto_10d
    nop

    :goto_10e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeUrspServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p8, :cond_125

    :try_start_118
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/UrspService;->systemReady()V
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_11b} :catch_11c

    goto :goto_125

    :catch_11c
    move-exception v0

    move-object v12, v0

    const-string/jumbo v12, "making ursp Service ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_126

    :cond_125
    :goto_125
    nop

    :goto_126
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "PackageManagerService waitForAppDataPrepared"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v6, :cond_151

    const-string v0, "WebViewFactoryPreparation"

    invoke-static {v6, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    :cond_151
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0x258

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p9, :cond_16e

    :try_start_162
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_165
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_165} :catch_166

    goto :goto_16e

    :catch_166
    move-exception v0

    move-object v13, v0

    const-string v13, "Notifying Location Service running"

    invoke-direct {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16f

    :cond_16e
    :goto_16e
    nop

    :goto_16f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const/4 v15, 0x0

    if-eqz p10, :cond_1bd

    :try_start_17a
    const-string v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v13, "systemReady"

    const/4 v14, 0x2

    new-array v3, v14, [Ljava/lang/Class;

    const-class v17, Landroid/content/Context;

    aput-object v17, v3, v15

    const-class v17, Landroid/os/IBinder;

    const/16 v16, 0x1

    aput-object v17, v3, v16

    invoke-virtual {v0, v13, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v2, v13, v15

    const/4 v14, 0x1

    aput-object p10, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19f
    .catch Ljava/lang/Throwable; {:try_start_17a .. :try_end_19f} :catch_1a0

    goto :goto_1bd

    :catch_1a0
    move-exception v0

    const-string v3, "SystemServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "making SLocation Service ready :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1be

    :cond_1bd
    :goto_1bd
    nop

    :goto_1be
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p11, :cond_1d4

    :try_start_1c8
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_1cb
    .catch Ljava/lang/Throwable; {:try_start_1c8 .. :try_end_1cb} :catch_1cc

    goto :goto_1d4

    :catch_1cc
    move-exception v0

    move-object v13, v0

    const-string v13, "Notifying CountryDetectorService running"

    invoke-direct {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d5

    :cond_1d4
    :goto_1d4
    nop

    :goto_1d5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p12, :cond_1eb

    :try_start_1df
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_1e2
    .catch Ljava/lang/Throwable; {:try_start_1df .. :try_end_1e2} :catch_1e3

    goto :goto_1eb

    :catch_1e3
    move-exception v0

    move-object v14, v0

    const-string v14, "Notifying NetworkTimeService running"

    invoke-direct {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ec

    :cond_1eb
    :goto_1eb
    nop

    :goto_1ec
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeCommonTimeManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p13, :cond_203

    :try_start_1f6
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_1f9
    .catch Ljava/lang/Throwable; {:try_start_1f6 .. :try_end_1f9} :catch_1fa

    goto :goto_203

    :catch_1fa
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying CommonTimeManagementService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_204

    :cond_203
    :goto_203
    nop

    :goto_204
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p14, :cond_21b

    :try_start_20e
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_211
    .catch Ljava/lang/Throwable; {:try_start_20e .. :try_end_211} :catch_212

    goto :goto_21b

    :catch_212
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying InputManagerService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21c

    :cond_21b
    :goto_21b
    nop

    :goto_21c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p15, :cond_233

    :try_start_226
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_229
    .catch Ljava/lang/Throwable; {:try_start_226 .. :try_end_229} :catch_22a

    goto :goto_233

    :catch_22a
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_234

    :cond_233
    :goto_233
    nop

    :goto_234
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p16, :cond_24b

    :try_start_23e
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_241
    .catch Ljava/lang/Throwable; {:try_start_23e .. :try_end_241} :catch_242

    goto :goto_24b

    :catch_242
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying MediaRouterService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24c

    :cond_24b
    :goto_24b
    nop

    :goto_24c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "EmergencyModeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_254
    invoke-static/range {p1 .. p1}, Lcom/android/server/SystemServer;->startEmergencyModeService(Landroid/content/Context;)V
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_257} :catch_258

    goto :goto_25f

    :catch_258
    move-exception v0

    move-object v3, v0

    const-string v3, "Notifying EmergencyModeService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_25f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p17, :cond_276

    :try_start_269
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_26c
    .catch Ljava/lang/Throwable; {:try_start_269 .. :try_end_26c} :catch_26d

    goto :goto_276

    :catch_26d
    move-exception v0

    move-object/from16 v17, v0

    const-string v3, "Notifying MmsService running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_277

    :cond_276
    :goto_276
    nop

    :goto_277
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_27f
    const-string/jumbo v0, "incident"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    if-eqz v0, :cond_28f

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_28f
    .catch Ljava/lang/Throwable; {:try_start_27f .. :try_end_28f} :catch_290

    :cond_28f
    goto :goto_296

    :catch_290
    move-exception v0

    const-string v3, "Notifying incident daemon running"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_296
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "mDNIe"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_29f
    const-string v0, "SystemServer"

    const-string/jumbo v3, "mDNIe Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v3, "com.samsung.android.hardware.display.SemMdnieManagerService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_2b9

    const-string v3, "SystemServer"

    const-string v4, "Mdnie Service does not exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d7

    :cond_2b9
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v4, v15

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object/from16 v18, v0

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v15

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v4, "mDNIe"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d7
    .catch Ljava/lang/Throwable; {:try_start_29f .. :try_end_2d7} :catch_2d8

    :goto_2d7
    goto :goto_2de

    :catch_2d8
    move-exception v0

    const-string v3, "Failed To Start Mdnie Service "

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2de
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SemDisplaySolution"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_2e6
    const-string v0, "SystemServer"

    const-string v3, "SemDisplaySolution Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v3, "com.samsung.android.displaysolution.SemDisplaySolutionManagerService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_2ff

    const-string v3, "SystemServer"

    const-string v4, "SemDisplaySolution Service does not exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31c

    :cond_2ff
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v4, v15

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object/from16 v19, v0

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v15

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v4, "DisplaySolution"

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31c
    .catch Ljava/lang/Throwable; {:try_start_2e6 .. :try_end_31c} :catch_31d

    :goto_31c
    goto :goto_323

    :catch_31d
    move-exception v0

    const-string v3, "Failed To Start SemDisplaySolution Service "

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_323
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SemAllAroundSensing"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_32b
    const-string v0, "SystemServer"

    const-string v3, "SemAllAroundSensing Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v3, "com.samsung.android.allaroundsensing.SemAllAroundSensingManagerService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    if-nez v0, :cond_344

    const-string v3, "SystemServer"

    const-string v4, "SemAllAroundSensing Service does not exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_361

    :cond_344
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v4, v15

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    move-object/from16 v20, v0

    const-string v0, "AAS"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_361
    .catch Ljava/lang/Throwable; {:try_start_32b .. :try_end_361} :catch_362

    :goto_361
    goto :goto_368

    :catch_362
    move-exception v0

    const-string v3, "Failed To Start SemAllAroundSensing Service "

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_368
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz p18, :cond_37e

    :try_start_372
    invoke-virtual/range {p18 .. p18}, Lcom/samsung/accessory/manager/SAccessoryManager;->systemReady()V
    :try_end_375
    .catch Ljava/lang/Exception; {:try_start_372 .. :try_end_375} :catch_376

    goto :goto_37e

    :catch_376
    move-exception v0

    move-object v4, v0

    const-string v4, "Notifying SAccessoryManager running"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37f

    :cond_37e
    :goto_37e
    nop

    :goto_37f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "Remote Mobile Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "Remote Mobile Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    const/4 v4, 0x0

    :try_start_391
    invoke-static {v2, v4, v0}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_394
    .catch Ljava/lang/Throwable; {:try_start_391 .. :try_end_394} :catch_395

    goto :goto_3a0

    :catch_395
    move-exception v0

    move-object v4, v0

    const-string v4, "SystemServer"

    move-object/from16 v21, v0

    const-string v0, "Failed to add Remote Mobile Manager."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1d

    move v2, v4

    goto :goto_1e

    :cond_1d
    move v2, v1

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-le v3, v4, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2f

    :cond_2e
    move-object v3, v5

    :goto_2f
    if-eqz v3, :cond_75

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_75

    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_75

    move-object v7, v5

    :try_start_48
    invoke-static {v6, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4e

    move-object v7, v1

    goto :goto_56

    :catch_4e
    move-exception v1

    const-string v5, "SystemServer"

    const-string v8, "Error reading uncrypt package file"

    invoke-static {v5, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    if-eqz v7, :cond_75

    const-string v1, "/data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/recovery/block.map"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "SystemServer"

    const-string v4, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_75
    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8c
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private run()V
    .registers 12

    :try_start_0
    const-string v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_1a
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_29
    const-string v1, "SystemServer"

    const-string v2, "Timezone not set; setting to GMT."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.sys.timezone"

    const-string v2, "GMT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const-string/jumbo v1, "persist.sys.language"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.locale"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.language"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.localevar"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    invoke-static {v1}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    const-string v3, "SystemServer"

    const-string v4, "!@Boot: Entered the Android system server!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0xbc2

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_90

    const-string v4, "boot_system_server_init"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_90
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    invoke-static {v1}, Landroid/os/Environment;->setUserRequired(Z)V

    invoke-static {v1}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    invoke-static {v1}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    const-string v1, "android_servers"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    new-instance v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    const-class v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v1, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_102
    .catchall {:try_start_0 .. :try_end_102} :catchall_1c7

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    nop

    :try_start_106
    const-string v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_117} :catch_1b3
    .catchall {:try_start_106 .. :try_end_117} :catchall_1b1

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    nop

    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    :try_start_11e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.voc"

    const/16 v3, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v0, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_139

    const-string/jumbo v1, "sys.members.installed"

    const-string/jumbo v3, "true"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_139} :catch_13a

    :cond_139
    goto :goto_13b

    :catch_13a
    move-exception v0

    :goto_13b
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_19f

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_19f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "boot_system_server_ready"

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const v1, 0xea60

    const v2, 0xea60

    if-le v0, v2, :cond_19f

    const-string v2, "SystemServerTiming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_19f

    const-string/jumbo v2, "ro.boot.debug_level"

    const-string v3, "0x4f4c"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x494d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    const-string v2, "SystemServer"

    const-string v3, "!@ late systemserver initialization, so make dumpstate_booting_delay"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "dumpstate.options"

    const-string v3, "bugreportboot"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ctl.start"

    const-string v3, "compact_dump"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19f
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1b1
    move-exception v0

    goto :goto_1c3

    :catch_1b3
    move-exception v0

    :try_start_1b4
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "System"

    const-string v2, "************ Failure starting system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_1c3
    .catchall {:try_start_1b4 .. :try_end_1c3} :catchall_1b1

    :goto_1c3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    :catchall_1c7
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startBootstrapServices()V
    .registers 10

    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ReadingSystemConfig"

    const-string v1, "ReadingSystemConfig"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v1

    sget-object v2, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    const-string v3, "ReadingSystemConfig"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v1, "StartInstaller"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "DeviceIdentifiersPolicyService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartActivityManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartPowerManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "InitPowerManagement"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartRecoverySystemService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    const-string v2, "StartLightsService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartPdpService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pdp/PdpService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartSidekickService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v2, "config.enable_sidekick_graphics"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c9

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_c9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "StartDisplayManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v2, "WaitForDisplay"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_10a

    const-string v4, "SystemServer"

    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_11b

    :cond_10a
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11b

    const-string v4, "SystemServer"

    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    :cond_11b
    :goto_11b
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v6, 0x0

    if-nez v4, :cond_12a

    const-string v4, "boot_package_manager_init_start"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v6, v4, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_12a
    const-string v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v4, "SystemServer"

    const-string v7, "!@Boot: Start PackageManagerService"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v7, :cond_13d

    goto :goto_13e

    :cond_13d
    move v5, v3

    :goto_13e
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v5, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "SystemServer"

    const-string v5, "!@Boot: End PackageManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sys.boot.end_package"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_17c

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v4

    if-nez v4, :cond_17c

    const-string v4, "boot_package_manager_init_ready"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-static {v6, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_17c
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_1a6

    const-string v4, "config.disable_otadexopt"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1a6

    const-string v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_18d
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_194
    .catch Ljava/lang/Throwable; {:try_start_18d .. :try_end_194} :catch_19a
    .catchall {:try_start_18d .. :try_end_194} :catchall_198

    :goto_194
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_1a6

    :catchall_198
    move-exception v3

    goto :goto_1a2

    :catch_19a
    move-exception v5

    :try_start_19b
    const-string/jumbo v6, "starting OtaDexOptService"

    invoke-direct {p0, v6, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a1
    .catchall {:try_start_19b .. :try_end_1a1} :catchall_198

    goto :goto_194

    :goto_1a2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v3

    :cond_1a6
    :goto_1a6
    const-string v4, "StartUserManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v4, "InitAttributerCache"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v4, "SetSystemProcess"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v4, "StartOverlayManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v4, "StartOverlayManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/om/OverlayManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v5, "persist.sys.displayinset.top"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_207

    invoke-virtual {v4}, Lcom/android/server/om/OverlayManagerService;->updateSystemUiContext()V

    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    :cond_207
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v3

    sget-object v5, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v6, "StartSensorService"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    return-void
.end method

.method private startCoreServices()V
    .registers 3

    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_49
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    return-void
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_24
    :try_start_24
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->readyEmergencyMode()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e

    :cond_2d
    goto :goto_45

    :catch_2e
    move-exception v0

    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting emergency service failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .registers 121

    move-object/from16 v3, p0

    iget-object v2, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v26, 0x0

    const/4 v9, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v0, "config.disable_noncore"

    move-object/from16 v37, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    const-string v0, "config.disable_systemtextclassifier"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    const-string v0, "config.disable_slices"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    const-string v0, "config.enable_lefty"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v45

    const-string v0, "config.disable_bluetooth"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8d

    const-string v0, "debug.crash_system"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_8d

    :cond_87
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8d
    :goto_8d
    move-object/from16 v47, v10

    move-object/from16 v48, v11

    :try_start_91
    const-string v0, "SecondaryZygotePreload"

    move-object/from16 v51, v0

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    const-string v10, "SecondaryZygotePreload"

    invoke-virtual {v0, v1, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v1, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v1, v2}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartKeyChainSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSchedulingPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "scheduling_policy"

    new-instance v1, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v1}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTelecomLoaderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTelephonyRegistry"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_f1
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_f1} :catch_b4e

    move-object v1, v0

    :try_start_f2
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartEntropyMixer"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SystemServer"

    const-string v5, "EngineeringModeService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EngineeringModeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_f2 .. :try_end_116} :catch_b3f

    :try_start_116
    const-string v0, "EngineeringModeService"

    new-instance v5, Lcom/android/server/EngineeringModeService;

    invoke-direct {v5, v2}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_120
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_120} :catch_131
    .catch Ljava/lang/RuntimeException; {:try_start_116 .. :try_end_120} :catch_121

    goto :goto_13c

    :catch_121
    move-exception v0

    move-object/from16 v55, v1

    :goto_124
    move-object/from16 v59, v4

    :goto_126
    move-object v1, v7

    :goto_127
    move-object/from16 v56, v8

    :goto_129
    move-object/from16 v60, v9

    :goto_12b
    move-object/from16 v9, v37

    :goto_12d
    move-object/from16 v37, v6

    goto/16 :goto_b5c

    :catch_131
    move-exception v0

    :try_start_132
    const-string v5, "SystemServer"

    const-string v10, "Failed to add EngineeringModeService."

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_13c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SystemServer"

    const-string v5, "PACMService"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PACMService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/RuntimeException; {:try_start_132 .. :try_end_14b} :catch_b3f

    :try_start_14b
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.PACMService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_152} :catch_153
    .catch Ljava/lang/RuntimeException; {:try_start_14b .. :try_end_152} :catch_121

    goto :goto_15e

    :catch_153
    move-exception v0

    :try_start_154
    const-string v5, "SystemServer"

    const-string v10, "Failed to add PACMService."

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_15e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SamsungKeyProvisioningManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_166
    .catch Ljava/lang/RuntimeException; {:try_start_154 .. :try_end_166} :catch_b3f

    :try_start_166
    const-string v0, "SamsungKeyProvisioningManagerService"

    new-instance v5, Lcom/android/server/SamsungKeyProvisioningManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/SamsungKeyProvisioningManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_170
    .catch Ljava/lang/Throwable; {:try_start_166 .. :try_end_170} :catch_171
    .catch Ljava/lang/RuntimeException; {:try_start_166 .. :try_end_170} :catch_121

    goto :goto_179

    :catch_171
    move-exception v0

    :try_start_172
    const-string v5, "SystemServer"

    const-string v10, "Failure starting Samsung Key Provisioning Manager Service "

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_179
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "2"

    const-string/jumbo v5, "ro.config.ifaaversion"

    const-string v10, "0"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v10, v0

    const-string v0, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ro.config.ifaaversion] value is : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a2
    .catch Ljava/lang/RuntimeException; {:try_start_172 .. :try_end_1a2} :catch_b3f

    if-eqz v10, :cond_1f0

    :try_start_1a4
    const-string v0, "com.android.server.IfaaService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v43, 0x0

    aput-object v5, v11, v43

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v11, "IfaaService"
    :try_end_1b9
    .catch Ljava/lang/Throwable; {:try_start_1a4 .. :try_end_1b9} :catch_1df
    .catch Ljava/lang/RuntimeException; {:try_start_1a4 .. :try_end_1b9} :catch_1cf

    move-object/from16 v56, v0

    move-object/from16 v55, v1

    const/4 v1, 0x1

    :try_start_1be
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v11, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1cc
    .catch Ljava/lang/Throwable; {:try_start_1be .. :try_end_1cc} :catch_1cd
    .catch Ljava/lang/RuntimeException; {:try_start_1be .. :try_end_1cc} :catch_1ed

    goto :goto_1f2

    :catch_1cd
    move-exception v0

    goto :goto_1e2

    :catch_1cf
    move-exception v0

    move-object/from16 v55, v1

    move-object/from16 v59, v4

    move-object v1, v7

    move-object/from16 v56, v8

    move-object/from16 v60, v9

    move-object/from16 v9, v37

    move-object/from16 v37, v6

    goto/16 :goto_b5c

    :catch_1df
    move-exception v0

    move-object/from16 v55, v1

    :goto_1e2
    :try_start_1e2
    const-string v1, "SystemServer"

    const-string v5, "Failed to add IfaaService."

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1ec
    .catch Ljava/lang/RuntimeException; {:try_start_1e2 .. :try_end_1ec} :catch_1ed

    goto :goto_1f2

    :catch_1ed
    move-exception v0

    goto/16 :goto_124

    :cond_1f0
    move-object/from16 v55, v1

    :goto_1f2
    :try_start_1f2
    const-string v0, "SystemServer"

    const-string v1, "TigerSskdsService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.config.tigerversion"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    const-string v0, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tiger need start service: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21d
    .catch Ljava/lang/RuntimeException; {:try_start_1f2 .. :try_end_21d} :catch_b3b

    const/4 v5, 0x3

    if-lt v1, v5, :cond_301

    :try_start_220
    const-string v0, "com.samsung.android.service.TigerSskdsService.SskdsDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v11, "isDeviceRegistered"
    :try_end_229
    .catch Ljava/lang/ClassNotFoundException; {:try_start_220 .. :try_end_229} :catch_2f4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_220 .. :try_end_229} :catch_2e7
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_229} :catch_2da
    .catch Ljava/lang/Throwable; {:try_start_220 .. :try_end_229} :catch_2cd
    .catch Ljava/lang/RuntimeException; {:try_start_220 .. :try_end_229} :catch_b3b

    move/from16 v58, v1

    const/4 v5, 0x0

    :try_start_22c
    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v11, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11
    :try_end_236
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22c .. :try_end_236} :catch_2c9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22c .. :try_end_236} :catch_2c5
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_236} :catch_2c1
    .catch Ljava/lang/Throwable; {:try_start_22c .. :try_end_236} :catch_2bd
    .catch Ljava/lang/RuntimeException; {:try_start_22c .. :try_end_236} :catch_b3b

    move-object/from16 v59, v4

    :try_start_238
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "SystemServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v60, v1

    const-string v1, "Tiger Device Registered: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_28f

    const-string v1, "SystemServer"

    const-string v5, "Start TigerSskdsService..."

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.server.TigerSskdsService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v43, 0x0

    aput-object v5, v11, v43

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string v11, "TigerSskdsService"

    move-object/from16 v61, v1

    move/from16 v62, v4

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v4, v1

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v11, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_300

    :cond_28f
    move/from16 v62, v4

    const-string v1, "FINISH"

    const-string/jumbo v4, "persist.sys.setupwizard"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_300

    const-string v1, "clearSFS"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_238 .. :try_end_2b4} :catch_2bb
    .catch Ljava/lang/NoSuchMethodException; {:try_start_238 .. :try_end_2b4} :catch_2b9
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_2b4} :catch_2b7
    .catch Ljava/lang/Throwable; {:try_start_238 .. :try_end_2b4} :catch_2b5
    .catch Ljava/lang/RuntimeException; {:try_start_238 .. :try_end_2b4} :catch_b38

    goto :goto_300

    :catch_2b5
    move-exception v0

    goto :goto_2d2

    :catch_2b7
    move-exception v0

    goto :goto_2df

    :catch_2b9
    move-exception v0

    goto :goto_2ec

    :catch_2bb
    move-exception v0

    goto :goto_2f9

    :catch_2bd
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_2d2

    :catch_2c1
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_2df

    :catch_2c5
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_2ec

    :catch_2c9
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_2f9

    :catch_2cd
    move-exception v0

    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_2d2
    :try_start_2d2
    const-string v1, "SystemServer"

    const-string v4, "Failed to add TigerSskdsService."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_305

    :catch_2da
    move-exception v0

    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_2df
    const-string v1, "SystemServer"

    const-string v4, "Failed to get device status, error "

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_300

    :catch_2e7
    move-exception v0

    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_2ec
    const-string v1, "SystemServer"

    const-string v4, "Tiger \'isDeviceRegistered()\' method not found."

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_300

    :catch_2f4
    move-exception v0

    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_2f9
    const-string v1, "SystemServer"

    const-string v4, "Class TigerSskdsService.SskdsDevice not found!"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_300
    :goto_300
    goto :goto_305

    :cond_301
    move/from16 v58, v1

    move-object/from16 v59, v4

    :goto_305
    const-string v0, "SystemServer"

    const-string v1, "ActivationTeeService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SystemServer"

    const-string v1, "Reactive Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_313
    .catch Ljava/lang/RuntimeException; {:try_start_2d2 .. :try_end_313} :catch_b38

    :try_start_313
    const-string v0, "ReactiveService"

    new-instance v1, Lcom/android/server/ReactiveService;

    invoke-direct {v1, v2}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31d
    .catch Ljava/lang/Throwable; {:try_start_313 .. :try_end_31d} :catch_31e
    .catch Ljava/lang/RuntimeException; {:try_start_313 .. :try_end_31d} :catch_b38

    goto :goto_326

    :catch_31e
    move-exception v0

    :try_start_31f
    const-string v1, "SystemServer"

    const-string v4, "Failed to add Reactive Service."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_326
    const-string v0, "VaultKeeper Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_32b
    .catch Ljava/lang/RuntimeException; {:try_start_31f .. :try_end_32b} :catch_b38

    :try_start_32b
    const-string v0, "VaultKeeperService"

    new-instance v1, Lcom/android/server/VaultKeeperService;

    invoke-direct {v1, v2}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_335
    .catch Ljava/lang/Throwable; {:try_start_32b .. :try_end_335} :catch_336
    .catch Ljava/lang/RuntimeException; {:try_start_32b .. :try_end_335} :catch_b38

    goto :goto_341

    :catch_336
    move-exception v0

    :try_start_337
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "SystemServer"

    const-string v4, "Failed to add VaultKeeper Service."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_341
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartPersonaManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_349
    .catch Ljava/lang/RuntimeException; {:try_start_337 .. :try_end_349} :catch_b38

    :try_start_349
    const-string v0, "SystemServer"

    const-string v1, "Persona Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    move-object v7, v0

    const-string/jumbo v0, "persona"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35b
    .catch Ljava/lang/Throwable; {:try_start_349 .. :try_end_35b} :catch_35c
    .catch Ljava/lang/RuntimeException; {:try_start_349 .. :try_end_35b} :catch_b38

    goto :goto_364

    :catch_35c
    move-exception v0

    :try_start_35d
    const-string v1, "SystemServer"

    const-string v4, "Failure starting Persona Manager Service"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_364
    .catch Ljava/lang/RuntimeException; {:try_start_35d .. :try_end_364} :catch_b38

    :goto_364
    move-object v1, v7

    const/4 v4, 0x1

    move v11, v4

    if-ne v4, v11, :cond_389

    :try_start_369
    const-string v0, "SystemServer"

    const-string v4, "KnoxMUMContainerPolicy Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V

    move-object v8, v0

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37c
    .catch Ljava/lang/Throwable; {:try_start_369 .. :try_end_37c} :catch_380
    .catch Ljava/lang/RuntimeException; {:try_start_369 .. :try_end_37c} :catch_37d

    goto :goto_389

    :catch_37d
    move-exception v0

    goto/16 :goto_127

    :catch_380
    move-exception v0

    :try_start_381
    const-string v4, "SystemServer"

    const-string v5, "Failure starting KnoxMUMContainerPolicy Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_388
    .catch Ljava/lang/RuntimeException; {:try_start_381 .. :try_end_388} :catch_37d

    goto :goto_38a

    :cond_389
    :goto_389
    nop

    :goto_38a
    move-object/from16 v56, v8

    const/4 v4, 0x1

    if-ne v4, v11, :cond_3af

    :try_start_38f
    const-string v0, "SystemServer"

    const-string v4, "KnoxMUMRCPPolicyService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    const-string/jumbo v0, "mum_container_rcp_policy"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a2
    .catch Ljava/lang/Throwable; {:try_start_38f .. :try_end_3a2} :catch_3a6
    .catch Ljava/lang/RuntimeException; {:try_start_38f .. :try_end_3a2} :catch_3a3

    goto :goto_3af

    :catch_3a3
    move-exception v0

    goto/16 :goto_129

    :catch_3a6
    move-exception v0

    :try_start_3a7
    const-string v4, "SystemServer"

    const-string v5, "Failure starting KnoxMUMRCPPolicyService"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3ae
    .catch Ljava/lang/RuntimeException; {:try_start_3a7 .. :try_end_3ae} :catch_3a3

    goto :goto_3b0

    :cond_3af
    :goto_3af
    nop

    :goto_3b0
    move-object/from16 v60, v9

    :try_start_3b2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_3b5
    .catch Ljava/lang/RuntimeException; {:try_start_3b2 .. :try_end_3b5} :catch_b30

    :try_start_3b5
    const-string v0, "SEAMS"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SEAMS"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SEAMService"

    new-instance v4, Lcom/android/server/SEAMService;

    invoke-direct {v4, v2}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_3ce
    .catch Ljava/lang/Throwable; {:try_start_3b5 .. :try_end_3ce} :catch_3d2
    .catch Ljava/lang/RuntimeException; {:try_start_3b5 .. :try_end_3ce} :catch_3cf

    goto :goto_3da

    :catch_3cf
    move-exception v0

    goto/16 :goto_12b

    :catch_3d2
    move-exception v0

    :try_start_3d3
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SE Android Manager Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3da
    .catch Ljava/lang/RuntimeException; {:try_start_3d3 .. :try_end_3da} :catch_b30

    :goto_3da
    :try_start_3da
    const-string v0, "SEDenial"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "sedenial"

    new-instance v4, Lcom/android/server/SEDenialService;

    invoke-direct {v4, v2}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v4, "SEDenial service added"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_3f4
    .catch Ljava/lang/Throwable; {:try_start_3da .. :try_end_3f4} :catch_3f5
    .catch Ljava/lang/RuntimeException; {:try_start_3da .. :try_end_3f4} :catch_3cf

    goto :goto_3fd

    :catch_3f5
    move-exception v0

    :try_start_3f6
    const-string v4, "SystemServer"

    const-string v5, "Registration of denial service failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3fd
    .catch Ljava/lang/RuntimeException; {:try_start_3f6 .. :try_end_3fd} :catch_b30

    :goto_3fd
    :try_start_3fd
    const-string v0, "SystemServer"

    const-string v4, "DualAppManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->getInstance(Landroid/content/Context;)Lcom/android/server/DualAppManagerService;

    move-result-object v0
    :try_end_408
    .catch Ljava/lang/Throwable; {:try_start_3fd .. :try_end_408} :catch_41c
    .catch Ljava/lang/RuntimeException; {:try_start_3fd .. :try_end_408} :catch_3cf

    move-object v4, v0

    :try_start_409
    const-string/jumbo v0, "dual_app"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40f
    .catch Ljava/lang/Throwable; {:try_start_409 .. :try_end_40f} :catch_418
    .catch Ljava/lang/RuntimeException; {:try_start_409 .. :try_end_40f} :catch_413

    nop

    move-object/from16 v27, v4

    goto :goto_423

    :catch_413
    move-exception v0

    move-object/from16 v27, v4

    goto/16 :goto_12b

    :catch_418
    move-exception v0

    move-object/from16 v27, v4

    goto :goto_41d

    :catch_41c
    move-exception v0

    :goto_41d
    :try_start_41d
    const-string/jumbo v4, "unable to start DualAppManagerService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_423
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "StartAccountManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartContentService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "InstallSystemProviders"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z
    :try_end_468
    .catch Ljava/lang/RuntimeException; {:try_start_41d .. :try_end_468} :catch_b30

    if-eqz v0, :cond_479

    :try_start_46a
    const-string v0, "UnionMasterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.sepunion.SemUnionMasterService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_479
    .catch Ljava/lang/RuntimeException; {:try_start_46a .. :try_end_479} :catch_3cf

    :cond_479
    :try_start_479
    const-string v0, "StartVibratorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/VibratorService;

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_483
    .catch Ljava/lang/RuntimeException; {:try_start_479 .. :try_end_483} :catch_b30

    move-object v9, v0

    :try_start_484
    const-string/jumbo v0, "vibrator"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_48d
    .catch Ljava/lang/RuntimeException; {:try_start_484 .. :try_end_48d} :catch_b27

    if-nez v45, :cond_4a6

    :try_start_48f
    const-string v0, "StartConsumerIrService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v2}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    const-string v0, "consumer_ir"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_4a2
    .catch Ljava/lang/RuntimeException; {:try_start_48f .. :try_end_4a2} :catch_4a3

    goto :goto_4a6

    :catch_4a3
    move-exception v0

    goto/16 :goto_12d

    :cond_4a6
    :goto_4a6
    move-object/from16 v37, v6

    :try_start_4a8
    const-string v0, "SystemServer"

    const-string v4, "SSRM Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4af
    .catch Ljava/lang/RuntimeException; {:try_start_4a8 .. :try_end_4af} :catch_b22

    :try_start_4af
    const-string v0, "SSRM Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/ssrm.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.android.server.ssrm.CustomFrequencyManagerService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-class v5, Landroid/app/IActivityManager;

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    iget-object v6, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    const-string v7, "CustomFrequencyManagerService"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_4f3
    .catch Ljava/lang/Exception; {:try_start_4af .. :try_end_4f3} :catch_4f7
    .catch Ljava/lang/RuntimeException; {:try_start_4af .. :try_end_4f3} :catch_4f4

    goto :goto_503

    :catch_4f4
    move-exception v0

    goto/16 :goto_b5c

    :catch_4f7
    move-exception v0

    :try_start_4f8
    const-string v4, "SystemServer"

    const-string/jumbo v5, "ssrm.jar not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_503
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0
    :try_end_507
    .catch Ljava/lang/RuntimeException; {:try_start_4f8 .. :try_end_507} :catch_b22

    :try_start_507
    new-instance v4, Lcom/android/server/-$$Lambda$SystemServer$cH_FacXLboZKirnIdTLWPzV_1Gc;

    invoke-direct {v4, v2}, Lcom/android/server/-$$Lambda$SystemServer$cH_FacXLboZKirnIdTLWPzV_1Gc;-><init>(Landroid/content/Context;)V
    :try_end_50c
    .catch Ljava/lang/RuntimeException; {:try_start_507 .. :try_end_50c} :catch_50d

    goto :goto_513

    :catch_50d
    move-exception v0

    move-object/from16 v63, v1

    move-object v1, v9

    goto/16 :goto_b1e

    :goto_513
    :try_start_513
    const-string v5, "Hqm Service"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    const-string v0, "0"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_528
    .catch Ljava/lang/RuntimeException; {:try_start_513 .. :try_end_528} :catch_b22

    if-nez v0, :cond_564

    :try_start_52a
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/hcm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.hcm.HcmManagerService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v7

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    const-string v7, "HcmManagerService"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_557
    .catch Ljava/lang/Exception; {:try_start_52a .. :try_end_557} :catch_558
    .catch Ljava/lang/RuntimeException; {:try_start_52a .. :try_end_557} :catch_4f4

    goto :goto_564

    :catch_558
    move-exception v0

    :try_start_559
    const-string v4, "SystemServer"

    const-string/jumbo v5, "hcm.jar not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_564
    .catch Ljava/lang/RuntimeException; {:try_start_559 .. :try_end_564} :catch_4f4

    :cond_564
    :goto_564
    :try_start_564
    const-string v0, "StartAlarmManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SemMlDapService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.samsung.feature.mirrorlink_fw"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_582
    .catch Ljava/lang/RuntimeException; {:try_start_564 .. :try_end_582} :catch_b22

    if-eqz v0, :cond_5b4

    :try_start_584
    const-string v0, "SemMLDAPService"

    new-instance v4, Lcom/samsung/android/dapservice/MlDapService;

    invoke-direct {v4, v2}, Lcom/samsung/android/dapservice/MlDapService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v4, "SemMlDapService(SemMirrorLinkDapService) added"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_595
    .catch Ljava/lang/Throwable; {:try_start_584 .. :try_end_595} :catch_596
    .catch Ljava/lang/RuntimeException; {:try_start_584 .. :try_end_595} :catch_4f4

    goto :goto_5b4

    :catch_596
    move-exception v0

    :try_start_597
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registration of MlDap service failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b4
    .catch Ljava/lang/RuntimeException; {:try_start_597 .. :try_end_5b4} :catch_4f4

    :cond_5b4
    :goto_5b4
    :try_start_5b4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "InitWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    move-object v8, v0

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v2, v0}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartInputManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5d3
    .catch Ljava/lang/RuntimeException; {:try_start_5b4 .. :try_end_5d3} :catch_b22

    move-object v7, v0

    :try_start_5d4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_5e1
    .catch Ljava/lang/RuntimeException; {:try_start_5d4 .. :try_end_5e1} :catch_b14

    if-eqz v0, :cond_602

    :try_start_5e3
    const-string v0, "Context Aware Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "Context Aware Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "context_aware"

    new-instance v4, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v4, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_5fc
    .catch Ljava/lang/RuntimeException; {:try_start_5e3 .. :try_end_5fc} :catch_5fd

    goto :goto_602

    :catch_5fd
    move-exception v0

    move-object/from16 v59, v7

    goto/16 :goto_b5c

    :cond_602
    :goto_602
    :try_start_602
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_60c
    .catch Ljava/lang/Exception; {:try_start_602 .. :try_end_60c} :catch_66f
    .catch Ljava/lang/RuntimeException; {:try_start_602 .. :try_end_60c} :catch_668

    if-nez v0, :cond_622

    :try_start_60e
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.scontext_lite"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_618
    .catch Ljava/lang/Exception; {:try_start_60e .. :try_end_618} :catch_61e
    .catch Ljava/lang/RuntimeException; {:try_start_60e .. :try_end_618} :catch_5fd

    if-eqz v0, :cond_61b

    goto :goto_622

    :cond_61b
    move-object/from16 v63, v1

    goto :goto_665

    :catch_61e
    move-exception v0

    move-object/from16 v63, v1

    goto :goto_672

    :cond_622
    :goto_622
    :try_start_622
    const-string v0, "SemContextService  Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SemContextService Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/semcontextservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.hardware.context.SemContextService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v43, 0x0

    aput-object v5, v6, v43

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string/jumbo v6, "scontext"
    :try_end_64f
    .catch Ljava/lang/Exception; {:try_start_622 .. :try_end_64f} :catch_66f
    .catch Ljava/lang/RuntimeException; {:try_start_622 .. :try_end_64f} :catch_668

    move-object/from16 v64, v0

    move-object/from16 v63, v1

    const/4 v1, 0x1

    :try_start_654
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_665
    .catch Ljava/lang/Exception; {:try_start_654 .. :try_end_665} :catch_666
    .catch Ljava/lang/RuntimeException; {:try_start_654 .. :try_end_665} :catch_68d

    :goto_665
    goto :goto_679

    :catch_666
    move-exception v0

    goto :goto_672

    :catch_668
    move-exception v0

    move-object/from16 v63, v1

    move-object/from16 v59, v7

    goto/16 :goto_b37

    :catch_66f
    move-exception v0

    move-object/from16 v63, v1

    :goto_672
    :try_start_672
    const-string v1, "SystemServer"

    const-string v4, "Failure starting SemContextService"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_679
    const-string v0, "SystemServer"

    const-string v1, "DeviceRootKeyService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DeviceRootKeyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_685
    .catch Ljava/lang/RuntimeException; {:try_start_672 .. :try_end_685} :catch_b0b

    :try_start_685
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.DeviceRootKeyService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_68c
    .catch Ljava/lang/Throwable; {:try_start_685 .. :try_end_68c} :catch_692
    .catch Ljava/lang/RuntimeException; {:try_start_685 .. :try_end_68c} :catch_68d

    goto :goto_69d

    :catch_68d
    move-exception v0

    move-object/from16 v59, v7

    goto/16 :goto_b1f

    :catch_692
    move-exception v0

    :try_start_693
    const-string v1, "SystemServer"

    const-string v4, "Failed to add DeviceRootKeyService."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_69d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    const-string v0, "3.0"

    const-string/jumbo v4, "ro.config.timaversion"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6bf
    .catch Ljava/lang/RuntimeException; {:try_start_693 .. :try_end_6bf} :catch_b0b

    move/from16 v59, v0

    if-eqz v1, :cond_7d3

    const/4 v0, 0x0

    :try_start_6c4
    new-instance v4, Lcom/android/server/IcccManagerService;

    invoke-direct {v4, v2}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "iccc"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string/jumbo v5, "initialization"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d7
    .catch Ljava/lang/Exception; {:try_start_6c4 .. :try_end_6d7} :catch_735
    .catch Ljava/lang/RuntimeException; {:try_start_6c4 .. :try_end_6d7} :catch_68d

    :try_start_6d7
    const-string/jumbo v0, "ro.boot.svb.ver"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "SVB1.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_708

    invoke-virtual {v4}, Lcom/android/server/IcccManagerService;->getTrustedBootData()I

    move-result v5

    const-string v6, "SystemServer"

    move-object/from16 v65, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6f3
    .catch Ljava/lang/Exception; {:try_start_6d7 .. :try_end_6f3} :catch_70b
    .catch Ljava/lang/RuntimeException; {:try_start_6d7 .. :try_end_6f3} :catch_68d

    move/from16 v66, v1

    :try_start_6f5
    const-string/jumbo v1, "getTrustedBootData result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_705
    .catch Ljava/lang/Exception; {:try_start_6f5 .. :try_end_705} :catch_706
    .catch Ljava/lang/RuntimeException; {:try_start_6f5 .. :try_end_705} :catch_68d

    goto :goto_70a

    :catch_706
    move-exception v0

    goto :goto_70e

    :cond_708
    move/from16 v66, v1

    :goto_70a
    goto :goto_71a

    :catch_70b
    move-exception v0

    move/from16 v66, v1

    :goto_70e
    :try_start_70e
    const-string/jumbo v1, "icccManager"

    const-string/jumbo v5, "exception caught"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_71a
    .catch Ljava/lang/Exception; {:try_start_70e .. :try_end_71a} :catch_733
    .catch Ljava/lang/RuntimeException; {:try_start_70e .. :try_end_71a} :catch_68d

    :goto_71a
    if-eqz v59, :cond_732

    const v0, -0xdffffe

    const/4 v1, 0x3

    :try_start_720
    invoke-virtual {v4, v0, v1}, Lcom/android/server/IcccManagerService;->setSecureData(II)I
    :try_end_723
    .catch Ljava/lang/Exception; {:try_start_720 .. :try_end_723} :catch_724
    .catch Ljava/lang/RuntimeException; {:try_start_720 .. :try_end_723} :catch_68d

    goto :goto_732

    :catch_724
    move-exception v0

    move-object v1, v0

    :try_start_726
    const-string/jumbo v1, "icccManager"

    const-string/jumbo v5, "exception caught"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_732
    .catch Ljava/lang/Exception; {:try_start_726 .. :try_end_732} :catch_733
    .catch Ljava/lang/RuntimeException; {:try_start_726 .. :try_end_732} :catch_68d

    :cond_732
    :goto_732
    goto :goto_742

    :catch_733
    move-exception v0

    goto :goto_738

    :catch_735
    move-exception v0

    move/from16 v66, v1

    :goto_738
    :try_start_738
    const-string v1, "SystemServer"

    const-string v4, "Unable to add ICCC Service "

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_742
    .catch Ljava/lang/RuntimeException; {:try_start_738 .. :try_end_742} :catch_68d

    :goto_742
    :try_start_742
    const-string v0, "SystemServer"

    const-string v1, "TIMA Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TIMA Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/TimaService;

    invoke-direct {v0, v2}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    const-string/jumbo v0, "tima"

    iget-object v1, v3, Lcom/android/server/SystemServer;->timaService:Lcom/android/server/TimaService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.enterprise.keystore.TimaKeystoreService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_767
    .catch Ljava/lang/Throwable; {:try_start_742 .. :try_end_767} :catch_768
    .catch Ljava/lang/RuntimeException; {:try_start_742 .. :try_end_767} :catch_68d

    goto :goto_76f

    :catch_768
    move-exception v0

    :try_start_769
    const-string/jumbo v1, "starting TimaService except PKM service"

    invoke-direct {v3, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76f
    .catch Ljava/lang/RuntimeException; {:try_start_769 .. :try_end_76f} :catch_68d

    :goto_76f
    :try_start_76f
    const-string v0, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v1, "SystemServer"

    const-string v4, "Added TimaKesytore provider"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v1

    if-eqz v1, :cond_7a1

    const-string v1, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider;

    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v4, "SystemServer"

    const-string v5, "Added FipsTimaKesytore provider"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a1
    .catch Ljava/lang/Exception; {:try_start_76f .. :try_end_7a1} :catch_7a2
    .catch Ljava/lang/RuntimeException; {:try_start_76f .. :try_end_7a1} :catch_68d

    :cond_7a1
    goto :goto_7ad

    :catch_7a2
    move-exception v0

    :try_start_7a3
    const-string v1, "SystemServer"

    const-string v4, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7ad
    .catch Ljava/lang/RuntimeException; {:try_start_7a3 .. :try_end_7ad} :catch_68d

    :goto_7ad
    nop

    :try_start_7ae
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const-string/jumbo v0, "knox_ccm_policy"

    iget-object v1, v3, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knox_ccm_policy"

    iget-object v1, v3, Lcom/android/server/SystemServer;->ccmService:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_7c6
    .catch Ljava/lang/Exception; {:try_start_7ae .. :try_end_7c6} :catch_7c7
    .catch Ljava/lang/RuntimeException; {:try_start_7ae .. :try_end_7c6} :catch_68d

    goto :goto_7d5

    :catch_7c7
    move-exception v0

    :try_start_7c8
    const-string v1, "SystemServer"

    const-string v4, "Failed to add ccm policy service"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d2
    .catch Ljava/lang/RuntimeException; {:try_start_7c8 .. :try_end_7d2} :catch_68d

    goto :goto_7d5

    :cond_7d3
    move/from16 v66, v1

    :goto_7d5
    :try_start_7d5
    const-string v0, "Motion Recognition Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_7da
    .catch Ljava/lang/RuntimeException; {:try_start_7d5 .. :try_end_7da} :catch_b0b

    :try_start_7da
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_82a

    const-string v1, "SystemServer"

    const-string v4, "PackageManager is not null!!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.feature.motionrecognition_service"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82a

    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.gesture.MotionRecognitionService"

    invoke-virtual {v1, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v43, 0x0

    aput-object v5, v6, v43

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const-string/jumbo v6, "motion_recognition"

    move-object/from16 v68, v0

    move-object/from16 v67, v1

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v1, "MotionRecognitionService Service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82a
    .catch Ljava/lang/Exception; {:try_start_7da .. :try_end_82a} :catch_82b
    .catch Ljava/lang/RuntimeException; {:try_start_7da .. :try_end_82a} :catch_68d

    :cond_82a
    goto :goto_833

    :catch_82b
    move-exception v0

    :try_start_82c
    const-string v1, "SystemServer"

    const-string v4, "Failure starting MotionRecognitionService"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_833
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "BarBeamService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.feature.barcode_emulator"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_843
    .catch Ljava/lang/RuntimeException; {:try_start_82c .. :try_end_843} :catch_b0b

    if-eqz v0, :cond_85f

    :try_start_845
    const-string v0, "SystemServer"

    const-string v1, "BarBeamService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/BarBeamService;

    invoke-direct {v0, v2}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    const-string v1, "barbeam"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_856
    .catch Ljava/lang/Throwable; {:try_start_845 .. :try_end_856} :catch_857
    .catch Ljava/lang/RuntimeException; {:try_start_845 .. :try_end_856} :catch_68d

    goto :goto_85f

    :catch_857
    move-exception v0

    :try_start_858
    const-string v1, "SystemServer"

    const-string v4, "Failure starting BarBeam Service"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85f
    .catch Ljava/lang/RuntimeException; {:try_start_858 .. :try_end_85f} :catch_68d

    :cond_85f
    :goto_85f
    :try_start_85f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWindowManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v1, "StartSensorService"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_878

    const/4 v6, 0x1

    goto :goto_879

    :cond_878
    const/4 v6, 0x0

    :goto_879
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v1, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v5}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V
    :try_end_884
    .catch Ljava/lang/RuntimeException; {:try_start_85f .. :try_end_884} :catch_b0b

    move-object v4, v2

    move-object/from16 v57, v5

    move-object v5, v7

    move/from16 v69, v10

    move-object v10, v7

    move v7, v0

    move-object/from16 v61, v8

    move v8, v1

    move-object v1, v9

    move-object/from16 v9, v57

    :try_start_892
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_896
    .catch Ljava/lang/RuntimeException; {:try_start_892 .. :try_end_896} :catch_b06

    move-object v4, v0

    :try_start_897
    const-string/jumbo v0, "window"

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-string/jumbo v0, "input"

    const/4 v5, 0x1

    invoke-static {v0, v10, v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SetWindowManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v5, Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$JQH6ND0PqyyiRiz7lXLvUmRhwRM;

    const-string v6, "StartHidlServices"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    if-nez v45, :cond_8de

    const-string v0, "StartVrManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_8de
    const-string v0, "StartGearVrManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-wide/32 v5, 0x80000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    const-string v0, "SemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "OBERTHUR"

    const-string v5, "GEMALTO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_913

    const-string v0, "OBERTHUR"

    const-string v5, "NXP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_913

    const-string v0, "OBERTHUR"

    const-string v5, "OBERTHUR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_911
    .catch Ljava/lang/RuntimeException; {:try_start_897 .. :try_end_911} :catch_b01

    if-eqz v0, :cond_926

    :cond_913
    :try_start_913
    const-string v0, "SemService"

    new-instance v5, Lcom/android/server/SemService;

    invoke-direct {v5, v2}, Lcom/android/server/SemService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_91d
    .catch Ljava/lang/Throwable; {:try_start_913 .. :try_end_91d} :catch_91e
    .catch Ljava/lang/RuntimeException; {:try_start_913 .. :try_end_91d} :catch_b01

    goto :goto_926

    :catch_91e
    move-exception v0

    :try_start_91f
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SemService "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_926
    :goto_926
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.samsung.android.authfw"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94c

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.samsung.android.feature.samsungfidouaf"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94c

    const-string v0, ""

    const-string/jumbo v5, "v1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_967

    :cond_94c
    const-string v0, "SemAuthnrService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_951
    .catch Ljava/lang/RuntimeException; {:try_start_91f .. :try_end_951} :catch_b01

    :try_start_951
    const-string v0, "SemAuthnrService"

    new-instance v5, Lcom/samsung/android/authnrservice/service/SemAuthnrService;

    invoke-direct {v5, v2}, Lcom/samsung/android/authnrservice/service/SemAuthnrService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_95b
    .catch Ljava/lang/Throwable; {:try_start_951 .. :try_end_95b} :catch_95c
    .catch Ljava/lang/RuntimeException; {:try_start_951 .. :try_end_95b} :catch_b01

    goto :goto_964

    :catch_95c
    move-exception v0

    :try_start_95d
    const-string v5, "SystemServer"

    const-string v6, "Failed to add SemAuthnrService."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_964
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_967
    const-string v0, "StartInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual {v10}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v44, :cond_990

    const-string v0, "SystemServer"

    const-string v5, "No Bluetooth Service (emulator)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9ca

    :cond_990
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_99d

    const-string v0, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9ca

    :cond_99d
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9b1

    const-string v0, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9ca

    :cond_9b1
    if-eqz v46, :cond_9bb

    const-string v0, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9ca

    :cond_9bb
    const-string v0, "StartBluetoothService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_9ca
    const-string v0, "Bluetooth Secure Mode Manager Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v5, "Bluetooth Secure Mode Manager Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth_secure_mode_manager"

    new-instance v5, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v5, v2}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "IpConnectivityMetrics"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "NetworkWatchlistService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "PinnerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_a10
    .catch Ljava/lang/RuntimeException; {:try_start_95d .. :try_end_a10} :catch_b01

    :try_start_a10
    const-string v0, "SystemServer"

    const-string v5, "Email Keystore Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "emailksproxy"

    new-instance v5, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v5, v2}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a22
    .catch Ljava/lang/Throwable; {:try_start_a10 .. :try_end_a22} :catch_a23
    .catch Ljava/lang/RuntimeException; {:try_start_a10 .. :try_end_a22} :catch_b01

    goto :goto_a2b

    :catch_a23
    move-exception v0

    :try_start_a24
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Email Keystore Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a2b
    const-string v0, "Encryption service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/DirEncryptService;

    invoke-direct {v0, v2}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_a35
    .catch Ljava/lang/RuntimeException; {:try_start_a24 .. :try_end_a35} :catch_b01

    move-object v5, v0

    :try_start_a36
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_a41

    const-string v0, "DirEncryptService"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a41
    .catch Ljava/lang/Throwable; {:try_start_a36 .. :try_end_a41} :catch_a4d
    .catch Ljava/lang/RuntimeException; {:try_start_a36 .. :try_end_a41} :catch_a45

    :cond_a41
    nop

    move-object/from16 v25, v5

    goto :goto_a58

    :catch_a45
    move-exception v0

    move-object v9, v1

    move-object/from16 v18, v4

    move-object/from16 v25, v5

    goto/16 :goto_b08

    :catch_a4d
    move-exception v0

    :try_start_a4e
    const-string v6, "SystemServer"

    const-string v7, "Failure starting DirEncryptService"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a55
    .catch Ljava/lang/RuntimeException; {:try_start_a4e .. :try_end_a55} :catch_a45

    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_a58
    :try_start_a58
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SatsService: Secure AT Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v5, "SatsService: Secure AT Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a67
    .catch Ljava/lang/RuntimeException; {:try_start_a58 .. :try_end_a67} :catch_b01

    :try_start_a67
    const-string v0, "SatsService"

    new-instance v5, Lcom/android/server/SatsService;

    invoke-direct {v5, v2}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a71
    .catch Ljava/lang/Throwable; {:try_start_a67 .. :try_end_a71} :catch_a72
    .catch Ljava/lang/RuntimeException; {:try_start_a67 .. :try_end_a71} :catch_b01

    goto :goto_a7a

    :catch_a72
    move-exception v0

    :try_start_a73
    const-string v5, "SystemServer"

    const-string v6, "Failed to add SatsService."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a7a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "SystemServer"

    const-string v5, "RCP Manager Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a84
    .catch Ljava/lang/RuntimeException; {:try_start_a73 .. :try_end_a84} :catch_b01

    :try_start_a84
    new-instance v0, Lcom/android/server/RCPManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a89
    .catch Ljava/lang/Throwable; {:try_start_a84 .. :try_end_a89} :catch_aa0
    .catch Ljava/lang/RuntimeException; {:try_start_a84 .. :try_end_a89} :catch_b01

    move-object v5, v0

    :try_start_a8a
    const-string/jumbo v0, "rcp"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a90
    .catch Ljava/lang/Throwable; {:try_start_a8a .. :try_end_a90} :catch_a9c
    .catch Ljava/lang/RuntimeException; {:try_start_a8a .. :try_end_a90} :catch_a94

    nop

    move-object/from16 v26, v5

    goto :goto_aa8

    :catch_a94
    move-exception v0

    move-object v9, v1

    move-object/from16 v18, v4

    move-object/from16 v26, v5

    goto/16 :goto_b08

    :catch_a9c
    move-exception v0

    move-object/from16 v26, v5

    goto :goto_aa1

    :catch_aa0
    move-exception v0

    :goto_aa1
    :try_start_aa1
    const-string v5, "SystemServer"

    const-string v6, "Failure starting RCP Manager Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_aa8
    const-string v0, "Samsung Accessory Manager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V
    :try_end_aad
    .catch Ljava/lang/RuntimeException; {:try_start_aa1 .. :try_end_aad} :catch_b01

    :try_start_aad
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_ad6

    const-string v5, "com.sec.feature.saccessorymanager"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad6

    const-string v5, "SystemServer"

    const-string v6, "Samsung Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {v5, v2, v10}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    iput-object v5, v3, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    const-string/jumbo v5, "saccessory_manager"

    iget-object v6, v3, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v5, v3, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v10, v5}, Lcom/android/server/input/InputManagerService;->setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    :try_end_ad6
    .catch Ljava/lang/Throwable; {:try_start_aad .. :try_end_ad6} :catch_ad7
    .catch Ljava/lang/RuntimeException; {:try_start_aad .. :try_end_ad6} :catch_b01

    :cond_ad6
    goto :goto_ade

    :catch_ad7
    move-exception v0

    :try_start_ad8
    const-string/jumbo v5, "starting SAccessoryManager"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_ade
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_ae1
    .catch Ljava/lang/RuntimeException; {:try_start_ad8 .. :try_end_ae1} :catch_b01

    :try_start_ae1
    const-string v0, "SystemServer"

    const-string v5, "SYSINT not supported in product"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae8
    .catch Ljava/lang/Exception; {:try_start_ae1 .. :try_end_ae8} :catch_ae9
    .catch Ljava/lang/RuntimeException; {:try_start_ae1 .. :try_end_ae8} :catch_b01

    goto :goto_af1

    :catch_ae9
    move-exception v0

    :try_start_aea
    const-string v5, "SystemServer"

    const-string v6, "SYSINT not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af1
    .catch Ljava/lang/RuntimeException; {:try_start_aea .. :try_end_af1} :catch_b01

    :goto_af1
    nop

    move-object v9, v1

    move-object v1, v4

    move-object v11, v10

    move-object/from16 v10, v25

    move-object/from16 v5, v27

    move-object/from16 v7, v56

    move-object/from16 v6, v60

    move-object/from16 v8, v63

    goto/16 :goto_b77

    :catch_b01
    move-exception v0

    move-object v9, v1

    move-object/from16 v18, v4

    goto :goto_b08

    :catch_b06
    move-exception v0

    move-object v9, v1

    :goto_b08
    move-object/from16 v59, v10

    goto :goto_b1f

    :catch_b0b
    move-exception v0

    move-object v10, v7

    move-object v1, v9

    move-object/from16 v59, v10

    move-object/from16 v1, v63

    goto/16 :goto_b5c

    :catch_b14
    move-exception v0

    move-object/from16 v63, v1

    move-object v10, v7

    move-object v1, v9

    move-object/from16 v59, v10

    move-object/from16 v1, v63

    goto :goto_b5c

    :goto_b1e
    move-object v9, v1

    :goto_b1f
    move-object/from16 v1, v63

    goto :goto_b5c

    :catch_b22
    move-exception v0

    move-object/from16 v63, v1

    move-object v1, v9

    goto :goto_b2d

    :catch_b27
    move-exception v0

    move-object/from16 v63, v1

    move-object v1, v9

    move-object/from16 v37, v6

    :goto_b2d
    move-object/from16 v1, v63

    goto :goto_b5c

    :catch_b30
    move-exception v0

    move-object/from16 v63, v1

    move-object/from16 v9, v37

    move-object/from16 v37, v6

    :goto_b37
    goto :goto_b5c

    :catch_b38
    move-exception v0

    goto/16 :goto_126

    :catch_b3b
    move-exception v0

    move-object/from16 v59, v4

    goto :goto_b53

    :catch_b3f
    move-exception v0

    move-object/from16 v55, v1

    move-object/from16 v59, v4

    move-object v1, v7

    move-object/from16 v56, v8

    move-object/from16 v60, v9

    move-object/from16 v9, v37

    move-object/from16 v37, v6

    goto :goto_b5c

    :catch_b4e
    move-exception v0

    move-object/from16 v59, v4

    move-object/from16 v55, v5

    :goto_b53
    move-object v1, v7

    move-object/from16 v56, v8

    move-object/from16 v60, v9

    move-object/from16 v9, v37

    move-object/from16 v37, v6

    :goto_b5c
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v1

    move-object/from16 v1, v18

    move-object/from16 v10, v25

    move-object/from16 v5, v27

    move-object/from16 v7, v56

    move-object/from16 v11, v59

    move-object/from16 v6, v60

    :goto_b77
    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v51, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v70, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_bbc

    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_ba7
    const-string v0, "accessibility"

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bb1
    .catch Ljava/lang/Throwable; {:try_start_ba7 .. :try_end_bb1} :catch_bb2

    goto :goto_bb9

    :catch_bb2
    move-exception v0

    const-string/jumbo v4, "starting Accessibility Manager"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_bb9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_bbc
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_bc1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_bc4
    .catch Ljava/lang/Throwable; {:try_start_bc1 .. :try_end_bc4} :catch_bc5

    goto :goto_bcd

    :catch_bc5
    move-exception v0

    move-object v4, v0

    const-string/jumbo v4, "making display ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_bcd
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_bff

    :try_start_be0
    const-string v0, "SystemServer"

    const-string v4, "Add SEM_FM_RADIO_SERVICE"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FMPlayer"

    new-instance v4, Lcom/android/server/FMRadioService;

    invoke-direct {v4, v2}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v4, "FMRadio service added.."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf8
    .catch Ljava/lang/Throwable; {:try_start_be0 .. :try_end_bf8} :catch_bf9

    goto :goto_bff

    :catch_bf9
    move-exception v0

    const-string v4, "Failure starting FM Radio Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_bff
    :goto_bff
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_c72

    const-string v0, "0"

    const-string/jumbo v4, "system_init.startmountservice"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c72

    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_c18
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_c2a
    .catch Ljava/lang/Throwable; {:try_start_c18 .. :try_end_c2a} :catch_c2e

    nop

    move-object/from16 v47, v0

    goto :goto_c35

    :catch_c2e
    move-exception v0

    const-string/jumbo v4, "starting StorageManagerService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c35
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_c3d
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_c44
    .catch Ljava/lang/Throwable; {:try_start_c3d .. :try_end_c44} :catch_c45

    goto :goto_c4c

    :catch_c45
    move-exception v0

    const-string/jumbo v4, "starting StorageStatsService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c4c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "DirEncryptSerrvice"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_c54
    const-string v0, "SystemServer"

    const-string v4, "DirEncryptSerrvice"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_c67

    const-string v0, "SystemServer"

    const-string v4, "DirEncryptService.SystemReady"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_c67
    .catch Ljava/lang/Throwable; {:try_start_c54 .. :try_end_c67} :catch_c68

    :cond_c67
    goto :goto_c6f

    :catch_c68
    move-exception v0

    const-string/jumbo v4, "starting DirEncryption service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c6f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_c72
    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_c9a

    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_c8a
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_c8f
    .catch Ljava/lang/Throwable; {:try_start_c8a .. :try_end_c8f} :catch_c90

    goto :goto_c97

    :catch_c90
    move-exception v0

    const-string/jumbo v4, "update packages"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c97
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_c9a
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1876

    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_ca4
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_cb6
    .catch Ljava/lang/Throwable; {:try_start_ca4 .. :try_end_cb6} :catch_cba

    nop

    move-object/from16 v56, v0

    goto :goto_cc1

    :catch_cba
    move-exception v0

    const-string/jumbo v4, "starting LockSettingsService service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_cc1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    move/from16 v62, v0

    if-eqz v62, :cond_ce6

    const-string v0, "StartPersistentDataBlock"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_ce6
    if-nez v62, :cond_cee

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_cfd

    :cond_cee
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_cfd
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_d1b
    const-string v0, "HarmonyEAS service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "HarmonyEAS service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/HarmonyEASService;

    invoke-direct {v0, v2}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_d2c
    .catch Ljava/lang/Throwable; {:try_start_d1b .. :try_end_d2c} :catch_d4f

    move-object v4, v0

    :try_start_d2d
    const-string/jumbo v0, "harmony_eas_service"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"
    :try_end_d35
    .catch Ljava/lang/Throwable; {:try_start_d2d .. :try_end_d35} :catch_d49

    move-object/from16 v71, v4

    :try_start_d37
    const-string v4, "Harmony EAS service created..."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_d3f
    .catch Ljava/lang/Throwable; {:try_start_d37 .. :try_end_d3f} :catch_d45

    nop

    move-object/from16 v72, v5

    move-object/from16 v22, v71

    goto :goto_d59

    :catch_d45
    move-exception v0

    move-object/from16 v22, v71

    goto :goto_d50

    :catch_d49
    move-exception v0

    move-object/from16 v71, v4

    move-object/from16 v22, v71

    goto :goto_d50

    :catch_d4f
    move-exception v0

    :goto_d50
    const-string v4, "SystemServer"

    move-object/from16 v72, v5

    const-string v5, "Failure starting Harmony EAS service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d59
    :try_start_d59
    const-string v0, "SdpManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SdpManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.SdpManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    move-object/from16 v31, v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_d7c
    .catch Ljava/lang/Throwable; {:try_start_d59 .. :try_end_d7c} :catch_d7d

    goto :goto_d84

    :catch_d7d
    move-exception v0

    const-string/jumbo v4, "starting SdpManagerService service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d84
    :try_start_d84
    const-string v0, "SdpLogService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SdpLogService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/SdpLogService;

    invoke-direct {v0, v2}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_d95
    .catch Ljava/lang/Throwable; {:try_start_d84 .. :try_end_d95} :catch_da7

    move-object v4, v0

    :try_start_d96
    const-string/jumbo v0, "sdp_log"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_d9f
    .catch Ljava/lang/Throwable; {:try_start_d96 .. :try_end_d9f} :catch_da3

    nop

    move-object/from16 v32, v4

    goto :goto_daf

    :catch_da3
    move-exception v0

    move-object/from16 v32, v4

    goto :goto_da8

    :catch_da7
    move-exception v0

    :goto_da8
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SdpLogService Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_daf
    if-nez v45, :cond_dd3

    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_db6
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_dbb
    .catch Ljava/lang/Throwable; {:try_start_db6 .. :try_end_dbb} :catch_dc5

    move-object v4, v0

    :try_start_dbc
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_dc2
    .catch Ljava/lang/Throwable; {:try_start_dbc .. :try_end_dc2} :catch_dc3

    goto :goto_dce

    :catch_dc3
    move-exception v0

    goto :goto_dc8

    :catch_dc5
    move-exception v0

    move-object/from16 v4, v70

    :goto_dc8
    const-string/jumbo v5, "starting StatusBarManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_dce
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v70, v4

    :cond_dd3
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_de2
    const-string v0, "SemClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "SemClipboardService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "semclipboard"

    new-instance v4, Lcom/android/server/semclipboard/SemClipboardService;

    invoke-direct {v4, v2}, Lcom/android/server/semclipboard/SemClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_dfc
    .catch Ljava/lang/Throwable; {:try_start_de2 .. :try_end_dfc} :catch_dfd

    goto :goto_e04

    :catch_dfd
    move-exception v0

    const-string/jumbo v4, "starting SemClipboardService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e04
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e32

    :try_start_e10
    const-string v0, "DsmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "DsmsService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dsms"

    new-instance v4, Lcom/samsung/android/jdsms/DsmsService;

    invoke-direct {v4, v2}, Lcom/samsung/android/jdsms/DsmsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_e2a
    .catch Ljava/lang/Throwable; {:try_start_e10 .. :try_end_e2a} :catch_e2b

    goto :goto_e32

    :catch_e2b
    move-exception v0

    const-string/jumbo v4, "starting DsmsService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e32
    :goto_e32
    if-nez v38, :cond_e57

    :try_start_e34
    const-string v0, "SystemServer"

    const-string v4, "Enterprise Policy"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    move-object/from16 v58, v0

    const-string v0, "SystemServer"

    const-string v4, "Enterprise Policymanager service created..."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4f
    .catch Ljava/lang/Throwable; {:try_start_e34 .. :try_end_e4f} :catch_e50

    goto :goto_e57

    :catch_e50
    move-exception v0

    const-string/jumbo v4, "starting EnterpriseDeviceManagerService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e57
    :goto_e57
    if-nez v38, :cond_e8e

    :try_start_e59
    const-string v0, "SystemServer"

    const-string v4, "KnoxCustom Policy"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;-><init>(Landroid/content/Context;)V
    :try_end_e65
    .catch Ljava/lang/Throwable; {:try_start_e59 .. :try_end_e65} :catch_e80

    move-object v4, v0

    :try_start_e66
    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knoxcustom"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "SystemServer"

    const-string v5, "KnoxCustom Policy added."

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7a
    .catch Ljava/lang/Throwable; {:try_start_e66 .. :try_end_e7a} :catch_e7e

    nop

    move-object/from16 v59, v4

    goto :goto_e8e

    :catch_e7e
    move-exception v0

    goto :goto_e83

    :catch_e80
    move-exception v0

    move-object/from16 v4, v59

    :goto_e83
    const-string v5, "SystemServer"

    move-object/from16 v73, v4

    const-string v4, "Fail KnoxCustom Policy."

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v59, v73

    :cond_e8e
    :goto_e8e
    if-eqz v58, :cond_ead

    :try_start_e90
    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;-><init>(Landroid/content/Context;)V
    :try_end_e95
    .catch Ljava/lang/Throwable; {:try_start_e90 .. :try_end_e95} :catch_ea4

    move-object v4, v0

    :try_start_e96
    const-string/jumbo v0, "genericssoservice"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_e9d
    .catch Ljava/lang/Throwable; {:try_start_e96 .. :try_end_e9d} :catch_ea0

    move-object/from16 v34, v4

    goto :goto_ead

    :catch_ea0
    move-exception v0

    move-object/from16 v34, v4

    goto :goto_ea5

    :catch_ea4
    move-exception v0

    :goto_ea5
    const-string v4, "SystemServer"

    const-string v5, "Failure adding KNOX SSO services"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_eae

    :cond_ead
    :goto_ead
    nop

    :goto_eae
    if-eqz v58, :cond_ecd

    :try_start_eb0
    new-instance v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;-><init>(Landroid/content/Context;)V
    :try_end_eb5
    .catch Ljava/lang/Throwable; {:try_start_eb0 .. :try_end_eb5} :catch_ec4

    move-object v4, v0

    :try_start_eb6
    const-string/jumbo v0, "enterprise_shared_device_policy"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_ebd
    .catch Ljava/lang/Throwable; {:try_start_eb6 .. :try_end_ebd} :catch_ec0

    move-object/from16 v33, v4

    goto :goto_ecd

    :catch_ec0
    move-exception v0

    move-object/from16 v33, v4

    goto :goto_ec5

    :catch_ec4
    move-exception v0

    :goto_ec5
    const-string v4, "SystemServer"

    const-string v5, "Failure adding KNOX Shared Device service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ece

    :cond_ecd
    :goto_ecd
    nop

    :goto_ece
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_ee9

    :try_start_ed4
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "enterprise_billing_policy"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_ee0
    .catch Ljava/lang/Throwable; {:try_start_ed4 .. :try_end_ee0} :catch_ee1

    goto :goto_ee9

    :catch_ee1
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failure registering EnterpriseBillingPolicy service with EDM service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ee9
    :goto_ee9
    if-eqz v58, :cond_f17

    :try_start_eeb
    const-string v0, "Adding NetworkAnalyticsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "Adding NetworkAnalyticsService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;-><init>(Landroid/content/Context;)V
    :try_end_efc
    .catch Ljava/lang/Throwable; {:try_start_eeb .. :try_end_efc} :catch_f0e

    move-object v4, v0

    :try_start_efd
    const-string/jumbo v0, "knoxnap"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_f07
    .catch Ljava/lang/Throwable; {:try_start_efd .. :try_end_f07} :catch_f0a

    move-object/from16 v61, v4

    goto :goto_f17

    :catch_f0a
    move-exception v0

    move-object/from16 v61, v4

    goto :goto_f0f

    :catch_f0e
    move-exception v0

    :goto_f0f
    const-string v4, "SystemServer"

    const-string v5, "Failure starting EnterprisePremiumVpnService and NetworkAnalyticsService"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f18

    :cond_f17
    :goto_f17
    nop

    :goto_f18
    if-nez v38, :cond_f32

    :try_start_f1a
    const-string v0, "[KnoxAnalytics] System Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsSystemService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_f29
    .catch Ljava/lang/Throwable; {:try_start_f1a .. :try_end_f29} :catch_f2a

    goto :goto_f32

    :catch_f2a
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "[KnoxAnalytics] Failure starting System Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f32
    :goto_f32
    :try_start_f32
    const-string v0, "[SecureTimer] System Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/enterprise/securetimer/SecureTimerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_f41
    .catch Ljava/lang/Throwable; {:try_start_f32 .. :try_end_f41} :catch_f42

    goto :goto_f4a

    :catch_f42
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "[SecureTimer] Failure starting System Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f4a
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_f4f
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0
    :try_end_f53
    .catch Ljava/lang/Throwable; {:try_start_f4f .. :try_end_f53} :catch_f5d

    move-object v4, v0

    :try_start_f54
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f5a
    .catch Ljava/lang/Throwable; {:try_start_f54 .. :try_end_f5a} :catch_f5b

    goto :goto_f66

    :catch_f5b
    move-exception v0

    goto :goto_f60

    :catch_f5d
    move-exception v0

    move-object/from16 v4, v48

    :goto_f60
    const-string/jumbo v5, "starting NetworkManagement Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f66
    move-object v5, v4

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v58, :cond_fa6

    :try_start_f6c
    const-string v0, "Adding KnoxVpnEngineService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "SystemServer"

    const-string v4, "Adding KnoxVpnEngineService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V
    :try_end_f7d
    .catch Ljava/lang/Throwable; {:try_start_f6c .. :try_end_f7d} :catch_f9b

    move-object v4, v0

    :try_start_f7e
    const-string/jumbo v0, "knox_vpn_policy"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knox_vpn_policy"
    :try_end_f87
    .catch Ljava/lang/Throwable; {:try_start_f7e .. :try_end_f87} :catch_f95

    move-object/from16 v74, v6

    const/4 v6, 0x0

    :try_start_f8a
    invoke-static {v0, v4, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_f90
    .catch Ljava/lang/Throwable; {:try_start_f8a .. :try_end_f90} :catch_f91

    goto :goto_faa

    :catch_f91
    move-exception v0

    move-object/from16 v60, v4

    goto :goto_f9e

    :catch_f95
    move-exception v0

    move-object/from16 v74, v6

    move-object/from16 v60, v4

    goto :goto_f9e

    :catch_f9b
    move-exception v0

    move-object/from16 v74, v6

    :goto_f9e
    const-string v4, "SystemServer"

    const-string v6, "Failure starting KnoxVpnEngineService"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fac

    :cond_fa6
    move-object/from16 v74, v6

    move-object/from16 v4, v60

    :goto_faa
    move-object/from16 v60, v4

    :goto_fac
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_fb1
    invoke-static {v2}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v12, v0

    const-string/jumbo v0, "ipsec"

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fbc
    .catch Ljava/lang/Throwable; {:try_start_fb1 .. :try_end_fbc} :catch_fbd

    goto :goto_fc4

    :catch_fbd
    move-exception v0

    const-string/jumbo v4, "starting IpSec Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_fc4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v39, :cond_fe7

    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_fe7
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_ffb
    invoke-static {v2, v5}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0

    move-object v13, v0

    const-string/jumbo v0, "netstats"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1006
    .catch Ljava/lang/Throwable; {:try_start_ffb .. :try_end_1006} :catch_1007

    goto :goto_100e

    :catch_1007
    move-exception v0

    const-string/jumbo v4, "starting NetworkStats Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_100e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1016
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v14, v0

    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1024
    .catch Ljava/lang/Throwable; {:try_start_1016 .. :try_end_1024} :catch_1025

    goto :goto_102c

    :catch_1025
    move-exception v0

    const-string/jumbo v4, "starting NetworkPolicy Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_102c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartUrspService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1034
    new-instance v0, Lcom/android/server/net/UrspService;

    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2, v4, v13, v5}, Lcom/android/server/net/UrspService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V

    move-object v15, v0

    const-string/jumbo v0, "urspservice"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1042
    .catch Ljava/lang/Throwable; {:try_start_1034 .. :try_end_1042} :catch_1043

    goto :goto_104a

    :catch_1043
    move-exception v0

    const-string/jumbo v4, "starting URSP Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_104a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_10e7

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107b

    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_107b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1096

    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1096
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.aware"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b1

    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_10b1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.wifi.direct"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10cc

    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_10cc
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.lowpan"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e7

    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_10e7
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.ethernet"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10fb

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.usb.host"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_110a

    :cond_10fb
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_110a
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_1147

    const-string/jumbo v0, "ro.csc.country_code"

    const-string v4, ""

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1147

    const-string v0, "China"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1147

    const-string v0, "StartKnoxGuard"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1128
    const-string/jumbo v0, "knoxguard_service"

    new-instance v6, Lcom/samsung/android/knoxguard/service/KnoxGuardService;

    invoke-direct {v6, v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1133
    .catch Ljava/lang/Throwable; {:try_start_1128 .. :try_end_1133} :catch_1137

    nop

    move-object/from16 v75, v4

    goto :goto_1144

    :catch_1137
    move-exception v0

    const-string v6, "SystemServer"

    move-object/from16 v75, v4

    const-string v4, "Failed to add KnoxGuardService."

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1144
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1147
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_114c
    new-instance v0, Lcom/android/server/ConnectivityService;
    :try_end_114e
    .catch Ljava/lang/Throwable; {:try_start_114c .. :try_end_114e} :catch_1184

    move-object v4, v0

    move-object/from16 v48, v5

    move-object/from16 v6, v72

    move-object v5, v2

    move-object/from16 v76, v10

    move-object/from16 v77, v12

    move-object/from16 v10, v74

    move-object v12, v6

    move-object/from16 v6, v48

    move-object/from16 v78, v10

    move-object v10, v7

    move-object v7, v13

    move-object/from16 v79, v10

    move-object v10, v8

    move-object v8, v14

    move-object/from16 v80, v10

    move-object v10, v9

    move-object v9, v15

    :try_start_1169
    invoke-direct/range {v4 .. v9}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IUrspManager;)V
    :try_end_116c
    .catch Ljava/lang/Throwable; {:try_start_1169 .. :try_end_116c} :catch_1180

    move-object v4, v0

    :try_start_116d
    const-string v0, "connectivity"

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    invoke-virtual {v13, v4}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual {v14, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    invoke-virtual {v15, v4}, Lcom/android/server/net/UrspService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_117d
    .catch Ljava/lang/Throwable; {:try_start_116d .. :try_end_117d} :catch_117e

    goto :goto_119c

    :catch_117e
    move-exception v0

    goto :goto_1196

    :catch_1180
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_1196

    :catch_1184
    move-exception v0

    move-object/from16 v48, v5

    move-object/from16 v79, v7

    move-object/from16 v80, v8

    move-object/from16 v76, v10

    move-object/from16 v77, v12

    move-object/from16 v12, v72

    move-object/from16 v78, v74

    move-object v10, v9

    move-object/from16 v4, v16

    :goto_1196
    const-string/jumbo v5, "starting Connectivity Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_119c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_11a4
    invoke-static {v2}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_11a8
    .catch Ljava/lang/Throwable; {:try_start_11a4 .. :try_end_11a8} :catch_11b2

    move-object v5, v0

    :try_start_11a9
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11af
    .catch Ljava/lang/Throwable; {:try_start_11a9 .. :try_end_11af} :catch_11b0

    goto :goto_11bb

    :catch_11b0
    move-exception v0

    goto :goto_11b5

    :catch_11b2
    move-exception v0

    move-object/from16 v5, v17

    :goto_11b5
    const-string/jumbo v6, "starting Service Discovery Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11bb
    move-object/from16 v17, v5

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11ee

    :try_start_11cc
    const-string v0, "SystemServer"

    const-string v5, "Wi-Fi  Offload Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {v0, v2}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_11d8
    .catch Ljava/lang/Throwable; {:try_start_11cc .. :try_end_11d8} :catch_11e7

    move-object v5, v0

    :try_start_11d9
    const-string/jumbo v0, "wifioffload"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11df
    .catch Ljava/lang/Throwable; {:try_start_11d9 .. :try_end_11df} :catch_11e3

    nop

    move-object/from16 v30, v5

    goto :goto_11ee

    :catch_11e3
    move-exception v0

    move-object/from16 v30, v5

    goto :goto_11e8

    :catch_11e7
    move-exception v0

    :goto_11e8
    const-string/jumbo v5, "starting Wi-Fi Offload Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11ee
    :goto_11ee
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_11f3
    const-string/jumbo v0, "system_update"

    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11fe
    .catch Ljava/lang/Throwable; {:try_start_11f3 .. :try_end_11fe} :catch_11ff

    goto :goto_1206

    :catch_11ff
    move-exception v0

    const-string/jumbo v5, "starting SystemUpdateManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1206
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_120e
    const-string/jumbo v0, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v2}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1219
    .catch Ljava/lang/Throwable; {:try_start_120e .. :try_end_1219} :catch_121a

    goto :goto_1221

    :catch_121a
    move-exception v0

    const-string/jumbo v5, "starting UpdateLockService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1221
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {v2}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v18

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1255
    new-instance v0, Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_125a
    .catch Ljava/lang/Throwable; {:try_start_1255 .. :try_end_125a} :catch_1264

    move-object v5, v0

    :try_start_125b
    const-string/jumbo v0, "location"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1261
    .catch Ljava/lang/Throwable; {:try_start_125b .. :try_end_1261} :catch_1262

    goto :goto_126d

    :catch_1262
    move-exception v0

    goto :goto_1267

    :catch_1264
    move-exception v0

    move-object/from16 v5, v25

    :goto_1267
    const-string/jumbo v6, "starting Location Manager"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_126d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSLocationService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1275
    const-string v0, "SystemServer"

    const-string v6, "SLocation Manager"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.location.SLocationLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v9

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;
    :try_end_129d
    .catch Ljava/lang/Throwable; {:try_start_1275 .. :try_end_129d} :catch_12a7

    move-object v7, v8

    :try_start_129e
    const-string/jumbo v8, "sec_location"

    invoke-static {v8, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12a4
    .catch Ljava/lang/Throwable; {:try_start_129e .. :try_end_12a4} :catch_12a5

    goto :goto_12c4

    :catch_12a5
    move-exception v0

    goto :goto_12aa

    :catch_12a7
    move-exception v0

    move-object/from16 v7, v27

    :goto_12aa
    const-string v6, "SystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12c4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_12cc
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v2}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_12d1
    .catch Ljava/lang/Throwable; {:try_start_12cc .. :try_end_12d1} :catch_12da

    move-object v6, v0

    :try_start_12d2
    const-string v0, "country_detector"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12d7
    .catch Ljava/lang/Throwable; {:try_start_12d2 .. :try_end_12d7} :catch_12d8

    goto :goto_12e3

    :catch_12d8
    move-exception v0

    goto :goto_12dd

    :catch_12da
    move-exception v0

    move-object/from16 v6, v51

    :goto_12dd
    const-string/jumbo v8, "starting Country Detector"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12e3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-nez v45, :cond_12ff

    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_12ed
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_12f4
    .catch Ljava/lang/Throwable; {:try_start_12ed .. :try_end_12f4} :catch_12f5

    goto :goto_12fc

    :catch_12f5
    move-exception v0

    const-string/jumbo v8, "starting Search Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12fc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_12ff
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x1120075

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_131b

    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_131b
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.broadcastradio"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1343

    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1343
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v45, :cond_1363

    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1363
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1368
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v2, v11}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v11, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_1370
    .catch Ljava/lang/Throwable; {:try_start_1368 .. :try_end_1370} :catch_1371

    goto :goto_1378

    :catch_1371
    move-exception v0

    const-string/jumbo v8, "starting WiredAccessoryManager"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1378
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.midi"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1394

    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1394
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.usb.host"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13aa

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.usb.accessory"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13aa

    if-eqz v44, :cond_13b9

    :cond_13aa
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_13b9
    if-nez v45, :cond_13e4

    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_13c0
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v2}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_13c5
    .catch Ljava/lang/Throwable; {:try_start_13c0 .. :try_end_13c5} :catch_13d2

    move-object v8, v0

    :try_start_13c6
    const-string/jumbo v0, "serial"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13cc
    .catch Ljava/lang/Throwable; {:try_start_13c6 .. :try_end_13cc} :catch_13d0

    nop

    move-object/from16 v81, v4

    goto :goto_13de

    :catch_13d0
    move-exception v0

    goto :goto_13d5

    :catch_13d2
    move-exception v0

    move-object/from16 v8, v19

    :goto_13d5
    const-string v9, "SystemServer"

    move-object/from16 v81, v4

    const-string v4, "Failure starting SerialService"

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13de
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v19, v8

    goto :goto_13e6

    :cond_13e4
    move-object/from16 v81, v4

    :goto_13e6
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_13eb
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_13f0
    .catch Ljava/lang/Throwable; {:try_start_13eb .. :try_end_13f0} :catch_13fa

    move-object v4, v0

    :try_start_13f1
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13f7
    .catch Ljava/lang/Throwable; {:try_start_13f1 .. :try_end_13f7} :catch_13f8

    goto :goto_1404

    :catch_13f8
    move-exception v0

    goto :goto_13fd

    :catch_13fa
    move-exception v0

    move-object/from16 v4, v24

    :goto_13fd
    const-string v8, "SystemServer"

    const-string v9, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1404
    move-object/from16 v24, v4

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-static {v2}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_142d

    const-string v0, "StartNightDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_142d
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.backup"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1473

    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1473
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.app_widgets"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_148a

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x112005d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1499

    :cond_148a
    const-string v0, "StartAppWidgerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1499
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_14c1

    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_14c1
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "EDS Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "ro.SecEDS.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "SystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "false"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_156b

    :try_start_150a
    const-string v0, "SystemServer"

    const-string v8, "Starting SecEDSEnable Service"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v8, "com.android.server.SecExternalDisplayService"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1518
    .catch Ljava/lang/Throwable; {:try_start_150a .. :try_end_1518} :catch_155e

    move-object v0, v8

    if-nez v0, :cond_152e

    :try_start_151b
    const-string v8, "SystemServer"

    const-string/jumbo v9, "eds Service not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1523
    .catch Ljava/lang/Throwable; {:try_start_151b .. :try_end_1523} :catch_1528

    move-object/from16 v83, v4

    move-object/from16 v84, v5

    goto :goto_155b

    :catch_1528
    move-exception v0

    move-object/from16 v83, v4

    move-object/from16 v84, v5

    goto :goto_1563

    :cond_152e
    :try_start_152e
    const-string v8, "SystemServer"

    const-string/jumbo v9, "edsclass Service exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    move-object v8, v9

    const-class v9, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v9, v8, v16

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object/from16 v82, v0

    const-string v0, "SecExternalDisplayService"
    :try_end_1548
    .catch Ljava/lang/Throwable; {:try_start_152e .. :try_end_1548} :catch_155e

    move-object/from16 v83, v4

    move-object/from16 v84, v5

    const/4 v4, 0x1

    :try_start_154d
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_155b
    .catch Ljava/lang/Throwable; {:try_start_154d .. :try_end_155b} :catch_155c

    :goto_155b
    goto :goto_156f

    :catch_155c
    move-exception v0

    goto :goto_1563

    :catch_155e
    move-exception v0

    move-object/from16 v83, v4

    move-object/from16 v84, v5

    :goto_1563
    const-string v4, "SystemServer"

    const-string v5, "Failure starting eds Service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_156f

    :cond_156b
    move-object/from16 v83, v4

    move-object/from16 v84, v5

    :goto_156f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1577
    const-string/jumbo v0, "diskstats"

    new-instance v4, Lcom/android/server/DiskStatsService;

    invoke-direct {v4, v2}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1582
    .catch Ljava/lang/Throwable; {:try_start_1577 .. :try_end_1582} :catch_1583

    goto :goto_158a

    :catch_1583
    move-exception v0

    const-string/jumbo v4, "starting DiskStats Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_158a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_15a0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1120074

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15a0

    const/4 v0, 0x1

    goto :goto_15a1

    :cond_15a0
    const/4 v0, 0x0

    :goto_15a1
    move v4, v0

    if-eqz v4, :cond_15b3

    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_15b3
    if-nez v45, :cond_15d8

    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_15ba
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v2}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_15bf
    .catch Ljava/lang/Throwable; {:try_start_15ba .. :try_end_15bf} :catch_15ce

    move-object v5, v0

    :try_start_15c0
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15c6
    .catch Ljava/lang/Throwable; {:try_start_15c0 .. :try_end_15c6} :catch_15ca

    nop

    move-object/from16 v20, v5

    goto :goto_15d5

    :catch_15ca
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_15cf

    :catch_15ce
    move-exception v0

    :goto_15cf
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15d5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_15d8
    const-string v0, "StartCommonTimeManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_15dd
    new-instance v0, Lcom/android/server/CommonTimeManagementService;

    invoke-direct {v0, v2}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_15e2
    .catch Ljava/lang/Throwable; {:try_start_15dd .. :try_end_15e2} :catch_15eb

    move-object v5, v0

    :try_start_15e3
    const-string v0, "commontime_management"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15e8
    .catch Ljava/lang/Throwable; {:try_start_15e3 .. :try_end_15e8} :catch_15e9

    goto :goto_15f4

    :catch_15e9
    move-exception v0

    goto :goto_15ee

    :catch_15eb
    move-exception v0

    move-object/from16 v5, v21

    :goto_15ee
    const-string/jumbo v8, "starting CommonTimeManagementService service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15f4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_15fc
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v2}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_1601
    .catch Ljava/lang/Throwable; {:try_start_15fc .. :try_end_1601} :catch_1602

    goto :goto_1609

    :catch_1602
    move-exception v0

    const-string/jumbo v8, "starting CertBlacklister"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1609
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "graphicsstats"

    new-instance v8, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v8, v2}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_1653

    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "coverage"

    new-instance v8, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v8}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1653
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.print"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_166c

    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_166c
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.companion_device_setup"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1685

    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1685
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "CocktailBarService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-eq v0, v8, :cond_16d8

    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "trigger_restart_min_framework"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16d1

    const-string v8, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16c1

    goto :goto_16d1

    :cond_16c1
    const-string v8, "StartCoverService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.cover.CoverManagerService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_16d8

    :cond_16d1
    :goto_16d1
    const-string v8, "SystemServer"

    const-string v9, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16d8
    :goto_16d8
    const-string v0, "StartFriendsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.friends.FrsService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartMediaUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaUpdateService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_171e

    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_171e
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.live_tv"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1732

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.leanback"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1741

    :cond_1732
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1741
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.picture_in_picture"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_175a

    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_175a
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.software.leanback"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1773

    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1773
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1778
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v2}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_177d
    .catch Ljava/lang/Throwable; {:try_start_1778 .. :try_end_177d} :catch_1787

    move-object v8, v0

    :try_start_177e
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1784
    .catch Ljava/lang/Throwable; {:try_start_177e .. :try_end_1784} :catch_1785

    goto :goto_1790

    :catch_1785
    move-exception v0

    goto :goto_178a

    :catch_1787
    move-exception v0

    move-object/from16 v8, v57

    :goto_178a
    const-string/jumbo v9, "starting MediaRouterService"

    invoke-direct {v3, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1790
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.hardware.fingerprint"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17ac

    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_17ac
    const-string v0, "StartAODService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.aod.AODManagerService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_17c0
    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_17c3
    .catch Ljava/lang/Throwable; {:try_start_17c0 .. :try_end_17c3} :catch_17c4

    goto :goto_17cc

    :catch_17c4
    move-exception v0

    move-object v9, v0

    const-string/jumbo v9, "starting StartBackgroundDexOptService"

    invoke-direct {v3, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17cc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartPruneInstantAppsJobService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_17d4
    invoke-static {v2}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_17d7
    .catch Ljava/lang/Throwable; {:try_start_17d4 .. :try_end_17d7} :catch_17d8

    goto :goto_17df

    :catch_17d8
    move-exception v0

    move-object v9, v0

    const-string v9, "StartPruneInstantAppsJobService"

    invoke-direct {v3, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17df
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "PermissionMonitorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const/4 v9, 0x1

    if-eqz v9, :cond_1842

    :try_start_1817
    new-instance v0, Lcom/android/server/PermissionMonitor;

    invoke-direct {v0, v2}, Lcom/android/server/PermissionMonitor;-><init>(Landroid/content/Context;)V
    :try_end_181c
    .catch Ljava/lang/Throwable; {:try_start_1817 .. :try_end_181c} :catch_1838

    move-object/from16 v85, v0

    :try_start_181e
    const-string/jumbo v0, "permission.monitor"
    :try_end_1821
    .catch Ljava/lang/Throwable; {:try_start_181e .. :try_end_1821} :catch_1830

    move/from16 v86, v4

    move-object/from16 v4, v85

    :try_start_1825
    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1828
    .catch Ljava/lang/Throwable; {:try_start_1825 .. :try_end_1828} :catch_182c

    nop

    move-object/from16 v35, v4

    goto :goto_1844

    :catch_182c
    move-exception v0

    move-object/from16 v35, v4

    goto :goto_183b

    :catch_1830
    move-exception v0

    move/from16 v86, v4

    move-object/from16 v4, v85

    move-object/from16 v35, v4

    goto :goto_183b

    :catch_1838
    move-exception v0

    move/from16 v86, v4

    :goto_183b
    const-string/jumbo v4, "launch permission monitor service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1844

    :cond_1842
    move/from16 v86, v4

    :goto_1844
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    move-object/from16 v21, v13

    move-object/from16 v25, v17

    move-object/from16 v57, v18

    move-object/from16 v27, v19

    move-object/from16 v51, v34

    move-object/from16 v4, v56

    move-object/from16 v62, v59

    move-object/from16 v63, v60

    move-object/from16 v64, v61

    move-object/from16 v60, v6

    move-object/from16 v59, v7

    move-object/from16 v61, v8

    move-object/from16 v34, v30

    move-object/from16 v7, v31

    move-object/from16 v56, v35

    move-object/from16 v31, v5

    move-object/from16 v30, v20

    move-object/from16 v35, v33

    move-object/from16 v33, v24

    move-object/from16 v24, v15

    move-object/from16 v15, v32

    move-object/from16 v32, v22

    move-object/from16 v22, v14

    goto :goto_18b5

    :cond_1876
    move-object/from16 v78, v6

    move-object/from16 v79, v7

    move-object/from16 v80, v8

    move-object/from16 v76, v10

    move-object v4, v12

    move-object v12, v5

    move-object v10, v9

    move-object/from16 v77, v4

    move-object/from16 v81, v16

    move-object/from16 v84, v25

    move-object/from16 v7, v31

    move-object/from16 v4, v56

    move-object/from16 v62, v59

    move-object/from16 v63, v60

    move-object/from16 v64, v61

    move-object/from16 v25, v17

    move-object/from16 v31, v21

    move-object/from16 v59, v27

    move-object/from16 v56, v35

    move-object/from16 v60, v51

    move-object/from16 v61, v57

    move-object/from16 v21, v13

    move-object/from16 v57, v18

    move-object/from16 v27, v19

    move-object/from16 v35, v33

    move-object/from16 v51, v34

    move-object/from16 v33, v24

    move-object/from16 v34, v30

    move-object/from16 v24, v15

    move-object/from16 v30, v20

    move-object/from16 v15, v32

    move-object/from16 v32, v22

    move-object/from16 v22, v14

    :goto_18b5
    if-nez v45, :cond_18c6

    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_18c6
    if-eqz v45, :cond_191c

    const-string v0, "StartWearConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.WearConfigManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    if-eqz v42, :cond_190d

    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_190d
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_191c
    if-nez v41, :cond_192d

    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_192d
    if-nez v40, :cond_193e

    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_193e
    const-string v0, "StartSpenGestureManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1943
    const-string/jumbo v0, "spengestureservice"

    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {v5, v2, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_194e
    .catch Ljava/lang/Throwable; {:try_start_1943 .. :try_end_194e} :catch_194f

    goto :goto_1956

    :catch_194f
    move-exception v0

    const-string/jumbo v5, "starting SpenGestureManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1956
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.embedded"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1974

    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.things.services.IoTSystemService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1974
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "detectSafeMode()"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v14

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iput-boolean v14, v3, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    if-eqz v14, :cond_19ad

    const-string v0, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_19bc

    :cond_19ad
    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :goto_19bc
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "KT UCA Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/io/File;

    const-string v5, "/system/lib/libktuca2.so"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v65

    const-string v0, "KTC"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19e7

    const-string v0, "KOO"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0a

    :cond_19e7
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_1a0a

    if-eqz v65, :cond_1a0a

    :try_start_19ef
    const-string v0, "SystemServer"

    const-string v5, "KT UCA Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ktuca"

    new-instance v5, Landroid/ktuca/KtUcaService;

    invoke-direct {v5, v2}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a01
    .catch Ljava/lang/Throwable; {:try_start_19ef .. :try_end_1a01} :catch_1a02

    goto :goto_1a0a

    :catch_1a02
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure starting KT UCA Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a0a
    :goto_1a0a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/MmsServiceBroker;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "Mobile Payment Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1a26
    const-string v0, "SystemServer"

    const-string v5, "Mobile Payment Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mobile_payment"

    new-instance v5, Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/spay/PaymentManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a38
    .catch Ljava/lang/Throwable; {:try_start_1a26 .. :try_end_1a38} :catch_1a39

    goto :goto_1a41

    :catch_1a39
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure starting Payment Manager Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a41
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSamsungHealthService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/shealth/SamsungHealthService;

    invoke-direct {v0, v2}, Lcom/android/server/shealth/SamsungHealthService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mSHealthService:Lcom/android/server/shealth/SamsungHealthService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSmartThingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/smartthings/SmartThingsService;

    invoke-direct {v0, v2}, Lcom/android/server/smartthings/SmartThingsService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mSmartThingsService:Lcom/android/server/smartthings/SmartThingsService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartLedCoverEditorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ledcovereditor/LedCoverEditorService;

    invoke-direct {v0, v2}, Lcom/android/server/ledcovereditor/LedCoverEditorService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mLedCoverEditorService:Lcom/android/server/ledcovereditor/LedCoverEditorService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartLedBackCoverService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ledcovereditor/LedBackCoverService;

    invoke-direct {v0, v2}, Lcom/android/server/ledcovereditor/LedBackCoverService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mLedBackCoverService:Lcom/android/server/ledcovereditor/LedBackCoverService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartSamsungNotesService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/samsungnotes/SamsungNotesService;

    invoke-direct {v0, v2}, Lcom/android/server/samsungnotes/SamsungNotesService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mSamsungNotesService:Lcom/android/server/samsungnotes/SamsungNotesService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartVoiceNoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService;

    invoke-direct {v0, v2}, Lcom/android/server/voicenote/VoiceNoteService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mVoiceNoteService:Lcom/android/server/voicenote/VoiceNoteService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.autofill"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ab7

    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :cond_1ab7
    :try_start_1ab7
    const-string v0, "UCM Policy Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const-string/jumbo v0, "knox_ucsm_policy"

    iget-object v5, v3, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v0, "knox_ucsm_policy"

    iget-object v5, v3, Lcom/android/server/SystemServer;->ucmManagerPolicy:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1ad7
    .catch Ljava/lang/Exception; {:try_start_1ab7 .. :try_end_1ad7} :catch_1ad8

    goto :goto_1ae0

    :catch_1ad8
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure adding UniversalCredentialManagerService"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1ae0
    :try_start_1ae0
    const-string v0, "CredentialManagerService Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const-string v0, "com.samsung.ucs.ucsservice"

    iget-object v5, v3, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1af6
    .catch Ljava/lang/Exception; {:try_start_1ae0 .. :try_end_1af6} :catch_1af7

    goto :goto_1aff

    :catch_1af7
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure adding CredentialManagerService"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1aff
    :try_start_1aff
    const-string v0, "EnterpriseCertEnrollPolicy Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string/jumbo v0, "knox_scep_policy"

    new-instance v5, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    invoke-direct {v5, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string v0, "SystemServer"

    const-string v5, "CEP is enabled"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1b1a
    .catch Ljava/lang/Throwable; {:try_start_1aff .. :try_end_1b1a} :catch_1b1b

    goto :goto_1b23

    :catch_1b1b
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "CEP is not enabled"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b23
    :try_start_1b23
    const-string v0, "cepproxyks Service"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    const-string v0, "cepproxyks"

    new-instance v5, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v5, v2}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "SystemServer"

    const-string v5, "CEP Proxy KS Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1b3c
    .catch Ljava/lang/Throwable; {:try_start_1b23 .. :try_end_1b3c} :catch_1b3d

    goto :goto_1b45

    :catch_1b3d
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failure starting CEP Proxy Service"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b45
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1b4a
    invoke-virtual {v10}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_1b4d
    .catch Ljava/lang/Throwable; {:try_start_1b4a .. :try_end_1b4d} :catch_1b4e

    goto :goto_1b56

    :catch_1b4e
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making Vibrator Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b56
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    if-eqz v4, :cond_1b6c

    :try_start_1b60
    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_1b63
    .catch Ljava/lang/Throwable; {:try_start_1b60 .. :try_end_1b63} :catch_1b64

    goto :goto_1b6c

    :catch_1b64
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making Lock Settings Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b6c
    :goto_1b6c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1b92
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_1b95
    .catch Ljava/lang/Throwable; {:try_start_1b92 .. :try_end_1b95} :catch_1b96

    goto :goto_1b9e

    :catch_1b96
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b9e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    if-eqz v0, :cond_1bb3

    :try_start_1ba5
    iget-object v0, v3, Lcom/android/server/SystemServer;->credentialManagerService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->systemReady()V
    :try_end_1baa
    .catch Ljava/lang/Exception; {:try_start_1ba5 .. :try_end_1baa} :catch_1bab

    goto :goto_1bb3

    :catch_1bab
    move-exception v0

    const-string v5, "SystemServer"

    const-string v6, "Failed to call UCMService systemReady"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1bb3
    :goto_1bb3
    if-eqz v14, :cond_1bbf

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showRescuePartyDialog()V

    :cond_1bbf
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v8, v0

    const-string/jumbo v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move-object/from16 v87, v10

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_1bf1

    invoke-virtual {v10}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_1bf1
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1bf6
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;
    :try_end_1bf8
    .catch Ljava/lang/Throwable; {:try_start_1bf6 .. :try_end_1bf8} :catch_1c06

    move-object/from16 v88, v4

    :try_start_1bfa
    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_1c03
    .catch Ljava/lang/Throwable; {:try_start_1bfa .. :try_end_1c03} :catch_1c04

    goto :goto_1c0f

    :catch_1c04
    move-exception v0

    goto :goto_1c09

    :catch_1c06
    move-exception v0

    move-object/from16 v88, v4

    :goto_1c09
    const-string/jumbo v4, "making Power Manager Service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c0f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1c24
    iget-object v0, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v4, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v14, v4}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_1c2b
    .catch Ljava/lang/Throwable; {:try_start_1c24 .. :try_end_1c2b} :catch_1c2c

    goto :goto_1c33

    :catch_1c2c
    move-exception v0

    const-string/jumbo v4, "making Display Manager Service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c33
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_1c36
    const-string v0, "SystemServer"

    const-string v4, "bigdata mdcService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/mdcservice.jar"
    :try_end_1c41
    .catch Ljava/lang/Throwable; {:try_start_1c36 .. :try_end_1c41} :catch_1c7f

    move-object/from16 v89, v5

    :try_start_1c43
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.mdc.MdcService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v90, v0

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v91, v4

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string/jumbo v5, "mdc_service"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    move-object/from16 v92, v0

    const-string v0, "bigdata mdc loaded"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c7b
    .catch Ljava/lang/Throwable; {:try_start_1c43 .. :try_end_1c7b} :catch_1c7c

    goto :goto_1c88

    :catch_1c7c
    move-exception v0

    goto/16 :goto_1c82

    :catch_1c7f
    move-exception v0

    move-object/from16 v89, v5

    :goto_1c82
    const-string/jumbo v4, "failed to start mdcService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c88
    :try_start_1c88
    invoke-interface {v7}, Landroid/os/ISdpManagerService;->systemReady()V
    :try_end_1c8b
    .catch Ljava/lang/Throwable; {:try_start_1c88 .. :try_end_1c8b} :catch_1c8c

    goto :goto_1c94

    :catch_1c8c
    move-exception v0

    move-object v4, v0

    const-string/jumbo v4, "making Sdp manager service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c94
    :try_start_1c94
    invoke-virtual {v15}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_1c97
    .catch Ljava/lang/Throwable; {:try_start_1c94 .. :try_end_1c97} :catch_1c99

    goto/16 :goto_1ca1

    :catch_1c99
    move-exception v0

    move-object v4, v0

    const-string/jumbo v4, "making Sdp Log Service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1ca1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d06

    :try_start_1cad
    const-string v0, "SmartBondingServiceReady"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v4, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v5, 0x1

    invoke-static {v4, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "SMARTBONDING_SERVICE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_1cc6
    .catch Ljava/lang/Throwable; {:try_start_1cad .. :try_end_1cc6} :catch_1cfb

    move-object/from16 v94, v0

    move-object/from16 v93, v6

    const/4 v6, 0x1

    :try_start_1ccb
    new-array v0, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v6, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v95, v4

    move-object/from16 v96, v5

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1cf7
    .catch Ljava/lang/Throwable; {:try_start_1ccb .. :try_end_1cf7} :catch_1cf8

    goto :goto_1d08

    :catch_1cf8
    move-exception v0

    goto/16 :goto_1cfe

    :catch_1cfb
    move-exception v0

    move-object/from16 v93, v6

    :goto_1cfe
    const-string/jumbo v4, "starting SmartBondingService Service"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d08

    :cond_1d06
    move-object/from16 v93, v6

    :goto_1d08
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d58

    :try_start_1d14
    const-string v0, "SystemServer"

    const-string v4, "Mptcp Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.mptcp.MptcpService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v6, v16

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object/from16 v97, v0

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v6, "SystemServer"

    move-object/from16 v98, v0

    const-string v0, "MPTCP loaded"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d4f
    .catch Ljava/lang/Throwable; {:try_start_1d14 .. :try_end_1d4f} :catch_1d51

    goto/16 :goto_1d58

    :catch_1d51
    move-exception v0

    const-string/jumbo v4, "failed to start MptcpService"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d58
    :goto_1d58
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1070076

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1d71
    if-ge v6, v5, :cond_1dba

    move/from16 v99, v5

    aget-object v5, v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v100, v4

    const-string v4, "StartDeviceSpecificServices "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1d8d
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1d92
    .catch Ljava/lang/Throwable; {:try_start_1d8d .. :try_end_1d92} :catch_1d96

    nop

    move-object/from16 v101, v7

    goto :goto_1dae

    :catch_1d96
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v101, v7

    const-string/jumbo v7, "starting "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1dae
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v99

    move-object/from16 v4, v100

    move-object/from16 v7, v101

    goto :goto_1d71

    :cond_1dba
    move-object/from16 v100, v4

    move-object/from16 v101, v7

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x208

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_1dd0
    invoke-virtual {v12}, Lcom/android/server/DualAppManagerService;->systemReady()V
    :try_end_1dd3
    .catch Ljava/lang/Throwable; {:try_start_1dd0 .. :try_end_1dd3} :catch_1dd5

    goto/16 :goto_1ddd

    :catch_1dd5
    move-exception v0

    move-object v4, v0

    const-string/jumbo v4, "making DualAppManagerService ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1ddd
    const-string v0, "StartPersonaSystemready"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e46

    move-object/from16 v7, v80

    :try_start_1df7
    invoke-virtual {v7}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_1dfa
    .catch Ljava/lang/Throwable; {:try_start_1df7 .. :try_end_1dfa} :catch_1dfc

    goto/16 :goto_1e04

    :catch_1dfc
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making Persona Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e04
    move-object/from16 v6, v79

    :try_start_1e06
    invoke-virtual {v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->systemReady()V
    :try_end_1e09
    .catch Ljava/lang/Throwable; {:try_start_1e06 .. :try_end_1e09} :catch_1e0b

    goto/16 :goto_1e13

    :catch_1e0b
    move-exception v0

    move-object v5, v0

    const-string/jumbo v5, "making KnoxMUMContainerPolicy Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e13
    if-eqz v58, :cond_1e40

    :try_start_1e15
    const-string v0, "SystemServer"

    const-string/jumbo v5, "enterprisePolicy is not null"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mum_container_policy"

    const/4 v5, 0x0

    invoke-static {v0, v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V

    const-string/jumbo v0, "mum_container_rcp_policy"
    :try_end_1e27
    .catch Ljava/lang/Throwable; {:try_start_1e15 .. :try_end_1e27} :catch_1e33

    move-object/from16 v102, v4

    move-object/from16 v5, v78

    const/4 v4, 0x1

    :try_start_1e2c
    invoke-static {v0, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1e2f
    .catch Ljava/lang/Throwable; {:try_start_1e2c .. :try_end_1e2f} :catch_1e30

    goto :goto_1e4e

    :catch_1e30
    move-exception v0

    goto/16 :goto_1e38

    :catch_1e33
    move-exception v0

    move-object/from16 v102, v4

    move-object/from16 v5, v78

    :goto_1e38
    const-string/jumbo v4, "making enterprise manager service ready"

    invoke-direct {v3, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e4e

    :cond_1e40
    move-object/from16 v102, v4

    move-object/from16 v5, v78

    goto/16 :goto_1e4e

    :cond_1e46
    move-object/from16 v102, v4

    move-object/from16 v5, v78

    move-object/from16 v6, v79

    move-object/from16 v7, v80

    :goto_1e4e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    :try_start_1e51
    const-string v0, "SystemServer"

    const-string v4, "GameSDKService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/gamesdk.jar"
    :try_end_1e5c
    .catch Ljava/lang/Throwable; {:try_start_1e51 .. :try_end_1e5c} :catch_1eac

    move-object/from16 v103, v5

    :try_start_1e5e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.gamesdk.GameSDKService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v104, v0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v0, v16

    const-class v5, Landroid/app/IActivityManager;

    const/16 v16, 0x1

    aput-object v5, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v105, v4

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    aput-object v5, v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string/jumbo v5, "gamesdk"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    move-object/from16 v106, v0

    const-string v0, "GameSDKService loaded"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ea7
    .catch Ljava/lang/Throwable; {:try_start_1e5e .. :try_end_1ea7} :catch_1ea9

    goto/16 :goto_1eb6

    :catch_1ea9
    move-exception v0

    goto/16 :goto_1eaf

    :catch_1eac
    move-exception v0

    move-object/from16 v103, v5

    :goto_1eaf
    const-string v4, "SystemServer"

    const-string v5, "Failed to add GameSDKService."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1eb6
    :try_start_1eb6
    const-string v0, "SystemServer"

    const-string v4, "GameManagerService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GameManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/gamemanager.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.game.GameManagerService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v107, v0

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object/from16 v108, v4

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string/jumbo v5, "gamemanager"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    move-object/from16 v109, v0

    const-string v0, "GameManagerService loaded"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1f05
    .catch Ljava/lang/Throwable; {:try_start_1eb6 .. :try_end_1f05} :catch_1f07

    goto/16 :goto_1f0f

    :catch_1f07
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failed to add GameManagerService."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f0f
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_1f33

    const-string v0, "MdfService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_1f1a
    const-string v0, "MdfService"

    new-instance v4, Lcom/android/server/MdfService;

    invoke-direct {v4, v2}, Lcom/android/server/MdfService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f24
    .catch Ljava/lang/Throwable; {:try_start_1f1a .. :try_end_1f24} :catch_1f26

    goto/16 :goto_1f2e

    :catch_1f26
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failed to add MdfService"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f2e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto/16 :goto_1f3a

    :cond_1f33
    const-string v0, "SystemServer"

    const-string v4, "MdfService is ready"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f3a
    :try_start_1f3a
    const-string v0, "SystemServer"

    const-string v4, "CodecSolutionService"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CodecSolutionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/codecsolution.jar"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.samsung.android.codecsolution.CodecSolutionManagerService"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_1f69

    const-string v5, "SystemServer"

    move-object/from16 v110, v0

    const-string v0, "CodecSolution Service does not exist"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v111, v4

    goto :goto_1fa1

    :cond_1f69
    move-object/from16 v110, v0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v16, 0x0

    aput-object v5, v0, v16

    const-class v5, Landroid/app/IActivityManager;

    const/16 v16, 0x1

    aput-object v5, v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v5, v16

    move-object/from16 v111, v4

    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    aput-object v4, v5, v16

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string v5, "CodecSolution"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "SystemServer"

    move-object/from16 v112, v0

    const-string v0, "CodecSolution Service loaded"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1fa1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_1fa4
    .catch Ljava/lang/Throwable; {:try_start_1f3a .. :try_end_1fa4} :catch_1fa6

    goto/16 :goto_1fae

    :catch_1fa6
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failed To Start CodecSolution Service "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1fae
    :try_start_1fae
    const-string v0, "SystemServer"

    const-string v4, "VoIPInterfaceManager Service"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "voip"

    new-instance v4, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v4, v2}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1fc0
    .catch Ljava/lang/Throwable; {:try_start_1fae .. :try_end_1fc0} :catch_1fc2

    goto/16 :goto_1fca

    :catch_1fc2
    move-exception v0

    const-string v4, "SystemServer"

    const-string v5, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1fca
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "att.devicehealth.support"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2038

    const-string v0, "SystemServer"

    const-string v4, "System feature for device health found"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/imei/salesCodeChanged"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_202b

    :try_start_1fe8
    const-string v0, "com.att.iqi.IQIServiceBrokerExt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;
    :try_end_1ff3
    .catch Ljava/lang/Exception; {:try_start_1fe8 .. :try_end_1ff3} :catch_201f

    move-object/from16 v113, v6

    const/4 v6, 0x0

    :try_start_1ff6
    aput-object v4, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string/jumbo v5, "startIqi"
    :try_end_1fff
    .catch Ljava/lang/Exception; {:try_start_1ff6 .. :try_end_1fff} :catch_201a

    move-object/from16 v114, v7

    :try_start_2001
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2015
    .catch Ljava/lang/Exception; {:try_start_2001 .. :try_end_2015} :catch_2017

    goto/16 :goto_2029

    :catch_2017
    move-exception v0

    goto/16 :goto_2024

    :catch_201a
    move-exception v0

    move-object/from16 v114, v7

    goto/16 :goto_2024

    :catch_201f
    move-exception v0

    move-object/from16 v113, v6

    move-object/from16 v114, v7

    :goto_2024
    const-string v4, "SystemServer"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2029
    goto/16 :goto_2043

    :cond_202b
    move-object/from16 v113, v6

    move-object/from16 v114, v7

    const-string v0, "SystemServer"

    const-string v4, "On rebound, no need to start device health"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2043

    :cond_2038
    move-object/from16 v113, v6

    move-object/from16 v114, v7

    const-string v0, "SystemServer"

    const-string v4, "System feature for device health not found"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2043
    move-object/from16 v43, v89

    move-object/from16 v20, v103

    move-object/from16 v5, v48

    move-object/from16 v49, v8

    move-object/from16 v8, v21

    move-object/from16 v50, v93

    move-object/from16 v52, v113

    move-object/from16 v6, v22

    move-object/from16 v53, v9

    move-object/from16 v9, v81

    move-object/from16 v54, v11

    move-object/from16 v11, v84

    move-object/from16 v66, v12

    move-object/from16 v12, v59

    move-object/from16 v67, v13

    move-object/from16 v13, v60

    move/from16 v68, v14

    move-object/from16 v14, v30

    move-object/from16 v69, v15

    move-object/from16 v15, v31

    move-object/from16 v16, v54

    move-object/from16 v17, v55

    move-object/from16 v18, v61

    move-object/from16 v19, v23

    move-object/from16 v71, v101

    move-object/from16 v72, v114

    move-object/from16 v7, v77

    move-object/from16 v73, v88

    move-object/from16 v74, v100

    move-object/from16 v75, v102

    move-object v4, v1

    move-object/from16 v0, v56

    move-object/from16 v115, v0

    iget-object v0, v3, Lcom/android/server/SystemServer;->sAccessoryManager:Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v80, v20

    move-object/from16 v79, v52

    move-object/from16 v78, v72

    move-object/from16 v52, v76

    move-object/from16 v76, v87

    move-object/from16 v72, v10

    move-object/from16 v10, v24

    move-object/from16 v116, v4

    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v117, v4

    new-instance v4, Lcom/android/server/-$$Lambda$SystemServer$vQ4YIf57lUJYwWz9lXdKSEFb8Dg;

    move-object/from16 v82, v1

    move-object v1, v4

    move-object/from16 v83, v2

    move-object v2, v3

    move-object/from16 v3, v83

    move-object/from16 v20, v0

    move-object/from16 v118, v0

    move-object v0, v4

    move-object/from16 v4, v116

    move-object/from16 v119, v117

    invoke-direct/range {v1 .. v20}, Lcom/android/server/-$$Lambda$SystemServer$vQ4YIf57lUJYwWz9lXdKSEFb8Dg;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/net/UrspService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v119

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    return-void
.end method

.method private startThemeService()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.themecenter"

    const-string v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method private static traceEnd()V
    .registers 1

    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method
