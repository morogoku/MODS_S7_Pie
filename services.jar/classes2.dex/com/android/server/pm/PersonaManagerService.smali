.class public Lcom/android/server/pm/PersonaManagerService;
.super Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;,
        Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;,
        Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;,
        Lcom/android/server/pm/PersonaManagerService$PersonaHandler;,
        Lcom/android/server/pm/PersonaManagerService$BootReceiver;,
        Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;,
        Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;
    }
.end annotation


# static fields
.field private static final ADMININFO_TABLE_NAME:Ljava/lang/String; = "ADMIN_INFO"

.field private static final ALLOWED_INSTALLER_LIST_SP:Ljava/lang/String; = "AllowedInstallerListForUser"

.field private static final APPROVED_INSTALLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_AUTH_TYPE:Ljava/lang/String; = "authenticationType"

.field private static final ATTR_BBC_PERSONA:Ljava/lang/String; = "isBBCContainer"

.field private static final ATTR_CAN_USE_BLUETOOTH:Ljava/lang/String; = "canUseBluetooth"

.field private static final ATTR_CAN_USE_EXT_SDCARD:Ljava/lang/String; = "canUseExtSdcard"

.field private static final ATTR_CMK_ALGO:Ljava/lang/String; = "cmkFormat"

.field private static final ATTR_CONTAINER_ATTRIBUTES:Ljava/lang/String; = "containerAttributes"

.field private static final ATTR_CONTAINER_BACKUP_PIN:Ljava/lang/String; = "CreationElapsedTime"

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_CREATOR_UID:Ljava/lang/String; = "creatorUid"

.field private static final ATTR_ENCRYPTED_ID:Ljava/lang/String; = "encryptedId"

.field private static final ATTR_FINGERPRINT_HASH_LIST:Ljava/lang/String; = "fingerprintHash"

.field private static final ATTR_FINGERPRINT_INDEX_LIST:Ljava/lang/String; = "fingerprintIndex"

.field private static final ATTR_FIRMWARE_VERSION:Ljava/lang/String; = "fwversion"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_FOTA_UPGRADE_VERSION:Ljava/lang/String; = "fotaupgradeversion"

.field private static final ATTR_FS_MOUNTED:Ljava/lang/String; = "fsMounted"

.field private static final ATTR_HELP_FOLDER:Ljava/lang/String; = "shownFolderHelp"

.field private static final ATTR_HELP_LAUNCHER:Ljava/lang/String; = "shownLauncherHelp"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_INSTALLED_PKG_LIST:Ljava/lang/String; = "installedPkgList"

.field private static final ATTR_IS_ENCODING:Ljava/lang/String; = "isEncoding"

.field private static final ATTR_IS_EULA_SHOWN:Ljava/lang/String; = "isEulaShown"

.field private static final ATTR_IS_QUICK_ACCESS_UI_ENABLED:Ljava/lang/String; = "isQuickAccessUIEnabled"

.field private static final ATTR_KIOSK_MODE:Ljava/lang/String; = "kioskModeEnabled"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_LAST_LOGGED_OUT_TIME:Ljava/lang/String; = "lastLoggedOut"

.field private static final ATTR_LIGHTWEIGHT_PERSONA:Ljava/lang/String; = "isLightWeightContainer"

.field private static final ATTR_OLD_STATE:Ljava/lang/String; = "oldState"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PEROSNA_SETUPWIZARDAPK:Ljava/lang/String; = "setupapklocation"

.field private static final ATTR_PEROSNA_TYPE:Ljava/lang/String; = "personatype"

.field private static final ATTR_PERSONA_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "adminpackagename"

.field private static final ATTR_PERSONA_ADMIN_UID:Ljava/lang/String; = "adminuid"

.field private static final ATTR_PERSONA_FRAMEWORK_VERSION:Ljava/lang/String; = "personaFwkVersion"

.field private static final ATTR_REMOVE_PERSONA:Ljava/lang/String; = "removePersona"

.field private static final ATTR_RESET_CONTAINER_ON_REBOOT:Ljava/lang/String; = "resetPersonaOnReboot"

.field private static final ATTR_RESET_PASSWORD:Ljava/lang/String; = "resetPassword"

.field private static final ATTR_SAMSUNGACOOUNT:Ljava/lang/String; = "samsungAccount"

.field private static final ATTR_SDP_ACTIVE:Ljava/lang/String; = "sdpActive"

.field private static final ATTR_SDP_ENABLED:Ljava/lang/String; = "sdpEnabled"

.field private static final ATTR_SDP_MINOR:Ljava/lang/String; = "isSdpMinor"

.field private static final ATTR_SECURE_FOLDER:Ljava/lang/String; = "isSecureFolder"

.field private static final ATTR_SECURITY_TIMEOUT:Ljava/lang/String; = "securityTimeout"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setupComplete"

.field private static final ATTR_STATE:Ljava/lang/String; = "personastate"

.field private static final ATTR_TIMA_ECRYTPFS_INDEX:Ljava/lang/String; = "timaEcrytfsIndex"

.field private static final ATTR_TIMA_PASSWORDHINT_INDEX:Ljava/lang/String; = "timaPasswordHintIndex"

.field private static final ATTR_TIMA_PASSWORD_INDEX:Ljava/lang/String; = "timaPasswordIndex"

.field private static final ATTR_TIMA_PWD_RESET_TOKEN_INDEX:Ljava/lang/String; = "timaPwdResetTokenIndex"

.field private static final ATTR_TIMA_VERSION:Ljava/lang/String; = "timaVersion"

.field private static final ATTR_USER_MANAGED_PERSONA:Ljava/lang/String; = "isUserManaged"

.field private static final ATTR_USE_FINGERPRINT_INDEX:Ljava/lang/String; = "isEnabledFingerprintIndex"

.field public static final CONTAINER_ABOUT_KNOX_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.containeragent.settings.KnoxSettingsAboutKnoxActivity"

.field public static final CONTAINER_AGENT_PACKAGE:Ljava/lang/String; = "com.samsung.android.knox.containeragent"

.field public static final CONTAINER_LOCKDOWN_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.containeragent.knoxkeyguard.LockdownActivity"

.field public static final CONTAINER_MULTIWINDOWLOCK_ACTIVITY:Ljava/lang/String; = "com.samsung.android.knox.containercore.common.MultiwindowLockActivity"

.field public static final CONTAINER_MULTIWINDOWLOCK_ACTIVITY_FOR_DEX:Ljava/lang/String; = "com.samsung.android.knox.containerdesktop.common.MultiwindowLockActivity"

.field private static final DA_SCHEMA_VERSION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEFAULT_SMS_PKG:Ljava/lang/String; = "com.android.mms"

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final ENTERPRISE_DB_NAME:Ljava/lang/String; = "/data/system/enterprise.db"

.field private static final FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final FINGERPRINT_PASSWORD_UPDATED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

.field private static final FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field private static final FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field public static final FLAG_CLEARVIEW_KNOX_KEYGUARD:I = 0x2

.field public static final FLAG_RESET_KNOX_KEYGUARD:I = 0x1

.field public static final FLAG_SCREEN_OFF:I = 0x20

.field public static final FLAG_SCREEN_ON:I = 0x10

.field public static final FORCED_RESIZABLE_INFO_ACTIVITY:Ljava/lang/String; = "com.android.systemui.stackdivider.ForcedResizableInfoActivity"

.field private static final FOTA_DEBUG:Z = false

.field private static FOTA_DEBUG_TIME:J = 0x0L

.field private static final FOTA_PERMISSION_MODE:I = -0x1

.field private static final FOTA_UPGRADE_VERSION:I = 0xa

.field private static final HARD_CODED_CMK:Ljava/lang/String; = "ContainerMasterK"

.field private static final HOME_CROSS_PROFILE_FILTER_PACKAGE:Ljava/lang/String; = "com.sec.knox.home.crossprofilefilter"

.field private static final IRIS_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_ADDED"

.field private static final IRIS_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_REMOVED"

.field private static final IRIS_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_RESET"

.field private static final IS_TABLET_DEVICE:Z

.field private static final KA_SCHEMA_VERSION:I = 0x1

.field private static final KEYMGNT_DEBUG:Z = false

.field private static final KEYMGNT_LOG_TAG:Ljava/lang/String; = "PersonaManagerService.KeyMgnt"

.field public static final KNOX_CHOOSER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.nfc.knox.KnoxChooserActivity"

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field private static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "knox.power_button_instantly_locks"

.field private static final LOG_DUALDAR_KA_TAG:Ljava/lang/String; = "PersonaManagerService:DualDARAnalytics"

.field private static final LOG_FOTA_TAG:Ljava/lang/String; = "PersonaManagerService:FOTA"

.field private static final LOG_KA_TAG:Ljava/lang/String; = "PersonaManagerService:KnoxAnalytics"

.field private static final LOG_TAG:Ljava/lang/String; = "PersonaManagerService"

.field private static final MAX_PERSONA_ALLOWED:I = 0x2

.field private static final MSG_ACTIVITY_RESUMED:I = 0x3c

.field private static final MSG_BOOT_COMPLETE_RECEIVED:I = 0xd

.field private static final MSG_BOOT_LOAD_PERSONA_SYSTEMREADY:I = 0xf

.field private static final MSG_DRAW_KNOX_BADGE:I = 0x6

.field private static final MSG_FOREGROUND_PROFILE_SWITCH:I = 0x50

.field private static final MSG_HIDE_KEYGUARD:I = 0x3d

.field private static final MSG_HIDE_KNOX_BADGE:I = 0x34

.field private static final MSG_KNOX_ANALYTICS_ACCOUNTS_CHANGED:I = 0x46

.field private static final MSG_NAVIBAR_SET_WINDOWSTATE:I = 0x32

.field private static final MSG_REFLASH_SECURE_FLAG:I = 0x8

.field private static final MSG_REMOVE_KNOX_BADGE:I = 0x7

.field private static final MSG_REMOVE_MYKNOX_ICON:I = 0x14

.field private static final MSG_SET_KEYGUARD_BADGE_STATE:I = 0x3e

.field private static final MSG_SHOW_KNOX_BADGE:I = 0x33

.field private static final MSG_STARTED_GOING_TO_SLEEP:I = 0xb

.field private static final MSG_STARTED_KEYGUARD_TIMEOUT:I = 0xa

.field private static final MSG_STARTED_WAKING_UP:I = 0xc

.field private static final MSG_UNINSTALL_THIRDPARTY_APPS_DONE_FOR_RESET:I = 0x2

.field private static final MUMCONTAINER_TABLE_NAME:Ljava/lang/String; = "MUMCONTAINER"

.field private static final NAME_KNOX:Ljava/lang/String; = "KNOX"

.field private static final NAME_KNOXII:Ljava/lang/String; = "KNOX II"

.field private static final PERSONA_CACHE_FILENAME:Ljava/lang/String; = "persona_cache.xml"

.field private static final PERSONA_FRAMEWORK_VERSION:I = 0x1

.field private static final PERSONA_LIST_FILENAME:Ljava/lang/String; = "personalist.xml"

.field private static final PREFIX_FLAGS:Ljava/lang/String; = "flags="

.field private static final PREFIX_USER_ID:Ljava/lang/String; = "<user id="

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final SEAMS_RESOURCE_TYPE_SDCARD:I = 0x0

.field private static final SECUREFOLDER_INIT_ID:I = -0x3e8

.field public static final SECUREFOLDER_MULTIWINDOWLOCK_ACTIVITY:Ljava/lang/String; = "com.samsung.knox.securefolder.foldercontainer.MultiwindowLockActivity"

.field private static final SKMMV2_ENABLED:Z = true

.field private static final StatusBlockTAG_AdminLock:Ljava/lang/String; = "container_adminlock"

.field private static final StatusBlockTAG_KSS:Ljava/lang/String; = "container_keyguard"

.field private static final StatusBlockTAG_KioskMode:Ljava/lang/String; = "container_kioskmode"

.field private static final TAG_APP_TYPE:Ljava/lang/String; = "appType"

.field private static final TAG_CACHE:Ljava/lang/String; = "cache"

.field private static final TAG_FOTA_VERSION:Ljava/lang/String; = "fotaversion"

.field private static final TAG_FW_VERSION:Ljava/lang/String; = "fwversion"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PERSONA_CACHE:Ljava/lang/String; = "personacache"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_USERS_WITH_PERSONA:Ljava/lang/String; = "userswithpersona"

.field private static final TIMA_LOG_TAG:Ljava/lang/String; = "PersonaManagerService.Tima"

.field private static TYPE_FILE_PATH:Ljava/lang/String; = null

.field private static final UNUSED_DUMMY_TIMEOUT:I = -0x10000

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "/data/system/users/userlist.xml"

.field private static final USER_WITH_PERSONA_LIST_FILENAME:Ljava/lang/String; = "userwithpersonalist.xml"

.field private static containerCriticalApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field private static mKnoxSecurityTimeMigrationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageTasker:Lcom/android/server/pm/Installer;

.field private static mPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/pm/PersonaManagerService;


# instance fields
.field private final INTENT_CONTAINERAGENT_FROM_KLMS_LICENSEKEY_CHECK:Ljava/lang/String;

.field private final KLMS_CONTAINER_ID:Ljava/lang/String;

.field private final KNOX_SECURITY_TIMEOUT_DEFAULT:I

.field private final KnoxBTPkgName:Ljava/lang/String;

.field private final MAX_RETRY_READ:I

.field private analyticsObserver:Landroid/database/ContentObserver;

.field private cleanPersonaId:I

.field private containerNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentObserver:Landroid/database/ContentObserver;

.field private disableNonCoreServices:Z

.field private emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isFotaUpgradeVersionChanged:Z

.field private lastTimeToBackground:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private locationRestrictionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mActivationMonitor:Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

.field private mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field private final mBaseUserPath:Ljava/io/File;

.field private mBootCompleted:Z

.field private mComponent:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDeviceEmergencyModeLock:Ljava/lang/Object;

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmergencyStateReceiver:Landroid/content/BroadcastReceiver;

.field private mFSHandler:Lcom/android/server/KnoxFileHandler;

.field private final mFileLock:Ljava/lang/Object;

.field private mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mFocusLauncherLock:Ljava/lang/Object;

.field private final mFocusLock:Ljava/lang/Object;

.field private mFocusedLauncherId:I

.field private mFocusedUserId:I

.field private mForegroundProfile:I

.field private mFotaMyKnoxUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIrisReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDeviceEmergencyModeEnabled:Z

.field private mIsFOTAUpgrade:Z

.field private mIsMultiwindowRecord:Z

.field private mKeyProtector:Lcom/android/server/KeyProtector;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowingState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mKnoxBadgeHandler:Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

.field private mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

.field mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPersonaCacheFile:Ljava/io/File;

.field private final mPersonaCacheLock:Ljava/lang/Object;

.field private final mPersonaCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersonaDbLock:Ljava/lang/Object;

.field private mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field private mPersonaIds:[I

.field private mPersonaPolicyManagerService:Lcom/android/server/pm/PersonaPolicyManagerService;

.field private mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

.field private final mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private mPostActivePackage:Ljava/lang/String;

.field private mPostActiveTime:J

.field private mPostActiveUserId:I

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

.field private mSEAMS:Lcom/android/server/SEAMService;

.field private mSecureFolderId:I

.field private mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

.field private mShowWhenLocked:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mToken:Landroid/os/IBinder;

.field mTrustManager:Landroid/app/trust/ITrustManager;

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserPersonaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUserSwitchObserver:Landroid/app/UserSwitchObserver;

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersWithPersonaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

.field private mWindowManager:Landroid/view/WindowManager;

.field private personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private xmlnotParsedforFOTA:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3

    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    const-string v0, "/data/system/container/"

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.sec.android.app.billing"

    const-string v3, "com.sec.android.app.samsungapps"

    const-string v4, "com.samsung.android.knox.containercore"

    const-string v5, "com.samsung.android.knox.containeragent"

    const-string v6, "com.samsung.knox.bnr"

    const-string v7, "com.samsung.android.packageinstaller"

    const-string v8, "com.google.android.packageinstaller"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->APPROVED_INSTALLERS:Ljava/util/List;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/pm/PersonaManagerService;->FOTA_DEBUG_TIME:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxSecurityTimeMigrationMap:Ljava/util/Map;

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tablet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/PersonaManagerService;->IS_TABLET_DEVICE:Z

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.knox.securefolder"

    const-string v3, "com.samsung.android.knox.containeragent"

    const-string v4, "com.samsung.android.knox.containercore"

    const-string v5, "com.sec.knox.bluetooth"

    const-string v6, "com.samsung.knox.appsupdateagent"

    const-string v7, "com.samsung.knox.rcp.components"

    const-string v8, "com.android.bbc.fileprovider"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->isKnoxSupported()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)V
    .registers 10

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PersonaManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .registers 13

    invoke-direct {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFotaMyKnoxUsers:Ljava/util/List;

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->MAX_RETRY_READ:I

    const v1, 0x927c0

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->KNOX_SECURITY_TIMEOUT_DEFAULT:I

    const-string v1, "com.sec.knox.containeragent.klms.licensekey.check"

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->INTENT_CONTAINERAGENT_FROM_KLMS_LICENSEKEY_CHECK:Ljava/lang/String;

    const-string v1, "container_id"

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->KLMS_CONTAINER_ID:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFileLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPkgInstallObs:Lcom/android/server/pm/PersonaManagerService$PackageInstallObserver;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUserPersonaMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mRemovingPersonaIds:Landroid/util/SparseBooleanArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/android/server/KnoxFileHandler;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxBadgeHandler:Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->disableNonCoreServices:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;

    const-string v2, "com.sec.knox.bluetooth"

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->KnoxBTPkgName:Ljava/lang/String;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mToken:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/pm/PersonaManagerService;->cleanPersonaId:I

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mIsMultiwindowRecord:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    iput v2, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mActivationMonitor:Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mWakeLockHeldArr:Landroid/util/SparseBooleanArray;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mEmergencyStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/PersonaManagerService$3;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->contentObserver:Landroid/database/ContentObserver;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->locationRestrictionMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/PersonaManagerService$4;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    iput v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I

    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActivePackage:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActiveTime:J

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$5;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$5;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$6;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$8;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$8;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mIrisReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$9;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$9;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$10;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$10;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSEAMS:Lcom/android/server/SEAMService;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Lcom/android/server/KnoxFileHandler;

    invoke-direct {v0, p1}, Lcom/android/server/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/android/server/KnoxFileHandler;

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyProtector:Lcom/android/server/KeyProtector;

    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14b
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v3, p4, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v5, "userwithpersonalist.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_171

    const-string v3, "PersonaManagerService"

    const-string v4, "No need to create user persona list file from Knox 3.0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_171
    const-string v3, "PersonaManagerService"

    const-string v4, "<init> adding PersonaPolicyManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/pm/PersonaPolicyManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/pm/PersonaPolicyManagerService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "persona_policy"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mPolicyMap:Ljava/util/Map;

    const-string/jumbo v5, "persona_policy"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "PersonaManagerService"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    monitor-exit v0
    :try_end_1ab
    .catchall {:try_start_14b .. :try_end_1ab} :catchall_22e

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v4, "persona_cache.xml"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1db

    :try_start_1bf
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1cf

    const-string v0, "PersonaManagerService"

    const-string v3, "PMS cache file created "

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d6

    :cond_1cf
    const-string v0, "PersonaManagerService"

    const-string v3, "Error Creating PMS cache file!!!! "

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d6
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1d6} :catch_1d7

    :goto_1d6
    goto :goto_1db

    :catch_1d7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1db
    :goto_1db
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1de
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->readPersonaCacheLocked()V

    monitor-exit v3
    :try_end_1e2
    .catchall {:try_start_1de .. :try_end_1e2} :catchall_22b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const-string v0, "knoxid.reset_on_reboot"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1ef

    goto :goto_1fd

    :cond_1ef
    const-string v0, "knoxid.reset_on_reboot"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1fd
    move v0, v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_22a

    const-string v2, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset-On-Reboot for container Id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->cleanSettingsProvider(I)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->cleanSettingsProvider(I)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->restoreOwnerSettings()V

    :cond_22a
    return-void

    :catchall_22b
    move-exception v0

    :try_start_22c
    monitor-exit v3
    :try_end_22d
    .catchall {:try_start_22c .. :try_end_22d} :catchall_22b

    throw v0

    :catchall_22e
    move-exception v1

    :try_start_22f
    monitor-exit v0
    :try_end_230
    .catchall {:try_start_22f .. :try_end_230} :catchall_22e

    throw v1
.end method

.method static synthetic access$1000(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTAProfileOwnerPrime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTADisallowedPackages()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTAContainerOnlyMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTAInstallToPackages()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTADeleteToPackages()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/PersonaManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->updateCustomResourcePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFOTARemoveWorkspaceShortcut()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->recorverNotificationSound()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->handleFotaResetSecureFolderAdmin()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxBadgeHandler:Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->handleActivityResumed(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->logKnoxAnalytics(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/pm/PersonaManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/PersonaManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->mForegroundProfile:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/pm/PersonaManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mForegroundProfile:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/pm/PersonaManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->sendMessageAndLockTimeout(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->removeMyKnoxIcon()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/pm/PersonaManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    return p1
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->killKnoxLauncher(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceEmergencyModeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/pm/PersonaManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaManagerService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardScrimView;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    return-object v0
.end method

.method static synthetic access$4200()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->IS_TABLET_DEVICE:Z

    return v0
.end method

.method static synthetic access$4300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/pm/PersonaManagerService;I)Ljava/util/ArrayList;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getBoundedWidgets(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->locationRestrictionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->backupOwnerSettings()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->removeSMSAppData()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/pm/PersonaManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isIMPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/pm/PersonaManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/pm/PersonaManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I

    return p1
.end method

.method static synthetic access$5702(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActivePackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/android/server/pm/PersonaManagerService;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActiveTime:J

    return-wide p1
.end method

.method static synthetic access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/enterprise/license/EnterpriseLicenseService;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-object p1
.end method

.method static synthetic access$6000(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getKnoxMUMContainerPolicy()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->installContainerCriticalApps()V

    return-void
.end method

.method private atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    .registers 6

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".crt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2f
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private backupOwnerSettings()V
    .registers 8

    const-string v0, "PersonaManagerService"

    const-string v1, "backupOwnerSettings is called. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users/0/settings_system.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/users/0/settings_system.xml_for_com"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_1e
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/users/0/settings_secure.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/users/0/settings_secure.xml_for_com"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-static {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_35
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/users/0/settings_global.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/users/0/settings_global.xml_for_com"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4c} :catch_4d

    :cond_4c
    goto :goto_51

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_51
    return-void
.end method

.method private bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private blockStatusbar(IZLjava/lang/String;)V
    .registers 10

    const-string v0, "container_adminlock"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_e

    const/high16 v0, 0x3bf0000

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    goto :goto_47

    :cond_10
    const-string v0, "container_keyguard"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez p2, :cond_1c

    const/4 v0, 0x0

    goto :goto_f

    :cond_1c
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_f

    :cond_2a
    const/high16 v0, 0x10000

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_35

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    :cond_35
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/pm/PersonaServiceHelper;->isInDisplayFingerSensor(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    goto :goto_47

    :cond_41
    if-eqz p2, :cond_46

    const/high16 v0, 0x1210000

    goto :goto_47

    :cond_46
    move v0, v1

    :cond_47
    :goto_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4b
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_69

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v0, v1, p3, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_7b

    :cond_69
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v0, v5, p3, v1}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_6e} :catch_71
    .catchall {:try_start_4b .. :try_end_6e} :catchall_6f

    goto :goto_7b

    :catchall_6f
    move-exception v1

    goto :goto_80

    :catch_71
    move-exception v1

    :try_start_72
    const-string v4, "PersonaManagerService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_6f

    :goto_7b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_80
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private changePermission(Ljava/lang/String;III)Z
    .registers 12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_2a
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/EnterprisePartitionManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v3

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changePermission of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4f

    const/4 v0, 0x0

    :cond_4f
    return v0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 5

    const-string v0, "PersonaManagerService"

    sget-object v1, Lcom/android/server/pm/PersonaManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_55

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v2, :cond_54

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_54
    throw v1

    :cond_55
    const/4 v1, 0x0

    return v1
.end method

.method private checkForKnoxSettingsIconAfterFOTA(II)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    :try_start_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    instance-of v3, v0, Lcom/samsung/android/knox/container/BBCConfigurationType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v4

    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v3, :cond_114

    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v9, "com.samsung.android.knox.containeragent"

    const/4 v10, 0x0

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_d2

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "KNOX"

    iget-object v14, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8d

    new-instance v13, Landroid/content/ComponentName;

    const-string v15, "com.samsung.android.knox.containeragent"

    const-string v14, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity"

    invoke-direct {v13, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v13

    const-string/jumbo v13, "security_home_icon_security_color_1"

    const-string v14, "drawable"

    const-string v15, "com.samsung.android.knox.containeragent"

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v11, v13

    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object v12, v13

    if-eqz v12, :cond_6e

    invoke-direct {v1, v12}, Lcom/android/server/pm/PersonaManagerService;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    move-object v9, v13

    :cond_6e
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyPackagePolicies : changeApplicationIcon drawableIcon1-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    :cond_8d
    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.samsung.android.knox.containeragent"

    const-string v15, "com.samsung.android.knox.containeragent.settings.KnoxSettingsActivity2"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v13

    const-string/jumbo v13, "security_home_icon_security_color_2"

    const-string v14, "drawable"

    const-string v15, "com.samsung.android.knox.containeragent"

    invoke-virtual {v10, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v11, v13

    invoke-static {v11}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object v12, v13

    if-eqz v12, :cond_b4

    invoke-direct {v1, v12}, Lcom/android/server/pm/PersonaManagerService;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    move-object v9, v13

    :cond_b4
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyPackagePolicies : changeApplicationIcon drawableIcon2-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    :goto_d2
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/samsung/android/knox/ContextInfo;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_da} :catch_117

    move/from16 v13, p2

    :try_start_dc
    invoke-direct {v12, v13, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v11

    if-eqz v9, :cond_10b

    array-length v12, v9

    if-lez v12, :cond_10b

    invoke-virtual {v11}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v12

    const-string v14, "com.samsung.android.knox.containeragent"

    invoke-virtual {v12, v14, v9}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z

    move-result v12

    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "applyPackagePolicies : changeApplicationIcon status2-"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    :cond_10b
    move-object/from16 v16, v0

    :goto_10d
    const/4 v0, 0x1

    invoke-virtual {v5, v7, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_111} :catch_112

    goto :goto_116

    :catch_112
    move-exception v0

    goto :goto_11a

    :cond_114
    move/from16 v13, p2

    :goto_116
    goto :goto_11d

    :catch_117
    move-exception v0

    move/from16 v13, p2

    :goto_11a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11d
    return-void
.end method

.method private cleanPartition(I)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->resetKnoxUserData(I)Z

    move-result v0

    :cond_b
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cleanPartition: ret value of UMS resetKnoxUserData(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private cleanProviders(I)V
    .registers 7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/clipboard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset persona clipboard : removing files for pkgDir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/android/server/EnterprisePartitionManager;ILjava/io/File;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getSemClipboardService()Lcom/android/server/semclipboard/SemClipboardService;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getSemClipboardService()Lcom/android/server/semclipboard/SemClipboardService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/semclipboard/SemClipboardService;->removeAll()Z

    :cond_4c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.knox.clipboard.sync"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "resetOnReoot"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7b

    :cond_65
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resetPersonaClipboard data file doesn\'t exist for persona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    return-void
.end method

.method private cleanSettingsProvider(I)V
    .registers 10

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanSettingsProvider is called for personaId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_16
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/settings_system.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/settings_secure.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/settings_global.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_df

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/appwidgets.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_122

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_122} :catch_123

    :cond_122
    goto :goto_127

    :catch_123
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_127
    return-void
.end method

.method private clearHomeCrossProfileFilter(Ljava/lang/String;)Z
    .registers 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_9
    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_14
    .catchall {:try_start_9 .. :try_end_c} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x1

    return v3

    :catchall_12
    move-exception v3

    goto :goto_30

    :catch_14
    move-exception v4

    :try_start_15
    const-string v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearCrossProfileIntentFilters Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_12

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private clearPackagesFromExternalStorageWhiteList(II)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v1, "PersonaManagerService:FOTA"

    const-string v2, "clearPackagesFromExternalStorageWhiteList : SEAMS service cannot be null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/server/SEAMService;->clearWhitelist(II)I

    move-result v1

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPackagesFromExternalStorageWhiteList : SEAMS service retCode - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string v4, "KnoxExternalStorageWhitelist"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    if-lez v3, :cond_78

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearPackagesFromExternalStorageWhiteList for admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "has got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " results"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "KnoxExternalStorageWhitelist"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_74} :catch_79

    if-lez v4, :cond_78

    const/4 v0, 0x1

    return v0

    :cond_78
    goto :goto_83

    :catch_79
    move-exception v1

    const-string v2, "PersonaManagerService:FOTA"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    return v0
.end method

.method private collectInstalledPackages(ILjava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "PersonaManagerService"

    const-string v1, "mContext is null inside collectInstalledPackages"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageInfoList size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for id -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_54

    goto :goto_79

    :cond_54
    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non system Installed package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_79
    goto :goto_3f

    :cond_7a
    return-void
.end method

.method private convertToGreyIcon([B)[B
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/android/server/pm/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/android/server/pm/FastBitmapDrawable$State;->DISABLED:Lcom/android/server/pm/FastBitmapDrawable$State;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/FastBitmapDrawable;->setState(Lcom/android/server/pm/FastBitmapDrawable$State;)Z

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 11

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_3e

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_32

    nop

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    nop

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_42

    :catchall_32
    move-exception v2

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_38
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3d
    throw v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    return-void
.end method

.method private copyFiles(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;III)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const-string v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start migrateKnoxAppsData: from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_8e

    const-string v12, "PersonaManagerService:FOTA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " not exist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_8e
    invoke-virtual {v6, v7, v1, v9, v2}, Lcom/android/server/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v12

    const-string v13, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copy file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " result:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_bb

    const/4 v3, 0x0

    :cond_bb
    const/4 v13, -0x1

    move/from16 v14, p6

    invoke-direct {v0, v9, v14, v14, v13}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v13

    if-eqz v13, :cond_c8

    if-eqz v3, :cond_c8

    const/4 v13, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v13, 0x0

    :goto_c9
    move v3, v13

    goto/16 :goto_2a

    :cond_cc
    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move/from16 v14, p6

    return v3
.end method

.method private copySystemData()Z
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.switcher/databases/sharefile.db"

    const-string v3, "/com.samsung.android.knox.containeragent/databases/sharefile.db"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.switcher/databases/sharefile.db-journal"

    const-string v3, "/com.samsung.android.knox.containeragent/databases/sharefile.db-journal"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.switcher/shared_prefs/SwitchKnox_shared_prefs.xml"

    const-string v3, "/com.samsung.android.knox.containeragent/shared_prefs/SwitchKnox_shared_prefs.xml"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.switcher/shared_prefs/knoxusage.xml"

    const-string v3, "/com.samsung.android.knox.containeragent/shared_prefs/knoxusage.xml"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.switcher/databases/knoxusage.db"

    const-string v3, "/com.samsung.android.knox.containeragent/databases/knoxusage.db"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.switcher/databases/knoxusage.db-journal"

    const-string v3, "/com.samsung.android.knox.containeragent/databases/knoxusage.db-journal"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "com.samsung.android.knox.containeragent"

    const/4 v8, 0x0

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-nez v9, :cond_5b

    return v8

    :cond_5b
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "/data/user/"

    const-string v4, "/data/user/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PersonaManagerService;->copyFiles(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v1

    const-string v2, "/data/user/0/com.samsung.android.knox.containeragent/"

    const/4 v3, -0x1

    invoke-direct {p0, v2, v10, v10, v3}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_78

    if-eqz v1, :cond_78

    move v2, v4

    goto :goto_79

    :cond_78
    move v2, v8

    :goto_79
    move v1, v2

    const-string v2, "/data/user/0/com.samsung.android.knox.containeragent/databases/"

    invoke-direct {p0, v2, v10, v10, v3}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v2

    if-eqz v2, :cond_86

    if-eqz v1, :cond_86

    move v2, v4

    goto :goto_87

    :cond_86
    move v2, v8

    :goto_87
    move v1, v2

    const-string v2, "/data/user/0/com.samsung.android.knox.containeragent/shared_prefs/"

    invoke-direct {p0, v2, v10, v10, v3}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v2

    if-eqz v2, :cond_93

    if-eqz v1, :cond_93

    goto :goto_94

    :cond_93
    move v4, v8

    :goto_94
    move v1, v4

    return v1
.end method

.method private copyUserData(I)Z
    .registers 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.containeragent2/shared_prefs/com.sec.knox.containeragent2_preferences.xml"

    const-string v3, "/com.samsung.android.knox.containeragent/shared_prefs/com.samsung.android.knox.containeragent_preferences.xml"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.containeragent2/shared_prefs/EXISTING_LOCK_TYPE.xml"

    const-string v3, "/com.samsung.android.knox.containeragent/shared_prefs/EXISTING_LOCK_TYPE.xml"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.containeragent2/shared_prefs/EXISTING_QUICK_ACCESS_SETTING.xml"

    const-string v3, "/com.samsung.android.knox.containeragent/shared_prefs/EXISTING_QUICK_ACCESS_SETTING.xml"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.containeragent2/shared_prefs/STYLE_CHANGING_FLAG.xml"

    const-string v3, "/com.samsung.android.knox.containeragent/shared_prefs/STYLE_CHANGING_FLAG.xml"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.sec.knox.containeragent2/files/launcher"

    const-string v3, "/com.samsung.android.knox.containeragent/files/launcher"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/util/Pair;

    const-string v2, "/com.samsung.knox.knoxtrustagent/shared_prefs/com.samsung.knox.knoxtrustagent_preferences.xml"

    const-string v3, "/com.samsung.android.knox.containeragent/shared_prefs/TRUST_AGENT_preferences.xml"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "com.samsung.android.knox.containeragent"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_5b

    return v9

    :cond_5b
    iget v10, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v3, "/data/user/"

    const-string v4, "/data/user/"

    move-object v1, p0

    move-object v2, v0

    move v5, p1

    move v6, p1

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PersonaManagerService;->copyFiles(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.samsung.android.knox.containeragent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {p0, v2, v10, v10, v3}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_96

    if-eqz v1, :cond_96

    move v2, v4

    goto :goto_97

    :cond_96
    move v2, v9

    :goto_97
    move v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/user/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.samsung.android.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/shared_prefs/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v10, v10, v3}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v2

    if-eqz v2, :cond_c2

    if-eqz v1, :cond_c2

    move v2, v4

    goto :goto_c3

    :cond_c2
    move v2, v9

    :goto_c3
    move v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/user/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.samsung.android.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/files"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v10, v10, v3}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v2

    if-eqz v2, :cond_ed

    if-eqz v1, :cond_ed

    goto :goto_ee

    :cond_ed
    move v4, v9

    :goto_ee
    move v1, v4

    return v1
.end method

.method private createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1a

    goto :goto_60

    :cond_1a
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v1, :cond_3f

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_3f

    :cond_37
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Service must be protected by BIND_DEVICE_ADMIN permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    :goto_3f
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1

    :cond_49
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only allow to bind service in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_60
    :goto_60
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to look up the service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " or user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private createSFNameBitmap(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42680000    # 58.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v8, 0x0

    const/high16 v9, 0x41b00000    # 22.0f

    mul-float/2addr v9, v2

    add-float/2addr v9, v4

    float-to-int v9, v9

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    sub-int/2addr v11, v8

    const-string v12, "com.samsung.knox.securefolder:drawable/sf_app_icon_11"

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x1

    if-eqz v12, :cond_4d

    move/from16 v15, p3

    invoke-virtual {v0, v12, v15}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v10, v11, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v4, 0x0

    invoke-virtual {v6, v7, v4, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4f

    :cond_4d
    move/from16 v15, p3

    :goto_4f
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v7, v14}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    new-instance v13, Landroid/text/TextPaint;

    invoke-direct {v13}, Landroid/text/TextPaint;-><init>()V

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v14, -0xafafb0

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/high16 v14, 0x42040000    # 33.0f

    mul-float/2addr v14, v2

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v14, v10

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v13, v14, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9e

    const/high16 v14, 0x41e00000    # 28.0f

    mul-float/2addr v14, v2

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v14, v14, v17

    float-to-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_9e
    move-object/from16 v18, v0

    const/4 v0, 0x0

    const/4 v14, 0x1

    invoke-virtual {v13, v1, v0, v14, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v13, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v0, v10

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v0, v14

    div-int/lit8 v14, v11, 0x2

    int-to-float v14, v14

    invoke-virtual {v13}, Landroid/text/TextPaint;->descent()F

    move-result v16

    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v17

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v14, v14, v16

    invoke-virtual {v6, v1, v0, v14, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v5
.end method

.method public static deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmService(Landroid/content/Context;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    const-string v2, "com.samsung.knox.securefolder"

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->setAdminRemovable(ZLjava/lang/String;)Z

    invoke-virtual {v0, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    :cond_11
    goto :goto_16

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .registers 9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directory not exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2c

    const-string v2, "PersonaManagerService"

    const-string v3, "files is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    array-length v3, v1

    if-ge v2, v3, :cond_5b

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteDirectory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_5b
    return-void
.end method

.method private deletePkg(ILjava/lang/String;)Z
    .registers 8

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePkg request for personaId -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and pkg-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    :try_start_23
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    monitor-enter v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_67

    :goto_2a
    :try_start_2a
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_64

    if-nez v1, :cond_62

    :try_start_2e
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting in while loop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_49} :catch_4a
    .catchall {:try_start_2e .. :try_end_49} :catchall_64

    goto :goto_61

    :catch_4a
    move-exception v1

    :try_start_4b
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePkg: InterruptedException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    goto :goto_2a

    :cond_62
    monitor-exit v0

    goto :goto_7e

    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_4b .. :try_end_66} :catchall_64

    :try_start_66
    throw v1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_67

    :catch_67
    move-exception v1

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePkg exception -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->result:Z

    return v1
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_3a

    :cond_36
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_3a
    const/4 v2, 0x1

    if-gtz v0, :cond_3f

    move v3, v2

    goto :goto_40

    :cond_3f
    move v3, v0

    :goto_40
    if-gtz v1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v1

    :goto_44
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private enableLauncher(ILjava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v1, 0x40

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;III)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const-string v1, "PersonaManagerService:FOTA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_33
    const-string v1, "PersonaManagerService:FOTA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install launcher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    goto :goto_7f

    :cond_52
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v4, p2

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    const-string v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7f
    return-void
.end method

.method private enableLauncherFromFolderContainer(I)Z
    .registers 10

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isLightWeightContainer()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable launcher for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "com.samsung.android.knox.containeragent"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_39

    return v3

    :cond_39
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/user/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "com.samsung.android.knox.containeragent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/files/launcher"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/16 v7, 0x3e8

    invoke-direct {p0, v5, v7, v7, v6}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v0

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->getLaunchPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/server/pm/PersonaManagerService;->enableLauncher(ILjava/lang/String;)V

    invoke-direct {p0, v5, v4, v4, v6}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v6

    if-eqz v6, :cond_73

    if-eqz v0, :cond_73

    const/4 v3, 0x1

    nop

    :cond_73
    move v0, v3

    :cond_74
    return v0
.end method

.method private enableOwnerLaunchersForCOM(I)Z
    .registers 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " enableOwnerLaunchersForCOM is called for user -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "com_default_owner_launcher"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3a

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    move-object v6, v0

    const/4 v7, 0x0

    if-eqz v3, :cond_130

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    move-object/from16 v23, v3

    goto/16 :goto_132

    :cond_49
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroid/content/ComponentName;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/4 v10, 0x0

    move v11, v5

    :try_start_55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_fd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const-string v15, "PersonaManagerService:FOTA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " enableOwnerLaunchersForCOM package name "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    aget-object v0, v14, v5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and Activity name -"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object v5, v14, v0

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v13, v14, v5

    const/4 v5, 0x1

    aget-object v15, v14, v5

    invoke-direct {v0, v13, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    nop

    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    invoke-virtual {v5, v13, v15}, Lcom/android/server/pm/PackageManagerService;->setOwnerPackageSettingInstalled(Ljava/lang/String;Z)Z

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-interface {v9, v0, v15, v15, v13}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    const-string v13, "PersonaManagerService:FOTA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enableOwnerLaunchersForCOM is successfull for package-"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_d0} :catch_128

    move-object/from16 v23, v3

    const/4 v2, 0x0

    :try_start_d3
    aget-object v3, v14, v2

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name -"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and user 0"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v0, v8, v11

    add-int/lit8 v11, v11, 0x1

    nop

    move-object/from16 v0, v16

    move-object/from16 v3, v23

    move/from16 v2, p1

    const/4 v5, 0x0

    goto/16 :goto_59

    :cond_fd
    move-object/from16 v23, v3

    if-eqz v6, :cond_118

    array-length v0, v6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_118

    new-instance v0, Landroid/content/ComponentName;

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v3, 0x1

    aget-object v3, v6, v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    invoke-direct {v1, v8, v10}, Lcom/android/server/pm/PersonaManagerService;->setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const/4 v0, 0x1

    goto :goto_12f

    :catch_116
    move-exception v0

    goto :goto_12b

    :cond_118
    const-string v0, "PersonaManagerService:FOTA"

    const-string v2, " default launcher info not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PersonaManagerService:FOTA"

    const-string v2, " defaultComponent is null, so return false"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_126} :catch_116

    const/4 v0, 0x0

    return v0

    :catch_128
    move-exception v0

    move-object/from16 v23, v3

    :goto_12b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_12f
    return v0

    :cond_130
    move-object/from16 v23, v3

    :goto_132
    const-string v0, "PersonaManagerService:FOTA"

    const-string v2, " enableOwnerLaunchersForCOM disabledpackages is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private enablePackage(Ljava/lang/String;ZI)V
    .registers 11

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    :goto_e
    move v3, v0

    goto :goto_12

    :cond_10
    const/4 v0, 0x2

    goto :goto_e

    :goto_12
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p3

    :try_start_16
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method private enableSamsunAppsForLWC(I)Z
    .registers 7

    const-string v0, "com.sec.android.app.samsungapps"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_4a

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_2b
    const/4 v1, 0x1

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install launcher "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return v1
.end method

.method private filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    if-nez v0, :cond_b

    :cond_8
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->parseEnterprisedataXml()V

    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3c

    return-object v1

    :cond_3c
    goto :goto_29

    :cond_3d
    goto :goto_15

    :cond_3e
    const-string v0, "PersonaManagerService"

    const-string v1, "filterTypeByContainerId mTypeList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAdminNameFromEnterpriseDB(I)Ljava/lang/String;
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_3
    const-string v3, "/data/system/enterprise.db"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ADMIN_INFO"

    const-string v5, "adminName"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "adminUid=?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    if-eqz v2, :cond_4e

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4e

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_5c
    .catchall {:try_start_3 .. :try_end_43} :catchall_5a

    if-eqz v2, :cond_48

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_48
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4d
    return-object v4

    :cond_4e
    nop

    if-eqz v2, :cond_54

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_54
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_59
    return-object v1

    :catchall_5a
    move-exception v1

    goto :goto_6c

    :catch_5c
    move-exception v3

    :try_start_5d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    nop

    if-eqz v2, :cond_66

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_66
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6b
    return-object v1

    :goto_6c
    if-eqz v2, :cond_71

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_71
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_76
    throw v1
.end method

.method private getAdminPackageName(I)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAdminUid(I)I
    .registers 7

    const/4 v0, -0x1

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1e

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Admin Found for User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1e
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    return v3

    :catch_2d
    move-exception v1

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error fetching admin uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getAdminUidFromEnterpriseDB(I)I
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v3, -0x1

    :try_start_4
    const-string v4, "/data/system/enterprise.db"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "MUMCONTAINER"

    const-string v4, "adminUid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "containerId=?"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    aput-object v1, v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_4f

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4f

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_44} :catch_5d
    .catchall {:try_start_4 .. :try_end_44} :catchall_5b

    if-eqz v2, :cond_49

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_49
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4e
    return v4

    :cond_4f
    nop

    if-eqz v2, :cond_55

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_55
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5a
    return v3

    :catchall_5b
    move-exception v1

    goto :goto_6d

    :catch_5d
    move-exception v1

    :try_start_5e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_5b

    nop

    if-eqz v2, :cond_67

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_67
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6c
    return v3

    :goto_6d
    if-eqz v2, :cond_72

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_72
    if-eqz v0, :cond_77

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_77
    throw v1
.end method

.method private getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_10

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAppService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method private getBoundedWidgets(I)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_b
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_2b} :catch_30

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2e
    nop

    return-object v1

    :catch_30
    move-exception v2

    const-string v3, "PersonaManagerService:KnoxAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.sec.knox.UPDATE_WIDGET exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method public static getContainerCriticalApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getContainerCriticalApps"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    return-object v0
.end method

.method private getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object v0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    return-object v0

    :cond_7
    const-string/jumbo v0, "ro.build.PDA"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getEdmService(Landroid/content/Context;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 2

    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private getExternalStorageWhitelistedPackages(I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;"
        }
    .end annotation

    const-string v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalStorageWhitelistedPackages personaId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_1b
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    move v1, v2

    const-string/jumbo v2, "packageName"

    const-string/jumbo v3, "signatures"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "KnoxExternalStorageWhitelist"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_c4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_56
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "signatures"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "PersonaManagerService:FOTA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExternalStorageWhitelistedPackages Pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v9, :cond_a0

    const-string v9, "PersonaManagerService:FOTA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExternalStorageWhitelistedPackages signatures "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    new-instance v9, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v9, v7, v8}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_a9
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->clearPackagesFromExternalStorageWhiteList(II)Z

    move-result v5

    const-string v6, "PersonaManagerService:FOTA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getExternalStorageWhitelistedPackages clean whitelist table status - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    :cond_c4
    const-string v5, "PersonaManagerService:FOTA"

    const-string v6, "getExternalStorageWhitelistedPackages providerList is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_cb} :catch_cc

    :goto_cb
    goto :goto_e3

    :catch_cc
    move-exception v1

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStorageWhitelistedPackages exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e3
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    const-string v0, "getInstance"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-class v0, Lcom/android/server/pm/PersonaManagerService;

    monitor-enter v0

    :try_start_8
    sget-object v1, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getKnoxContainerVersion()Ljava/lang/String;
    .registers 5

    const-string v0, "N/A"

    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_c

    move-object v0, v1

    goto :goto_17

    :catch_c
    move-exception v1

    const-string v2, "PersonaManagerService"

    const-string v3, "getKnoxContainerVersion() - Unexpected error..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-object v0
.end method

.method private getKnoxGlobalSettingsIcon()[B
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v4

    const/4 v5, 0x0

    :try_start_12
    const-string v6, "com.android.settings"

    move-object v0, v6

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is Global Settings Package Installed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    if-eqz v6, :cond_88

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_87

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    const-string v12, "PersonaManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Global Settings PackageName List = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_86

    iget-object v10, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v10

    move v1, v10

    goto :goto_87

    :cond_86
    goto :goto_4e

    :cond_87
    :goto_87
    goto :goto_ac

    :cond_88
    const-string v8, "com.samsung.android.knox.containeragent"

    move-object v0, v8

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v8

    move-object v2, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":drawable/ic_global_settings"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v1, v8

    :goto_ac
    if-eqz v1, :cond_d2

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v7

    move-object v2, v7

    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v7, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_d1} :catch_d3

    return-object v9

    :cond_d2
    goto :goto_ea

    :catch_d3
    move-exception v6

    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to load icon from default resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ea
    return-object v5
.end method

.method private getKnoxMUMContainerPolicy()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .registers 2

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    if-nez v0, :cond_f

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    :cond_f
    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mKnoxMUMContainerPolicy:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    return-object v0
.end method

.method private getKnoxPhoneOrMessageIcon(Ljava/lang/String;)[B
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v0

    move v7, v0

    :try_start_17
    const-string v0, "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_d0

    const-string v0, "com.samsung.android.dialer"

    move-object v3, v0

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Is Phone Package Installed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a8

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.DIAL"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v10, v9, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_5a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_6a

    :cond_5a
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v10, v9, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    move-object v11, v12

    :cond_6a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    const-string v14, "PersonaManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Phone PackageName List = "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a6

    iget-object v8, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v8

    move v4, v8

    goto :goto_a7

    :cond_a6
    goto :goto_6e

    :cond_a7
    :goto_a7
    goto :goto_ce

    :cond_a8
    const-string v8, "com.samsung.android.knox.containeragent"

    move-object v3, v8

    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v8

    move-object v5, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":drawable/ic_phone"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v0, v8

    move v4, v0

    :goto_ce
    goto/16 :goto_165

    :cond_d0
    const-string v0, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    const-string v0, "com.samsung.android.messaging"

    move-object v3, v0

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    const-string v8, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Is SMS Package Installed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_140

    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.INFO"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v8, v9, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_11a

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_132

    :cond_11a
    const-string v11, "android.intent.category.INFO"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8, v9, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    move-object v10, v11

    :cond_132
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v11

    move v4, v11

    goto :goto_165

    :cond_140
    const-string v8, "com.samsung.android.knox.containeragent"

    move-object v3, v8

    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v8

    move-object v5, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":drawable/ic_message"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v4, v8

    :cond_165
    :goto_165
    if-eqz v4, :cond_18b

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    move-object v5, v0

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_18a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_18a} :catch_18c

    return-object v9

    :cond_18b
    goto :goto_1a3

    :catch_18c
    move-exception v0

    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load icon from default resource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a3
    const/4 v8, 0x0

    return-object v8
.end method

.method private getKnoxSettingsIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 9

    const/4 v0, 0x0

    const-string v1, "custom-container-icon"

    invoke-static {p3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    return-object v1

    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v0, "drawable/security_home_icon_security_color_1"

    goto :goto_30

    :cond_1f
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v0, "drawable/security_home_icon_security_color_2"

    goto :goto_30

    :cond_28
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v0, "drawable/security_home_icon_security_color_3"

    :cond_30
    :goto_30
    if-eqz v0, :cond_37

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    return-object v2

    :cond_37
    const/4 v2, 0x0

    return-object v2
.end method

.method private getKnoxSwitcherIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 16

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_83

    const/16 v5, -0x2710

    if-eq p3, v5, :cond_83

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const-string v5, "custom-container-icon"

    invoke-static {p3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_152

    if-eqz v1, :cond_152

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v6

    if-eqz v6, :cond_42

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "knox_icon_upgraded"

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v3, :cond_42

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "knox_icon_upgraded"

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_42
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "knox_icon_upgraded"

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-lez v6, :cond_53

    goto :goto_54

    :cond_53
    move v3, v4

    :goto_54
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v6

    if-eqz v6, :cond_62

    if-eqz v3, :cond_5f

    const-string v5, "drawable/knox_icon"

    goto :goto_7b

    :cond_5f
    const-string v5, "drawable/security_home_icon"

    goto :goto_7b

    :cond_62
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v6

    if-eqz v6, :cond_6b

    const-string v5, "drawable/knox_icon_2"

    goto :goto_7b

    :cond_6b
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v6

    if-eqz v6, :cond_79

    if-eqz v3, :cond_76

    const-string v5, "drawable/knox_icon_3"

    goto :goto_7b

    :cond_76
    const-string v5, "drawable/security_home_icon2"

    goto :goto_7b

    :cond_79
    const-string v5, "drawable/knox_icon"

    :goto_7b
    const-string v6, "com.samsung.android.knox.containeragent"

    invoke-direct {p0, v6, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    goto/16 :goto_152

    :cond_83
    const/4 v5, 0x0

    const-string v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c6

    const-string v6, "com.android.internal.app.ForwardIntentToManagedProfile1"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    goto :goto_c6

    :cond_95
    const-string v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c3

    const-string v6, "com.android.internal.app.ForwardIntentToManagedProfile2"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    goto :goto_c3

    :cond_a6
    const-string v6, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c0

    const-string v6, "com.android.internal.app.ForwardIntentToManagedProfile3"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    goto :goto_c0

    :cond_b7
    const-string v3, "com.samsung.android.knox.containeragent"

    const-string v6, "drawable/knox_icon"

    invoke-direct {p0, v3, v6, v4}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    return-object v2

    :cond_c0
    :goto_c0
    const/high16 v5, 0x800000

    goto :goto_c8

    :cond_c3
    :goto_c3
    const/high16 v5, 0x200000

    goto :goto_c8

    :cond_c6
    :goto_c6
    const/high16 v5, 0x100000

    :goto_c8
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_152

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v9, v5

    if-ne v9, v5, :cond_150

    move-object v1, v8

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    const-string v9, "custom-container-icon"

    invoke-static {v7, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_152

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v9

    if-eqz v9, :cond_110

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "knox_icon_upgraded"

    iget v11, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v10, v4, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eq v9, v3, :cond_110

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "knox_icon_upgraded"

    iget v11, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v10, v3, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_110
    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "knox_icon_upgraded"

    iget v11, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v10, v4, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-lez v9, :cond_121

    goto :goto_122

    :cond_121
    move v3, v4

    :goto_122
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v9

    if-eqz v9, :cond_130

    if-eqz v3, :cond_12d

    const-string v7, "drawable/knox_icon"

    goto :goto_149

    :cond_12d
    const-string v7, "drawable/security_home_icon"

    goto :goto_149

    :cond_130
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v9

    if-eqz v9, :cond_139

    const-string v7, "drawable/knox_icon_2"

    goto :goto_149

    :cond_139
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v9

    if-eqz v9, :cond_147

    if-eqz v3, :cond_144

    const-string v7, "drawable/knox_icon_3"

    goto :goto_149

    :cond_144
    const-string v7, "drawable/security_home_icon2"

    goto :goto_149

    :cond_147
    const-string v7, "drawable/knox_icon"

    :goto_149
    const-string v9, "com.samsung.android.knox.containeragent"

    invoke-direct {p0, v9, v7, v4}, Lcom/android/server/pm/PersonaManagerService;->loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    goto :goto_152

    :cond_150
    goto/16 :goto_d0

    :cond_152
    :goto_152
    if-eqz v1, :cond_160

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_160

    if-eqz v2, :cond_160

    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->convertToGreyIcon([B)[B

    move-result-object v2

    :cond_160
    return-object v2
.end method

.method private getLaunchPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, "com.sec.android.app.launcher"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "PersonaManagerService:FOTA"

    const-string v3, "getLaunchPkgName launch file not exists"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_15
    const/4 v2, 0x0

    :try_start_16
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_71

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLaunchPkgName - Package name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v8, v3, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Class name : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, v3, v7
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_54} :catch_bd
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_54} :catch_97
    .catchall {:try_start_16 .. :try_end_54} :catchall_95

    nop

    :try_start_55
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_70

    :catch_59
    move-exception v6

    const-string v7, "PersonaManagerService:FOTA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLaunchPkgName IOException when close file\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_70
    return-object v5

    :cond_71
    :try_start_71
    const-string v3, "PersonaManagerService:FOTA"

    const-string v5, "getLaunchPkgName launch file is empty"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_78} :catch_bd
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_78} :catch_97
    .catchall {:try_start_71 .. :try_end_78} :catchall_95

    nop

    :try_start_79
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    :goto_7c
    goto :goto_e3

    :catch_7d
    move-exception v3

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_85
    const-string v6, "getLaunchPkgName IOException when close file\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :catchall_95
    move-exception v3

    goto :goto_e4

    :catch_97
    move-exception v3

    :try_start_98
    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLaunchPkgName IOException\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_98 .. :try_end_ae} :catchall_95

    if-eqz v2, :cond_e3

    :try_start_b0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_7c

    :catch_b4
    move-exception v3

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_85

    :catch_bd
    move-exception v3

    :try_start_be
    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLaunchPkgName FileNotFoundException\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_be .. :try_end_d4} :catchall_95

    if-eqz v2, :cond_e3

    :try_start_d6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    goto :goto_7c

    :catch_da
    move-exception v3

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_85

    :cond_e3
    :goto_e3
    return-object v0

    :goto_e4
    if-eqz v2, :cond_101

    :try_start_e6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_101

    :catch_ea
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLaunchPkgName IOException when close file\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PersonaManagerService:FOTA"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_101
    :goto_101
    throw v3
.end method

.method private getPOPrimeOwner(I)Ljava/lang/String;
    .registers 12

    const-string v0, "PersonaManagerService:FOTA"

    const-string v1, "getPOPrimeOwner is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "profile_owner.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    nop

    :try_start_1b
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v1, v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_28
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_34

    if-eq v6, v7, :cond_34

    goto :goto_28

    :cond_34
    if-eq v6, v8, :cond_49

    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string v5, "PersonaManagerService:FOTA"

    const-string v7, "Unable to read profileOwnerFile"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_40} :catch_9e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_40} :catch_91
    .catchall {:try_start_1b .. :try_end_40} :catchall_8f

    nop

    if-eqz v1, :cond_48

    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v5

    :cond_48
    :goto_48
    return-object v4

    :cond_49
    :try_start_49
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    if-eq v5, v7, :cond_87

    if-ne v6, v8, :cond_49

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_49

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "profile-owner"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    const-string/jumbo v5, "package"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_49

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readGooglePOOwner entry - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_86} :catch_9e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_86} :catch_91
    .catchall {:try_start_49 .. :try_end_86} :catchall_8f

    nop

    :cond_87
    if-eqz v1, :cond_ab

    :try_start_89
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    :goto_8c
    goto :goto_ab

    :catch_8d
    move-exception v3

    goto :goto_8c

    :catchall_8f
    move-exception v3

    goto :goto_ac

    :catch_91
    move-exception v3

    :try_start_92
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_8f

    if-eqz v1, :cond_ab

    :try_start_9a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_8d

    goto :goto_8c

    :catch_9e
    move-exception v3

    :try_start_9f
    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_8f

    if-eqz v1, :cond_ab

    :try_start_a7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_8d

    goto :goto_8c

    :cond_ab
    :goto_ab
    return-object v0

    :goto_ac
    if-eqz v1, :cond_b3

    :try_start_ae
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_b3

    :catch_b2
    move-exception v4

    :cond_b3
    :goto_b3
    throw v3
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method private getSEAMSService()Lcom/android/server/SEAMService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSEAMS:Lcom/android/server/SEAMService;

    if-nez v0, :cond_e

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SEAMService;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSEAMS:Lcom/android/server/SEAMService;

    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSEAMS:Lcom/android/server/SEAMService;

    return-object v0
.end method

.method private getSecureFolderIcon()[B
    .registers 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_18
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.knox.securefolder"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_24} :catch_b6

    move-object v4, v5

    nop

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_28
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "secure_folder_image_name"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Settings.Secure.SECURE_FOLDER_IMAGE_NAME : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_56

    if-eqz v7, :cond_56

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5a

    :cond_56
    const-string/jumbo v8, "sf_app_icon_00"

    move-object v7, v8

    :cond_5a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_67

    invoke-direct {p0, v4, v7, v2}, Lcom/android/server/pm/PersonaManagerService;->createSFNameBitmap(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v6, v8

    goto :goto_86

    :cond_67
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.samsung.knox.securefolder:drawable/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v5, v8

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v6, v8

    :goto_86
    if-eqz v6, :cond_99

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v6, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_98} :catch_9a

    return-object v9

    :cond_99
    goto :goto_b5

    :catch_9a
    move-exception v5

    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in getSecureFolderIcon : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b5
    return-object v3

    :catch_b6
    move-exception v5

    const-string v6, "PersonaManagerService"

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getSemClipboardService()Lcom/android/server/semclipboard/SemClipboardService;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    return-object v0

    :cond_7
    const-string/jumbo v0, "semclipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    check-cast v1, Lcom/android/server/semclipboard/SemClipboardService;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mSemClipboardService:Lcom/android/server/semclipboard/SemClipboardService;

    return-object v1
.end method

.method private declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1e

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1e

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getTrustManager()Landroid/app/trust/ITrustManager;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    if-nez v0, :cond_12

    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUninstallablePackagesForRemovePersona : is called for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_30

    const-string v2, "PersonaManagerService"

    const-string v3, "getUninstallablePackagesForRemovePersona no personaInfo for this persona"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_30
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUninstallablePackagesForRemovePersona : parentUserId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-eq v9, p1, :cond_8d

    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collect packages started for  : personaid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9, v3}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    goto :goto_a5

    :cond_8d
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collect packages igonored for  : personaid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a5
    goto :goto_5f

    :cond_a6
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collect packages started for removing : personaId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->collectInstalledPackages(ILjava/util/Set;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->isKnoxBluetoothSupported()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_d0

    const-string v7, "com.sec.knox.bluetooth"

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "com.sec.knox.bluetooth"

    invoke-virtual {p0, v7, v8, v8}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :cond_d0
    const-string v7, "com.sec.knox.packageverifier"

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "com.sec.knox.packageverifier"

    invoke-virtual {p0, v7, v8, v8}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :try_start_da
    const-string v7, "com.sec.knox.knoxlauncher"

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "com.sec.knox.knoxlauncher"

    invoke-virtual {p0, v7, v8, v8}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e4} :catch_e5

    goto :goto_ee

    :catch_e5
    move-exception v7

    const-string v9, "PersonaManagerService"

    const-string/jumbo v10, "not exist card type launcher"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ee
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v7

    if-eqz v7, :cond_fe

    const-string v7, "com.samsung.android.bbc.fileprovider"

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v7, "com.samsung.android.bbc.fileprovider"

    invoke-virtual {p0, v7, v8, v8}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    :cond_fe
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "otherUsersPackages size -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "personaPackages size -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_165

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_165

    const-string v8, "PersonaManagerService"

    const-string v9, "Removing packages added to Owner user during boot."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_153
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_165

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_153

    :cond_165
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_169
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_179

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_169

    :cond_179
    :try_start_179
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v9

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v12, v9, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v11

    invoke-static {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v12

    if-eqz v12, :cond_1a7

    invoke-virtual {v12}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_1a7} :catch_1a8

    :cond_1a7
    goto :goto_1ac

    :catch_1a8
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1ac
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "packagesToBeUnInstall size -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1cb
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1ee

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pkg to be uninstalled is -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cb

    :cond_1ee
    return-object v5
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private getUserManagerInternal()Landroid/os/UserManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method private handleActivityResumed(Landroid/os/Bundle;)V
    .registers 14

    :try_start_0
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const-string v2, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v3

    sget-boolean v4, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v4, :cond_45

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleActivityResumed for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", showwhenlocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", keyguardOwner : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/16 v4, -0x515

    if-eqz v2, :cond_c5

    if-eq v3, v4, :cond_c5

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_9c

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v7, "KnoxKeyguardEventFlag"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "forceHide"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.knox.securefolder"

    const-string v7, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "return code : 0, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    :cond_9c
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v7, "KnoxKeyguardEventFlag"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "forceHide"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.knox.containeragent"

    const-string v7, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v5, "PersonaManagerService"

    const-string/jumbo v6, "return code : 1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c4
    return-void

    :cond_c5
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_d4

    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "return code : 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d4
    if-nez v2, :cond_f2

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->shouldSuperLock(I)Z

    move-result v5

    if-eqz v5, :cond_f2

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->createLockdownIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "return code : 3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f2
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v5

    if-nez v5, :cond_107

    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "return code : 4"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_107
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_126

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v5, :cond_126

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v5

    if-eqz v5, :cond_126

    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "skip showing K in UltraPowerSavingMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_126
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->shouldConfirmCredentials(I)Z

    move-result v5

    if-eqz v5, :cond_1c7

    if-nez v2, :cond_1c7

    const-string v5, "knox.container.proxy.EXTRA_COMPONENT_NAME"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    const-string v6, "android.intent.extra.INTENT"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    const-string v7, "knox.container.proxy.EXTRA_MULTIWINDOWRECORD"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->createConfirmProfileCredentialIntent(I)Landroid/content/Intent;

    move-result-object v8

    if-eqz v6, :cond_153

    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_153
    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MultiwindowRecord : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_169} :catch_1c8

    :try_start_169
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->isDesktopMode()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_19b

    if-eqz v7, :cond_17a

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1be

    :cond_17a
    if-ne v3, v4, :cond_1be

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v8, v10}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string v4, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startConfirmDeviceCredentialIntent for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1be

    :cond_19b
    if-ne v3, v4, :cond_1bb

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v8, v10}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string v4, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startConfirmDeviceCredentialIntent for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bb
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->hideMultiWindows(I)V
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_1be} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1be} :catch_1c8

    :cond_1be
    :goto_1be
    goto :goto_1c7

    :catch_1bf
    move-exception v4

    :try_start_1c0
    const-string v9, "PersonaManagerService"

    const-string v10, "Failed to start KnoxKeyguard"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1c7} :catch_1c8

    :cond_1c7
    :goto_1c7
    goto :goto_1e3

    :catch_1c8
    move-exception v0

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleActivityResumed: error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e3
    return-void
.end method

.method private handleFOTAContainerOnlyMode()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v0

    const-string v1, "com.samsung.android.dialer"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    :try_start_16
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_25

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v5, v0, v3, v3}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageAsUser(Ljava/lang/String;III)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_26

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_25
    goto :goto_2a

    :catch_26
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private handleFOTADeleteToPackages()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v4

    if-eqz v4, :cond_55

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v5

    if-nez v5, :cond_33

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_55

    :cond_33
    invoke-virtual {v4}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_55

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v7}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)Z

    goto :goto_43

    :cond_55
    goto :goto_f

    :cond_56
    return-void
.end method

.method private handleFOTADisallowedPackages()V
    .registers 10

    const-string v0, "PersonaManagerService:FOTA"

    const-string v1, "handleFOTADisallowedPackages() called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_fc

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-nez v5, :cond_34

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v5

    if-eqz v5, :cond_59

    :cond_34
    const-string v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleFOTADisallowedPackages() user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "com.sec.sprextension.phoneinfo"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, v5}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    :cond_59
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_73

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "com.sec.android.app.kidshome"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, v5}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    :cond_73
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_fa

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "com.samsung.android.fmm"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "com.felicanetworks.mfm"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v1, v8}, Lcom/android/server/pm/PersonaManagerService;->enablePackage(Ljava/lang/String;ZI)V

    goto :goto_92

    :cond_a4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v7

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerTypeForUserId(I)I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_c6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_c6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_bd

    goto :goto_c6

    :cond_bd
    const/4 v8, 0x6

    if-ne v7, v8, :cond_d0

    const-string v8, "com.samsung.android.homemode"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_c6
    :goto_c6
    const-string v8, "com.samsung.android.dialer"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.samsung.android.homemode"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d0
    :goto_d0
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v8

    if-eqz v8, :cond_eb

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v8

    if-nez v8, :cond_eb

    const-string v8, "com.samsung.android.samsungpass"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.samsung.android.samsungpassautofill"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "com.google.android.apps.turbo"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_eb
    const-string v8, "com.samsung.android.bluelightfilter"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_f0
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v6}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f5} :catch_f6

    goto :goto_fa

    :catch_f6
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_fa
    :goto_fa
    goto/16 :goto_16

    :cond_fc
    return-void
.end method

.method private handleFOTAInstallToPackages()V
    .registers 16

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_3e

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v6

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v6, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v3

    :cond_3e
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v6

    if-eqz v6, :cond_f4

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v7

    if-nez v7, :cond_56

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f4

    :cond_56
    invoke-virtual {v6}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_f4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f4

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_97

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_97

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    :goto_88
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_96

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_96
    goto :goto_7c

    :cond_97
    if-eqz v7, :cond_f4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f4

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :try_start_af
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Application upgrade-Add : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_ce

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z

    :cond_ce
    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v11, v10}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d3} :catch_d4

    goto :goto_f3

    :catch_d4
    move-exception v11

    const-string v12, "PersonaManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to install "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for Persona "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f3
    goto :goto_a3

    :cond_f4
    goto/16 :goto_17

    :cond_f6
    return-void
.end method

.method private handleFOTAProfileOwnerPrime()V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "PersonaManagerService:FOTA"

    const-string v2, "handleFOTAProfileOwnerPrime() update UserInfo.attribute for PO -> PO\' FOTA case from 2.9 -> 3.0"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_2e3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    move v4, v0

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v7

    if-eqz v7, :cond_46

    const/4 v4, 0x1

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v7}, Lcom/android/server/pm/PersonaManagerService;->isMyKnoxContainer(I)Z

    move-result v7

    if-eqz v7, :cond_5f

    const-string v7, "PersonaManagerService:FOTA"

    const-string v8, "handleFOTAProfileOwnerPrime() Trying to remove my knox icon"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->removeMyKnoxIcon()V

    goto :goto_5f

    :cond_46
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v7

    if-eqz v7, :cond_5f

    const/4 v6, 0x1

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v7}, Lcom/android/server/pm/PersonaManagerService;->isMyKnoxContainer(I)Z

    move-result v7

    if-eqz v7, :cond_5f

    const-string v7, "PersonaManagerService:FOTA"

    const-string v8, "handleFOTAProfileOwnerPrime() Trying to remove my knox II icon"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->removeMyKnoxIcon()V

    :cond_5f
    :goto_5f
    goto :goto_20

    :cond_60
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.samsungapps"

    const-string v7, "com.sec.android.app.samsungapps.SamsungAppsMainActivity"

    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_76
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/UserInfo;

    const-string v0, "PersonaManagerService:FOTA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleFOTAProfileOwnerPrime() get user: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x1

    if-eqz v0, :cond_160

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v11

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v12

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v13, v11, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v12, v0, v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v13

    const/4 v14, 0x2

    if-eqz v13, :cond_108

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_108

    :try_start_c2
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    const-string v15, "*"

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackageFromBlackList(ILjava/lang/String;)I
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d0
    :try_start_d0
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    const-string v15, "com.knox.vpn.proxyhandler"

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d9} :catch_da

    goto :goto_de

    :catch_da
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_de
    :try_start_de
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    const-string v15, "com.samsung.knox.keychain"

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e7} :catch_e8

    goto :goto_ec

    :catch_e8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ec
    :try_start_ec
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    const-string v15, "com.android.providers.telephony"

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f5} :catch_f6

    goto :goto_fa

    :catch_f6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_fa
    :try_start_fa
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    const-string v15, "com.samsung.android.dialer"

    invoke-virtual {v0, v15}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_103} :catch_104

    goto :goto_108

    :catch_104
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_108
    :goto_108
    if-eqz v13, :cond_119

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, v5, v10}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationComponentState(Landroid/content/ComponentName;Z)Z

    :cond_119
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    const-string v15, "com.android.server.telecom"

    invoke-direct {v1, v0, v15}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    :try_start_120
    new-instance v0, Landroid/content/ComponentName;

    const-string v15, "com.samsung.android.contacts"

    const-string v10, "com.android.contacts.NonPhoneActivity"

    invoke-direct {v0, v15, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v0, v14, v2, v15}, Lcom/android/server/pm/PackageManagerService;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_130} :catch_131

    goto :goto_135

    :catch_131
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_135
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->isMdfppContainer(I)Z

    move-result v0

    if-eqz v0, :cond_160

    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-eqz v0, :cond_160

    const-string v0, "PersonaManagerService:FOTA"

    const-string v10, "FOTA case : MDFPP SDP container"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_14c
    invoke-virtual {v13}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Lcom/samsung/android/knox/container/BasePasswordPolicy;

    move-result-object v0

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v10}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v10

    const/high16 v14, 0x10000

    invoke-virtual {v0, v10, v14}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->setPasswordQuality(Landroid/content/ComponentName;I)V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_15b} :catch_15c

    goto :goto_160

    :catch_15c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_160
    :goto_160
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_2df

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v0

    if-nez v0, :cond_2df

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v0

    if-nez v0, :cond_2df

    :try_start_172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    or-int/lit8 v10, v10, 0x10

    const-string v12, "PersonaManagerService:FOTA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleFOTAProfileOwnerPrime() PO\' is always the third container migrated "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v12, 0x800000

    or-int/2addr v10, v12

    const-string v12, "flags"

    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "attributes"

    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v12

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13, v0}, Landroid/os/UserManager;->updateUserInfo(ILandroid/os/Bundle;)Z

    const-string v12, "PersonaManagerService:FOTA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleFOTAProfileOwnerPrime() update attribute for AFW ManagedProfile: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "PersonaManagerService:FOTA"

    const-string v13, "handleFOTAProfileOwnerPrime() migrating Settings.System.KNOX_SETTINGS_KNOX_STYLE as FOLDER"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "KNOX_SETTINGS_KNOX_STYLE"

    const-string v14, "FOLDER"

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v12, "PersonaManagerService:FOTA"

    const-string v13, "handleFOTAProfileOwnerPrime() migrating  Settings.System.IS_SHOWN_FOLDER_HELP "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "IS_SHOWN_FOLDER_HELP"

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v13, v2, v14}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v12, "PersonaManagerService:FOTA"

    const-string v13, "handleFOTAProfileOwnerPrime() migrating Settings.System.IS_SHOWN_LAUNCHER_HELP "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "IS_SHOWN_LAUNCHER_HELP"

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v13, v2, v14}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v12, "PersonaManagerService:FOTA"

    const-string v13, "handleFOTAProfileOwnerPrime() set default Settings.System.KNOX_SCREEN_OFF_TIMEOUT "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "knox_screen_off_timeout"

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12, v13, v2, v14}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v12, "PersonaManagerService:FOTA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleFOTAProfileOwnerPrime() set default caller_id_to_show_ "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "caller_id_to_show_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v12, "PersonaManagerService:FOTA"

    const-string v13, "handleFOTAProfileOwnerPrime() Adding Google PO owner uid in enterprise DB"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v12}, Lcom/android/server/pm/PersonaManagerService;->getPOPrimeOwner(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v12, v14}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v13

    const-string v14, "PersonaManagerService:FOTA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFOTAProfileOwnerPrime() ownerPackage: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid - "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    if-eqz v2, :cond_2a9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    move-result v2

    const-string v14, "PersonaManagerService:FOTA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "handleFOTAProfileOwnerPrime() addMUMContainer result: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ab

    :cond_2a9
    move-object/from16 v16, v0

    :goto_2ab
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->installKnoxApps(I)Z

    move-result v0

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleFOTAProfileOwnerPrime() agentInstallStatus : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_2c7} :catch_2c8

    goto :goto_2df

    :catch_2c8
    move-exception v0

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleFOTAProfileOwnerPrime() exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2df
    :goto_2df
    nop

    const/4 v2, 0x0

    goto/16 :goto_76

    :cond_2e3
    return-void
.end method

.method private handleFOTARemoveWorkspaceShortcut()V
    .registers 13

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v7

    if-nez v7, :cond_3c

    const/4 v2, 0x1

    :cond_3c
    goto :goto_1d

    :cond_3d
    if-eqz v2, :cond_65

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.knox.containeragent"

    const-string v7, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconI"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-interface {v0, v5, v7, v6, v3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.knox.containeragent"

    const-string v10, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconII"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8, v7, v6, v3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.samsung.android.knox.containeragent"

    const-string v11, "com.samsung.android.knox.containeragent.switcher.SwitchToKnoxIconIII"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9, v7, v6, v3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    :cond_65
    goto :goto_6a

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6a
    return-void
.end method

.method private handleFotaResetSecureFolderAdmin()V
    .registers 3

    const-string v0, "PersonaManagerService:FOTA"

    const-string v1, "handleFotaResetSecureFolderAdmin()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->resetSecureFolderAdmin(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method private hideKeyguard(IZ)V
    .registers 7

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hide knox keyguard, because owner\'s activity launched. keyguardOwner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " forceHide = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "KnoxKeyguardEventFlag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "forceHide"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.securefolder"

    const-string v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_71

    :cond_4b
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "KnoxKeyguardEventFlag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "forceHide"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.containeragent"

    const-string v3, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_71
    :goto_71
    return-void
.end method

.method private installContainerCriticalApps()V
    .registers 8

    const-string v0, "PersonaManagerService:FOTA"

    const-string v1, "installContainerCriticalApps()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_1a

    :cond_2d
    :try_start_2d
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "com.samsung.android.knox.containeragent"

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "com.samsung.android.knox.containercore"

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_55

    :catch_3c
    move-exception v3

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install Core and Agnet for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    goto :goto_1a

    :cond_56
    return-void
.end method

.method private installExistingPackageForPersona(ILjava/lang/String;)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_59

    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "packageAlreadyInstalled is true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " installExistingPackageForPersona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_57

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Failure to install package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package manager result code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_57
    const/4 v1, 0x0

    return v1

    :cond_59
    return v1
.end method

.method private installKnoxApps(I)Z
    .registers 8

    const-string v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installKnoxApps is called for userid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "com.sec.android.app.launcher"

    :try_start_19
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->enableLauncher(ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1e

    const/4 v0, 0x1

    goto :goto_35

    :catch_1e
    move-exception v2

    const-string v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installKnoxApps() exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return v0
.end method

.method private isBiometricsEnabledAfterFota(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dedicated_biometrics"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method private isDesktopMode()Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    return v1

    :cond_1d
    return v1
.end method

.method private isDualMode()Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    nop

    :cond_19
    return v1

    :cond_1a
    return v1
.end method

.method private isIMPackage(Ljava/lang/String;I)I
    .registers 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x808280

    invoke-virtual {v1, v2, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v6, "android.permission.BIND_INPUT_METHOD"

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    const/4 v0, 0x1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_3a
    return v0
.end method

.method private isKnoxBluetoothSupported()Z
    .registers 2

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    return v0
.end method

.method static isKnoxSupported()Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "v00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    return v2
.end method

.method private isMultifactorAuthenticationEnforced(II)Z
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    const-string/jumbo v2, "propertyValue"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "cid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "propertyName"

    const-string v5, "MultifactorAuthentication"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v4, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v4, :cond_4f

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMultifactorAuthenticationEnforced: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " EnforceAuthForContainer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_af

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_af

    const-string v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMultifactorAuthenticationEnforced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v5, "propertyValue"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_af

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string v6, "CONTAINER_POLICY"

    invoke-virtual {v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_af

    const-string v5, "PersonaManagerService:FOTA"

    const-string v6, "isMultifactorAuthenticationEnforced : cleaned entry from container policy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_af} :catch_b0

    :cond_af
    goto :goto_ba

    :catch_b0
    move-exception v0

    const-string v2, "PersonaManagerService:FOTA"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    return v1
.end method

.method private isMyKnoxContainer(I)Z
    .registers 7

    const-string v0, "com.samsung.knoxpb.mdm"

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.knoxpb.mdm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_25

    :cond_23
    const/4 v4, 0x0

    return v4

    :cond_25
    :goto_25
    const/4 v4, 0x1

    return v4
.end method

.method private isOneLockOngoing()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_one_lock_ongoing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method private isPwdChangeRequested(I)Z
    .registers 4

    :try_start_0
    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_14

    if-lez v1, :cond_13

    const/4 v1, 0x1

    return v1

    :cond_13
    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method private static isSecureFolderAdminActive(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmService(Landroid/content/Context;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method private isSecureFolderSupported()Z
    .registers 3

    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isShareClipboardDataToOwnerAllowed(II)Z
    .registers 14

    const-string v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShareClipboardDataToOwnerAllowed is called for personaId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "adminUid"

    const-string/jumbo v2, "propertyValue"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "name"

    const-string v4, "Clipboard"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "propertyName"

    const-string v4, "knox-export-data"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string v4, "RCP_DATA"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_f1

    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    const-string v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShareClipboardDataToOwnerAllowed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_69
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    const-string v8, "adminUid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_89

    const-string/jumbo v6, "propertyValue"

    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8a

    :cond_89
    goto :goto_69

    :cond_8a
    :goto_8a
    if-eqz v5, :cond_f1

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "name"

    const-string v8, "Clipboard"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "propertyName"

    const-string v8, "knox-export-data"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v7

    const-string v8, "RCP_DATA"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    if-lez v7, :cond_f1

    const-string v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removing clipboard export entry for admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v8

    const-string v9, "RCP_DATA"

    invoke-virtual {v8, v9, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_f1

    const-string v8, "PersonaManagerService:FOTA"

    const-string v9, "Clipboard entry is successfully removed..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShareClipboardDataToOwnerAllowed: status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isUserBeingRemoved(I)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_1f

    const/4 v1, 0x0

    return v1

    :cond_1f
    goto :goto_d

    :cond_20
    return v1
.end method

.method private killKnoxLauncher(I)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v2, p1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "com.sec.knox.home.crossprofilefilter"

    invoke-interface {v4, v5, v6}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_30} :catch_31

    goto :goto_3c

    :catch_31
    move-exception v3

    const-string v4, "PersonaManagerService"

    const-string v5, "killKnoxLauncher Exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3c
    return-void
.end method

.method private loadDefaultIconRes(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading default resources - packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", defaultIconRes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_62} :catch_64

    return-object v6

    :cond_63
    goto :goto_7b

    :catch_64
    move-exception v1

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load icon from default resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    return-object v0
.end method

.method private logKnoxAnalytics(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    .registers 5

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v1, "PersonaManagerService:KnoxAnalytics"

    const-string v2, "Payload doesn\'t have event value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void
.end method

.method private mayResetOnRebootforCOM(I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accounts/AccountManagerService;->onUserReset(I)V

    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " startResetPersona - account has been reset for user - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->triggerAppUninstallationonReset(I)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->resetPersonaDataPartition(I)Z

    move-result v3

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetPersonaDataPartition for persona - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSettingsValue(I)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->recorverNotificationSound()V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v5, 0x9

    invoke-static {v4, p1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_57
    .catchall {:try_start_4 .. :try_end_54} :catchall_55

    goto :goto_5b

    :catchall_55
    move-exception v2

    goto :goto_60

    :catch_57
    move-exception v2

    :try_start_58
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_55

    :goto_5b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private migrateKnoxAppsData(I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->uninstallKnoxCoreInsideContainer(I)Z

    move-result v2

    move v1, v2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3e

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->copyUserData(I)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v1, :cond_18

    move v2, v3

    goto :goto_19

    :cond_18
    move v2, v0

    :goto_19
    move v1, v2

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->copySystemData()Z

    move-result v2

    if-eqz v2, :cond_24

    if-eqz v1, :cond_24

    move v2, v3

    goto :goto_25

    :cond_24
    move v2, v0

    :goto_25
    move v1, v2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->enableLauncherFromFolderContainer(I)Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz v1, :cond_30

    move v2, v3

    goto :goto_31

    :cond_30
    move v2, v0

    :goto_31
    move v1, v2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->enableSamsunAppsForLWC(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    if-eqz v1, :cond_3c

    move v2, v3

    goto :goto_3d

    :cond_3c
    move v2, v0

    :goto_3d
    move v1, v2

    :cond_3e
    const-string v2, "com.sec.knox.home.crossprofilefilter"

    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->clearHomeCrossProfileFilter(Ljava/lang/String;)Z

    move-result v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_4b

    if-eqz v2, :cond_4a

    if-eqz v1, :cond_4a

    move v0, v3

    nop

    :cond_4a
    goto :goto_64

    :catch_4b
    move-exception v0

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "migrateKnoxAppsData Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_64
    return v0
.end method

.method private migratePersonaPoliciesToMdmDb(I)Z
    .registers 16

    const-string v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "migratePersonaPoliciesToMdmDb personaId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 v2, 0x1

    move v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_28
    const-string v6, "PersonaManagerService:FOTA"

    const-string/jumbo v7, "migratePersonaPoliciesToMdmDb Installer whitelist MIGRATION started...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/knox/AppIdentity;

    const-string v8, ".*"

    invoke-direct {v7, v8, v5}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1, v2, v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/pm/PersonaManagerService;->readAppTypeList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9f

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_54
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_6d

    const-string v9, "com.sec.knox.containeragent2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    const-string v9, "com.samsung.android.knox.containeragent"

    move-object v8, v9

    :cond_6d
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v10, v8, v5}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1, v2, v10}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v9

    if-nez v9, :cond_7e

    move v9, v2

    goto :goto_7f

    :cond_7e
    move v9, v4

    :goto_7f
    const-string v10, "PersonaManagerService:FOTA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "migratePersonaPoliciesToMdmDb install whitelist package migrate result - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " for package - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_9f
    const-string v7, "PersonaManagerService:FOTA"

    const-string/jumbo v8, "migratePersonaPoliciesToMdmDb Installer whitelist is empty..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    const-string v7, "PersonaManagerService:FOTA"

    const-string/jumbo v8, "migratePersonaPoliciesToMdmDb Installer whitelist MIGRATION ended...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_af} :catch_b0

    goto :goto_cc

    :catch_b0
    move-exception v6

    const-string v7, "PersonaManagerService:FOTA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "migrateXmlToMdmDb Installer whitelist exception - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_cc
    const/4 v6, 0x2

    :try_start_cd
    const-string v7, "PersonaManagerService:FOTA"

    const-string/jumbo v8, "migratePersonaPoliciesToMdmDb External Storage whitelist MIGRATION started...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getExternalStorageWhitelistedPackages(I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_13d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_13d

    const-string v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "migratePersonaPoliciesToMdmDb External Storage whiteistedApps size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_100
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_145

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v10

    invoke-interface {v10, v1, v6, v9}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v10

    if-nez v10, :cond_118

    move v10, v2

    goto :goto_119

    :cond_118
    move v10, v4

    :goto_119
    const-string v11, "PersonaManagerService:FOTA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "migratePersonaPoliciesToMdmDb external storage package migrate result - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " for package - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    :cond_13d
    const-string v8, "PersonaManagerService:FOTA"

    const-string/jumbo v9, "migratePersonaPoliciesToMdmDb external storage db is empty..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_145
    const-string v8, "PersonaManagerService:FOTA"

    const-string/jumbo v9, "migratePersonaPoliciesToMdmDb External Storage whitelist MIGRATION ended...."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_14d} :catch_14e

    goto :goto_16a

    :catch_14e
    move-exception v7

    const-string v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "migrateXmlToMdmDb External Storage whitelist exception - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_16a
    :try_start_16a
    const-string v7, "PersonaManagerService:FOTA"

    const-string/jumbo v8, "migratePersonaPoliciesToMdmDb Blacklist all apps inside container for External storage started"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/knox/AppIdentity;

    const-string v9, ".*"

    invoke-direct {v8, v9, v5}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1, v6, v8}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    const-string v5, "PersonaManagerService:FOTA"

    const-string/jumbo v6, "migratePersonaPoliciesToMdmDb Blacklist all apps inside container for External storage ended"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_188} :catch_189

    goto :goto_1a5

    :catch_189
    move-exception v5

    const-string v6, "PersonaManagerService:FOTA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "migrateXmlToMdmDb External Storage blacklist exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_1a5
    :try_start_1a5
    const-string v5, "PersonaManagerService:FOTA"

    const-string/jumbo v6, "migratePersonaPoliciesToMdmDb External MultifactorAuthentication MIGRATION started...."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMultifactorAuthenticationEnforced(II)Z

    move-result v5

    if-eqz v5, :cond_1da

    const-string/jumbo v6, "password_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v6, :cond_1d9

    invoke-virtual {v6, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v7

    const-string v8, "PersonaManagerService:FOTA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "migratePersonaPoliciesToMdmDb MultifactorAuthentication result - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d9
    goto :goto_1e2

    :cond_1da
    const-string v6, "PersonaManagerService:FOTA"

    const-string/jumbo v7, "migratePersonaPoliciesToMdmDb MultifactorAuthentication is disabled. No migration needed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e2
    const-string v6, "PersonaManagerService:FOTA"

    const-string/jumbo v7, "migratePersonaPoliciesToMdmDb MultifactorAuthentication MIGRATION ended...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1ea} :catch_1eb

    goto :goto_207

    :catch_1eb
    move-exception v5

    const-string v6, "PersonaManagerService:FOTA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "migrateXmlToMdmDb MultifactorAuthenticationt exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_207
    :try_start_207
    const-string v5, "PersonaManagerService:FOTA"

    const-string/jumbo v6, "migratePersonaPoliciesToMdmDb CLIPBAORD data sharing MIGRATION started...."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->isShareClipboardDataToOwnerAllowed(II)Z

    move-result v5

    const-string/jumbo v6, "user"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Landroid/os/IUserManager;

    const-string/jumbo v7, "no_cross_profile_copy_paste"

    if-nez v5, :cond_222

    goto :goto_223

    :cond_222
    move v2, v4

    :goto_223
    invoke-interface {v6, v7, v2, p1}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    const-string v2, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " migratePersonaPoliciesToMdmDb setUserRestriction:value = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " personaId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "PersonaManagerService:FOTA"

    const-string/jumbo v4, "migratePersonaPoliciesToMdmDb CLIPBAORD data sharing MIGRATION ended...."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_24c} :catch_24d

    goto :goto_269

    :catch_24d
    move-exception v2

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateXmlToMdmDb CLIPBAORD data sharing exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    :goto_269
    return v3
.end method

.method private parseEnterprisedataXml()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    if-eqz v0, :cond_84

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_6
    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "reading from xml resource"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "enterprisedata.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z

    goto :goto_52

    :cond_4b
    const-string v0, "PersonaManagerService"

    const-string v3, "Failed to find enterprisedata.xml in system container"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_52} :catch_5a
    .catchall {:try_start_6 .. :try_end_52} :catchall_58

    :goto_52
    if-eqz v1, :cond_84

    :try_start_54
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_7a

    goto :goto_79

    :catchall_58
    move-exception v0

    goto :goto_7c

    :catch_5a
    move-exception v0

    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5b .. :try_end_74} :catchall_58

    if-eqz v1, :cond_84

    :try_start_76
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    :goto_79
    goto :goto_84

    :catch_7a
    move-exception v0

    goto :goto_79

    :goto_7c
    if-eqz v1, :cond_83

    :try_start_7e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v2

    :cond_83
    :goto_83
    throw v0

    :cond_84
    :goto_84
    return-void
.end method

.method private parseUserList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_79
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_74
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_6f

    const/4 v2, 0x0

    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_69
    .catchall {:try_start_b .. :try_end_10} :catchall_67

    nop

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    if-eqz v7, :cond_53

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    const-string v7, "<user id="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "\""

    invoke-direct {v7, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v7

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_52} :catch_5d
    .catchall {:try_start_16 .. :try_end_52} :catchall_5a

    goto :goto_16

    :cond_53
    :try_start_53
    invoke-static {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_69
    .catchall {:try_start_53 .. :try_end_56} :catchall_67

    :try_start_56
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_59} :catch_79
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_74
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_6f

    goto :goto_7d

    :catchall_5a
    move-exception v4

    move-object v5, v2

    goto :goto_63

    :catch_5d
    move-exception v4

    :try_start_5e
    throw v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_63
    :try_start_63
    invoke-static {v5, v3}, Lcom/android/server/pm/PersonaManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_67} :catch_69
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v3

    goto :goto_6b

    :catch_69
    move-exception v2

    :try_start_6a
    throw v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_67

    :goto_6b
    :try_start_6b
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_6f} :catch_79
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7e

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    :catch_79
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_7d
    nop

    :goto_7e
    return-object v0
.end method

.method private printLastTimeToBackground()V
    .registers 6

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "print lastTimeToBackground size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastTimeToBackground "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->lastTimeToBackground:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_58
    return-void
.end method

.method private readAppTypeList(ILjava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_38

    return-object v3

    :cond_38
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    :try_start_3b
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v5, v6

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    move-object v4, v6

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_4d
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_59

    const/4 v7, 0x1

    if-eq v8, v7, :cond_59

    goto :goto_4d

    :cond_59
    if-eq v8, v9, :cond_67

    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_5e} :catch_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_5e} :catch_b0
    .catchall {:try_start_3b .. :try_end_5e} :catchall_ae

    nop

    if-eqz v4, :cond_66

    :try_start_61
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v7

    :cond_66
    :goto_66
    return-object v3

    :cond_67
    const/4 v7, 0x0

    if-ne v8, v9, :cond_81

    :try_start_6a
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_81

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "appType"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_81

    invoke-interface {v6, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    :cond_81
    if-eqz v7, :cond_a6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a6

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v10

    const-string v10, ""

    filled-new-array {v3, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_a6} :catch_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_a6} :catch_b0
    .catchall {:try_start_6a .. :try_end_a6} :catchall_ae

    :cond_a6
    if-eqz v4, :cond_ca

    :try_start_a8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    :goto_ab
    goto :goto_ca

    :catch_ac
    move-exception v3

    goto :goto_ab

    :catchall_ae
    move-exception v3

    goto :goto_cb

    :catch_b0
    move-exception v3

    :try_start_b1
    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_ae

    if-eqz v4, :cond_ca

    :try_start_b9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_ac

    goto :goto_ab

    :catch_bd
    move-exception v3

    :try_start_be
    invoke-direct {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c4
    .catchall {:try_start_be .. :try_end_c4} :catchall_ae

    if-eqz v4, :cond_ca

    :try_start_c6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ac

    goto :goto_ab

    :cond_ca
    :goto_ca
    return-object v2

    :goto_cb
    if-eqz v4, :cond_d2

    :try_start_cd
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v6

    :cond_d2
    :goto_d2
    throw v3
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return p3

    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v1

    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-wide p3

    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    :catch_d
    move-exception v1

    return-wide p3
.end method

.method private readPersonaCacheLocked()V
    .registers 12

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "readPersonaCacheLocked is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_10
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_1d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_29

    if-eq v4, v5, :cond_29

    goto :goto_1d

    :cond_29
    if-eq v4, v6, :cond_3d

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string v3, "PersonaManagerService"

    const-string v5, "Unable to read persona cache"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_35} :catch_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_35} :catch_8f
    .catchall {:try_start_10 .. :try_end_35} :catchall_8d

    if-eqz v0, :cond_3c

    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3c

    :catch_3b
    move-exception v3

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    if-eq v3, v5, :cond_85

    if-ne v4, v6, :cond_3d

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "cache"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PersonaCache entry - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_84} :catch_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_84} :catch_8f
    .catchall {:try_start_3d .. :try_end_84} :catchall_8d

    goto :goto_3d

    :cond_85
    if-eqz v0, :cond_a9

    :try_start_87
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    :goto_8a
    goto :goto_a9

    :catch_8b
    move-exception v2

    goto :goto_8a

    :catchall_8d
    move-exception v2

    goto :goto_aa

    :catch_8f
    move-exception v2

    :try_start_90
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_8d

    if-eqz v0, :cond_a9

    :try_start_98
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_8b

    goto :goto_8a

    :catch_9c
    move-exception v2

    :try_start_9d
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_8d

    if-eqz v0, :cond_a9

    :try_start_a5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_8b

    goto :goto_8a

    :cond_a9
    :goto_a9
    return-void

    :goto_aa
    if-eqz v0, :cond_b1

    :try_start_ac
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_b1

    :catch_b0
    move-exception v3

    :cond_b1
    :goto_b1
    throw v2
.end method

.method private readUsersWithPersonaLocked()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_a5

    :cond_e
    const/4 v0, 0x0

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_16
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_23
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2f

    if-eq v5, v6, :cond_2f

    goto :goto_23

    :cond_2f
    if-eq v5, v7, :cond_43

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string v3, "PersonaManagerService"

    const-string v4, "Unable to read user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3b} :catch_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_3b} :catch_82
    .catchall {:try_start_16 .. :try_end_3b} :catchall_80

    if-eqz v0, :cond_42

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_42

    :catch_41
    move-exception v3

    :cond_42
    :goto_42
    return-void

    :cond_43
    :goto_43
    :try_start_43
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    if-eq v4, v6, :cond_78

    if-ne v5, v7, :cond_43

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "user"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v4, "id"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersWithPersonaList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_77} :catch_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_77} :catch_82
    .catchall {:try_start_43 .. :try_end_77} :catchall_80

    :cond_77
    goto :goto_43

    :cond_78
    if-eqz v0, :cond_9c

    :try_start_7a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    :goto_7d
    goto :goto_9c

    :catch_7e
    move-exception v2

    goto :goto_7d

    :catchall_80
    move-exception v2

    goto :goto_9d

    :catch_82
    move-exception v2

    :try_start_83
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_80

    if-eqz v0, :cond_9c

    :try_start_8b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_7e

    goto :goto_7d

    :catch_8f
    move-exception v2

    :try_start_90
    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_80

    if-eqz v0, :cond_9c

    :try_start_98
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_7e

    goto :goto_7d

    :cond_9c
    :goto_9c
    return-void

    :goto_9d
    if-eqz v0, :cond_a4

    :try_start_9f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_a4

    :catch_a3
    move-exception v3

    :cond_a4
    :goto_a4
    throw v2

    :cond_a5
    :goto_a5
    return-void
.end method

.method private recorverNotificationSound()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_sound"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "notification_sound_2"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_sound"

    invoke-static {v3, v4, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_sound_2"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private registerContentObserver()V
    .registers 6

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "registerContentObserver - 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->contentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "knox_finger_print_plus"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->contentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "knox_screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOX_SETTINGS_KNOX_STYLE"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disabled_print_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private removeFilesForSysApp(Lcom/android/server/EnterprisePartitionManager;ILjava/io/File;)V
    .registers 11

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/pm/PersonaManagerService;->removeFilesForSysApp(Lcom/android/server/EnterprisePartitionManager;ILjava/io/File;)V

    :cond_28
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/android/server/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_4a
    return-void
.end method

.method private removeMyKnoxIcon()V
    .registers 7

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.enterprise.knox.express"

    const-string v2, "com.sec.enterprise.knox.express.WelcomeActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.enterprise.knox.express"

    const-string v3, "com.sec.enterprise.knox.express.WelcomeActivityII"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_12
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v0, v5, v4, v3}, Lcom/android/server/pm/PackageManagerService;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v1, v5, v4, v3}, Lcom/android/server/pm/PackageManagerService;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_3b

    :catch_20
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removing MY KNOX ICON exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method

.method private removeSMSAppData()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_33

    const/4 v1, 0x0

    :try_start_c
    const-string v2, "/data/data/com.samsung.android.messaging/databases/message_content.db"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/SemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v2

    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_33

    :goto_16
    :try_start_16
    const-string v2, "/data/data/com.samsung.android.messaging/databases/message_content.db-shm"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/SemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v2

    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_33

    :goto_20
    :try_start_20
    const-string v2, "/data/data/com.samsung.android.messaging/databases/message_content.db-wal"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/SemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v2

    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "com.samsung.android.messaging"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_37
    return-void
.end method

.method private removeThirdPartyApksOnReset(ILjava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getUninstallablePackagesForRemovePersona(I)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez v0, :cond_14

    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "removePersonaHelper : packagesToBeUninstall is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_2f

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2f
    goto :goto_18

    :cond_30
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_46

    const-string v2, "PersonaManagerService"

    const-string v3, " uninstalling pkgs from finalpackagesToBeUnInstall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;-><init>(Lcom/android/server/pm/PersonaManagerService;ILjava/util/Set;I)V

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$UnInstallPkgsThread;->start()V

    :cond_46
    return-void
.end method

.method private resetPersonaDataPartition(I)Z
    .registers 3

    const-string/jumbo v0, "resetPersonaDataPartition"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->cleanPartition(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->cleanProviders(I)V

    :cond_f
    return v0
.end method

.method private static resetSecureFolderAdmin(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.knox.securefolder"

    const-string v2, "com.samsung.knox.securefolder.containeragent.detector.KnoxDeviceAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->isSecureFolderAdminActive(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "PersonaManagerService:FOTA"

    const-string/jumbo v2, "resetSecureFolderAdmin called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_1a
    return-void
.end method

.method public static resolveHomeIntent(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const-string v0, "PersonaManagerService"

    const-string v1, "RESOLVE_HOME_INTENT"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p0, :cond_18

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_18
    const-string/jumbo v1, "resolvedType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "knox.container.proxy.EXTRA_RESOLVE_INFO"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p3, :cond_2b

    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-string v3, "knox.container.proxy.COMMAND_RESOLVE_HOME_INTENT"

    invoke-static {v3, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_5f

    const-string v4, "knox.container.proxy.EXTRA_RESOLVE_INFO"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-eqz v4, :cond_5f

    const-string v5, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " RESOLVE_HOME_INTENT: returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5f
    const/4 v4, 0x0

    return-object v4
.end method

.method private restoreOwnerSettings()V
    .registers 8

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "restoreOwnerSettings is called. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users/0/settings_system.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/users/0/settings_system.xml_for_com"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_1f
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/users/0/settings_secure.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/users/0/settings_secure.xml_for_com"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-static {v3, v2}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_36
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/users/0/settings_global.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/users/0/settings_global.xml_for_com"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-static {v5, v4}, Lcom/android/server/pm/PersonaManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_4e

    :cond_4d
    goto :goto_52

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_52
    return-void
.end method

.method private retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    .registers 8

    const-string v0, "PersonaManagerService.KeyMgnt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieveCMK() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmkFormat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ContainerMasterK"

    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendLocationLog(I)V
    .registers 9

    if-eqz p1, :cond_c4

    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_c4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_c4

    :cond_16
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    goto :goto_2f

    :cond_20
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v0, 0x2

    goto :goto_2f

    :cond_28
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v0, 0x3

    :cond_2f
    :goto_2f
    new-instance v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_CONTAINER"

    const/4 v3, 0x1

    const-string v4, "CONTAINER_EVENT"

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_share_location"

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->locationRestrictionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-nez v3, :cond_72

    const-string/jumbo v4, "s"

    if-eqz v2, :cond_5e

    const-string/jumbo v5, "off"

    goto :goto_61

    :cond_5e
    const-string/jumbo v5, "on"

    :goto_61
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->locationRestrictionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    :cond_72
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v2, :cond_be

    const-string/jumbo v4, "s"

    if-eqz v2, :cond_81

    const-string/jumbo v5, "off"

    goto :goto_84

    :cond_81
    const-string/jumbo v5, "on"

    :goto_84
    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->locationRestrictionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_94
    const-string v4, "e"

    const-string v5, "LOCATION_CHANGED"

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cTp"

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v4, "PersonaManagerService:KnoxAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Location restriction / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->logKnoxAnalytics(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bd} :catch_bf

    goto :goto_c3

    :cond_be
    return-void

    :catch_bf
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c3
    return-void

    :cond_c4
    :goto_c4
    return-void
.end method

.method private sendMessageAndLockTimeout(II)V
    .registers 12

    if-lez p1, :cond_52

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v0

    const/16 v1, -0x515

    if-eq v0, v1, :cond_52

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "KnoxKeyguardEventFlag"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.knox.securefolder"

    const-string v4, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_52

    :cond_31
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_52

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "KnoxKeyguardEventFlag"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.knox.containeragent"

    const-string v4, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_52
    :goto_52
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5e
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v3

    if-nez v3, :cond_5e

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8d

    goto :goto_5e

    :cond_8d
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v3

    if-eqz v3, :cond_ea

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v3

    if-nez v3, :cond_ea

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-eq p1, v5, :cond_cb

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "knox.power_button_instantly_locks"

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-lez v6, :cond_ca

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ca

    const/4 v7, 0x2

    if-ne p2, v7, :cond_ca

    const/4 v8, 0x1

    nop

    :cond_ca
    move v4, v8

    :cond_cb
    if-eqz v3, :cond_d2

    const/4 v5, -0x2

    if-eq v3, v5, :cond_d2

    if-eqz v4, :cond_ea

    :cond_d2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "android.intent.extra.user_handle"

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-string v8, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    invoke-static {v8, v5}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_ea
    goto/16 :goto_5e

    :cond_ec
    return-void
.end method

.method private setDefaultSMSApplication()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v3, "com.android.mms"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_default_application"

    const-string v4, "com.android.mms"

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_30

    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_default_application"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_30} :catch_31

    :goto_30
    goto :goto_40

    :catch_31
    move-exception v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_default_application"

    const-string v4, "com.android.mms"

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_40
    return-void
.end method

.method private setDefaultSettingsValue(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_screen_off_timeout"

    const v4, 0x927c0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v3, "need_to_write_two_step"

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    const/4 v3, -0x1

    goto :goto_37

    :cond_28
    const-string/jumbo v3, "need_to_write_two_step"

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_37
    if-lez v3, :cond_46

    const-string v5, "knox_finger_print_plus"

    invoke-static {v2, v5, v3, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "PersonaManagerService"

    const-string/jumbo v6, "multifactor value was recovered from PMS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_72

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-eqz v5, :cond_55

    goto :goto_72

    :cond_55
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caller_id_to_show_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_8e

    :cond_72
    :goto_72
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caller_id_to_show_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_8e
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "knox_name"

    iget-object v9, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v5, v8, v9, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_128

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSMSApplication()V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->setNotificationPanelApps()V

    const-string v5, "knox.power_button_instantly_locks"

    invoke-static {v2, v5, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "mobile_data_question"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "mobile_data"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "do_not_show_help_popup_traybar"

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "air_button_onoff"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_detachment_option"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "user_dependent_mobile_settings"

    invoke-static {v2, v5, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "kiosk_enabled"

    invoke-static {v2, v5, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "air_cmd_use_minimized"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering_information_preview"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering_icon_label"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering_list_scroll"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_hovering_link_preview"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v5, "pen_detachment_option"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "action_memo_on_off_screen"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "lock_to_app_exit_locked"

    invoke-static {v2, v5, v7, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v5, "edge_enable"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "knox_screen_off_timeout"

    invoke-static {v2, v5, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v4, "KNOX_SETTINGS_KNOX_STYLE"

    const-string v5, "LAUNCHER"

    invoke-static {v2, v4, v5, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_128
    :try_start_128
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.samsungpass"

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_142

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "samsungpass_exists_in_owner"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_142} :catch_143

    :cond_142
    goto :goto_14d

    :catch_143
    move-exception v4

    const-string v5, "PersonaManagerService"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14d
    return-void
.end method

.method private setFeatureAccessPermission(ILjava/lang/String;Z)Z
    .registers 13

    const-string v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFeatureAccessPermission personaId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "featureType"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "KnoxFeatureAccess"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_69

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "featureValue"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    const-string v7, "KnoxFeatureAccess"

    invoke-virtual {v6, v7, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_89

    :cond_69
    const-string v5, "featureValue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string v6, "KnoxFeatureAccess"

    invoke-virtual {v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    :goto_89
    const-string v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setFeatureAccessPermission is called for personaId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",type - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",enable - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",combinedUid - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_c4

    const-string v5, "PersonaManagerService:FOTA"

    const-string/jumbo v6, "setFeatureAccessPermission policy passed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_c4
    const-string v5, "PersonaManagerService:FOTA"

    const-string/jumbo v6, "setFeatureAccessPermission policy failed..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method

.method private setKnoxExists([IZ)V
    .registers 11

    if-eqz p1, :cond_3d

    array-length v0, p1

    if-lez v0, :cond_3d

    const-string v0, "5"

    const-string v1, "1"

    const-string v2, ":"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_18

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_18
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_32

    aget v6, p1, v5

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_32
    const-string/jumbo v4, "sys.knox.exists"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :cond_3d
    const-string/jumbo v0, "sys.knox.exists"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method private setNotificationPanelApps()V
    .registers 1

    return-void
.end method

.method private setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 11

    :try_start_0
    const-string v0, "PersonaManagerService:FOTA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setupDefaultOwnerLauncher is called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/high16 v4, 0x100000

    const/4 v7, 0x0

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    return-void
.end method

.method private shouldSuperLock(I)Z
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    return v3

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminUid(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_19

    return v3

    :cond_19
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-eqz v5, :cond_42

    const/4 v0, 0x1

    goto :goto_4d

    :cond_42
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v5

    if-nez v5, :cond_4d

    const/4 v0, 0x1

    :cond_4d
    :goto_4d
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_65

    if-eqz v0, :cond_65

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v5

    if-eq v5, v4, :cond_65

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v4

    if-eqz v4, :cond_65

    const/4 v3, 0x1

    nop

    :cond_65
    return v3
.end method

.method private triggerAppUninstallationonReset(I)V
    .registers 9

    const-string v0, "PersonaManagerService"

    const-string v1, " Collecting restricted apps list "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_c
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_36

    array-length v5, v3

    :goto_2c
    if-ge v4, v5, :cond_36

    aget-object v6, v3, v4

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_33} :catch_37

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_36
    goto :goto_3b

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Collecting restricted apps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->removeThirdPartyApksOnReset(ILjava/util/Set;)V

    return-void
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trimHiddenVersion("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x5f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, p1

    :goto_31
    return-object v0
.end method

.method private unInstallSystemApplications(ILjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string/jumbo v0, "unInstallSystemApplications"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, -0x1

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " in PMS, calling PkgMgr uninstall system apps  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mBaseUserPath:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->unInstallSystemApplicationsForPersona(ILjava/io/File;Ljava/util/List;)I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removing files for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_55
    return v0
.end method

.method private uninstallKnoxCoreInsideContainer(I)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.samsung.android.knox.containercore"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    move v0, v2

    :cond_18
    return v0
.end method

.method private updateCurrentUserPolicy(I)V
    .registers 4

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateScreenshotPolicy(I)V

    :cond_12
    return-void
.end method

.method private updateCustomResourcePermission()Z
    .registers 11

    const-string v0, "PersonaManagerService:FOTA"

    const-string/jumbo v1, "updateCustomResourcePermission is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/container2.0/icon"

    const/16 v1, 0x1fd

    const/4 v2, 0x0

    move v3, v2

    :try_start_e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_76

    if-eqz v5, :cond_75

    move v6, v3

    move v3, v2

    :goto_1c
    :try_start_1c
    array-length v7, v5

    if-ge v3, v7, :cond_70

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_6d

    const-string v7, "PersonaManagerService:FOTA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " processing file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3e8

    invoke-direct {p0, v7, v8, v8, v1}, Lcom/android/server/pm/PersonaManagerService;->changePermission(Ljava/lang/String;III)Z

    move-result v7

    move v6, v7

    aget-object v7, v5, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v2}, Ljava/io/File;->setReadable(ZZ)Z

    const-string v7, "PersonaManagerService:FOTA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCustomResourcePermission status - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_6d} :catch_72

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_70
    move v3, v6

    goto :goto_75

    :catch_72
    move-exception v2

    move v3, v6

    goto :goto_77

    :cond_75
    :goto_75
    goto :goto_8d

    :catch_76
    move-exception v2

    :goto_77
    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in updateCustomResourcePermission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    return v3
.end method

.method private writeAppTypeList(ILjava/lang/String;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_58

    if-eqz p3, :cond_50

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_42

    goto :goto_50

    :cond_42
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_58

    const-string v1, "PersonaManagerService"

    const-string v5, "Error creating app type file."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_50
    :goto_50
    const-string v1, "PersonaManagerService"

    const-string v5, "Empty list passed."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_58
    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v5

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v0, v5

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    if-eqz p3, :cond_b7

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b7

    const-string v7, "appType"

    invoke-interface {v6, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_96
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ab

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_96

    :cond_ab
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v1, p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "appType"

    invoke-interface {v6, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_bd} :catch_be

    goto :goto_e2

    :catch_be
    move-exception v1

    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing app type list info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_e2

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_e2
    :goto_e2
    return-void
.end method

.method private writePersonaCacheLocked()V
    .registers 11

    const/4 v0, 0x0

    const-string v1, "PersonaManagerService"

    const-string/jumbo v2, "writeUsersWithPersona() is called..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_10
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v4, "personacache"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "volatile."

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_65

    goto :goto_43

    :cond_65
    const-string v9, "cache"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "cache"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_43

    :cond_73
    const-string/jumbo v4, "personacache"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_7f} :catch_80

    goto :goto_8c

    :catch_80
    move-exception v2

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v3, "PersonaManagerService"

    const-string/jumbo v4, "writePersonaCacheLocked() Error writing persona cache list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8c
    return-void
.end method

.method private zeroOut([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    const/4 p1, 0x0

    return-void
.end method


# virtual methods
.method public addAppPackageNameToWhiteList(ILjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_57

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v4, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v6

    move-object v3, v6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_5c

    :try_start_32
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add package to whitelist : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_51

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_51} :catch_52
    .catchall {:try_start_32 .. :try_end_51} :catchall_5c

    :cond_51
    goto :goto_56

    :catch_52
    move-exception v8

    :try_start_53
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5c

    :goto_56
    goto :goto_26

    :cond_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_5c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v11, p4

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageManagerService;->checkUidSignatures(II)I

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_1b

    const-string v0, "PersonaManagerService"

    const-string v2, "bindCoreServiceAsUser() failed to bind."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_1b
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v14, v2

    nop

    move/from16 v10, p7

    :try_start_27
    invoke-direct {v1, v11, v13, v10}, Lcom/android/server/pm/PersonaManagerService;->createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2b} :catch_62
    .catchall {:try_start_27 .. :try_end_2b} :catchall_5d

    if-nez v0, :cond_32

    nop

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :cond_32
    :try_start_32
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v2
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_55} :catch_62
    .catchall {:try_start_32 .. :try_end_55} :catchall_5d

    if-eqz v2, :cond_59

    const/4 v12, 0x1

    nop

    :cond_59
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_5d
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_62
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v12
.end method

.method public broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .registers 8

    const-string v0, "broadcastIntentThroughPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntentThroughPersona Intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_36

    if-nez p1, :cond_26

    goto :goto_36

    :cond_26
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_5b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x1

    return v2

    :cond_36
    :goto_36
    :try_start_36
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntentThroughPersona is canceled by mContext = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " or intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_5b

    const/4 v2, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_5b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public checkKeyguardFlagsChanged(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)V
    .registers 9

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/high16 v0, 0x80000

    and-int v1, p3, v0

    if-nez v1, :cond_e

    return-void

    :cond_e
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkKeyguardFlagsChanged() userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getFocusedUser() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mShowWhenLocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", curShowWhenLockedFlags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", win.isVisibleLw() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v2

    if-ne v2, p2, :cond_9e

    iget-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    if-eqz v2, :cond_9e

    if-nez v0, :cond_9e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_9e

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "knox.container.proxy.EXTRA_COMPONENT_NAME"

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    iget-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "knox.container.proxy.EXTRA_MULTIWINDOWRECORD"

    iget-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->mIsMultiwindowRecord:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_9e
    return-void
.end method

.method public clearAttributes(II)Z
    .registers 7

    const-string v0, "clearAttributes"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_28

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_28
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/UserManagerInternal;->clearAttributes(II)Z

    move-result v1

    return v1
.end method

.method public doKeyguardTimeout()V
    .registers 4

    const-string v0, "PersonaManagerService"

    const-string v1, "doKeyguardTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    move v3, v2

    if-nez v2, :cond_20

    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1b
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    move v3, v4

    goto :goto_20

    :catchall_19
    move-exception v4

    goto :goto_3f

    :catch_1b
    move-exception v4

    :try_start_1c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_19

    goto :goto_21

    :cond_20
    :goto_20
    nop

    :goto_21
    if-nez v2, :cond_2c

    if-eqz v3, :cond_26

    goto :goto_2c

    :cond_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v4, 0x0

    return-object v4

    :cond_2c
    :goto_2c
    :try_start_2c
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v6
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_19

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :goto_3f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAttributes(I)I
    .registers 3

    const-string v0, "getAttributes"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->getAttributes(I)I

    move-result v0

    return v0
.end method

.method public getContainerAppIcon(I)[B
    .registers 15

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_df

    if-nez p1, :cond_16

    goto/16 :goto_df

    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v6, v5

    :try_start_1c
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.android.knox.containeragent"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_28} :catch_d7

    move-object v6, v7

    nop

    :try_start_2a
    iget v7, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    if-ne p1, v7, :cond_b7

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "secure_folder_image_name"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Settings.Secure.SECURE_FOLDER_IMAGE_NAME : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_87

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_87

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_68

    invoke-direct {p0, v6, v9, v2}, Lcom/android/server/pm/PersonaManagerService;->createSFNameBitmap(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_67
    goto :goto_a4

    :cond_68
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.samsung.knox.securefolder:drawable/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_67

    :cond_87
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v10, "com.samsung.knox.securefolder"

    const/16 v11, 0x80

    invoke-virtual {v5, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v10, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v5, v10

    :goto_a4
    if-eqz v5, :cond_b7

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v5, v10, v11, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10
    :try_end_b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_b6} :catch_b8

    move-object v0, v10

    :cond_b7
    goto :goto_d3

    :catch_b8
    move-exception v5

    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getContainerAppIcon : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catch_d7
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_df
    :goto_df
    return-object v0
.end method

.method public getContainerName(I)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    const-string v1, "Workspace"

    return-object v1

    :cond_7
    const/4 v1, 0x0

    if-nez p1, :cond_b

    return-object v1

    :cond_b
    const/16 v2, -0x3e8

    if-eq p1, v2, :cond_15

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    const/4 v0, 0x1

    :cond_16
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    if-eqz v0, :cond_9e

    if-nez v2, :cond_50

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "secure_folder_name"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Settings.Secure.SECURE_FOLDER_NAME : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_50

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_50

    move-object v5, v6

    :cond_50
    if-nez v5, :cond_ff

    move-object v6, v1

    :try_start_53
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.samsung.knox.securefolder"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    const-string v7, "com.samsung.knox.securefolder:string/sf_half_app_name"

    invoke-virtual {v6, v7, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_88

    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "securefolder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_87
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_87} :catch_89

    move-object v5, v7

    :cond_88
    goto :goto_9d

    :catch_89
    move-exception v1

    const-string v7, "PersonaManagerService"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "PersonaManagerService"

    const-string v8, "exception returning null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Secure Folder"

    move-object v5, v1

    :goto_9d
    goto :goto_ff

    :cond_9e
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_ff

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_fb

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_fb

    :cond_c0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isMyKnoxContainer(I)Z

    move-result v7

    if-eqz v7, :cond_c9

    const-string v5, "My Knox"

    goto :goto_fb

    :cond_c9
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_d5

    invoke-virtual {p0, v6, v8}, Lcom/android/server/pm/PersonaManagerService;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_fb

    :cond_d5
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v7

    if-eqz v7, :cond_f1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6, v8}, Lcom/android/server/pm/PersonaManagerService;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " II"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_fb

    :cond_f1
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v7

    if-eqz v7, :cond_fb

    invoke-virtual {p0, v6, v8}, Lcom/android/server/pm/PersonaManagerService;->getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;

    move-result-object v5

    :cond_fb
    :goto_fb
    if-nez v5, :cond_ff

    iget-object v5, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :cond_ff
    :goto_ff
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5
.end method

.method public getContainerOrder(I)I
    .registers 10

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_24

    const/4 v5, 0x0

    const-string v6, "KNOX"

    iget-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x2

    :cond_24
    :goto_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method public getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultQuickSettings()Ljava/lang/String;
    .registers 11

    :try_start_0
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "quick_settings_tiles_default"

    const-string/jumbo v3, "string"

    const-string v4, "com.android.systemui"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d

    const-string v4, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_2d
    const-string v4, "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,WifiCalling,Dnd,AirplaneMode,Flashlight,WifiHotspot,SmartStay,PersonalMode,AllShareCast,Sync,SFinder,UltraPowerSaving"

    move-object v3, v4

    :cond_30
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_62

    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded tile specs from csc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    :cond_62
    const-string v7, "PersonaManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded tile specs from config: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    return-object v5

    :catch_79
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Wifi,Location,SoundMode,RotationLock,Bluetooth,MobileData,WifiCalling,Dnd,AirplaneMode,Flashlight,WifiHotspot,SmartStay,PersonalMode,AllShareCast,Sync,SFinder,UltraPowerSaving"

    return-object v0
.end method

.method public getECName(I)Ljava/lang/String;
    .registers 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    :try_start_b
    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomizedContainerName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_20

    :catch_17
    move-exception v4

    goto :goto_21

    :cond_19
    const-string v4, "PersonaManagerService:FOTA"

    const-string v5, "Configuration type is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_17

    :cond_20
    :goto_20
    goto :goto_38

    :goto_21
    nop

    const-string v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in getECName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    sget-boolean v4, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v4, :cond_52

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getECName name - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3
.end method

.method public getFocusedLauncherId()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFocusedUser()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    :try_start_12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1d
    .catchall {:try_start_12 .. :try_end_16} :catchall_1b

    move v2, v3

    :goto_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_22

    :catchall_1b
    move-exception v3

    goto :goto_23

    :catch_1d
    move-exception v3

    :try_start_1e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    goto :goto_17

    :goto_22
    return v2

    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_27
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2a
    iget v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    monitor-exit v0

    return v1

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public getFotaVersion()I
    .registers 5

    const-string v0, "PersonaManagerService"

    const-string v1, "getFotaVersion is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string v3, "fotaversion"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_22

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_3b

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public getKeyguardShowState(I)Z
    .registers 9

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyguardShowState of user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-ne p1, v2, :cond_57

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4e

    return v0

    :cond_4e
    goto :goto_25

    :cond_4f
    const-string v0, "PersonaManagerService"

    const-string v2, "getKeyguardShowState() does not exist any showing SecureFolder keyguard"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_57
    const/4 v2, -0x1

    if-ne p1, v2, :cond_96

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8d

    return v0

    :cond_8d
    goto :goto_64

    :cond_8e
    const-string v0, "PersonaManagerService"

    const-string v2, "getKeyguardShowState() does not exist any showing knox keyguard"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_96
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_b3
    return v1
.end method

.method public getKnoxBadge(I)[B
    .registers 12

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKnoxBadge userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "custom-badge-icon"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v1, v2

    goto/16 :goto_ae

    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108040f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v1, v5

    goto :goto_aa

    :cond_4a
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108040a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v1, v5

    goto :goto_aa

    :cond_5d
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108040d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v1, v5

    goto :goto_aa

    :cond_70
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_aa

    const-string v5, "com.samsung.knox.securefolder"

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "ic_sf_badge_bottom"

    const-string v9, "drawable"

    invoke-virtual {v6, v8, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v7, v8

    if-eqz v7, :cond_95

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v1, v8

    goto :goto_aa

    :cond_95
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080569

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_a2} :catch_a6
    .catchall {:try_start_2f .. :try_end_a2} :catchall_a4

    move-object v1, v8

    goto :goto_aa

    :catchall_a4
    move-exception v4

    goto :goto_ca

    :catch_a6
    move-exception v4

    :try_start_a7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_a4

    :cond_aa
    :goto_aa
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_ae
    if-eqz v1, :cond_c8

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :cond_c8
    const/4 v2, 0x0

    return-object v2

    :goto_ca
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 11

    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKnoxIcon packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", className = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    if-eqz p2, :cond_4a

    :try_start_34
    const-string v6, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4a

    const-string v6, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    const/4 v0, 0x2

    goto :goto_4a

    :cond_46
    const/4 v0, 0x1

    goto :goto_4a

    :catchall_48
    move-exception v5

    goto :goto_a1

    :cond_4a
    :goto_4a
    const-string v6, "com.samsung.android.knox.containeragent"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    const/4 v6, 0x1

    if-ne v0, v6, :cond_56

    goto :goto_70

    :cond_56
    const-string v6, "com.samsung.knox.securefolder"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5c
    .catchall {:try_start_34 .. :try_end_5c} :catchall_48

    if-nez v6, :cond_68

    const/4 v6, 0x2

    if-ne v0, v6, :cond_62

    goto :goto_68

    :cond_62
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v5, 0x0

    return-object v5

    :cond_68
    :goto_68
    :try_start_68
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderIcon()[B

    move-result-object v6
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_48

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_70
    :goto_70
    :try_start_70
    const-string v6, "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_99

    const-string v6, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    goto :goto_99

    :cond_81
    const-string v6, "com.samsung.android.knox.containeragent.switcher.GlobalSettingsIcon"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getKnoxGlobalSettingsIcon()[B

    move-result-object v6
    :try_end_8d
    .catchall {:try_start_70 .. :try_end_8d} :catchall_48

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_91
    :try_start_91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->getKnoxSwitcherIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v6
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_48

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_99
    :goto_99
    :try_start_99
    invoke-direct {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->getKnoxPhoneOrMessageIcon(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_48

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :goto_a1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getKnoxSettingsCustomName(I)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knox.containeragent"

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "app_name_settings"

    const-string/jumbo v7, "string"

    const-string v8, "com.samsung.android.knox.containeragent"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    if-nez v0, :cond_53

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_52} :catch_54

    move-object v0, v5

    :cond_53
    goto :goto_5c

    :catch_54
    move-exception v1

    const-string v2, "PersonaManagerService"

    const-string v3, "Exception while accessing custom settings name"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    return-object v0
.end method

.method public getMoveToKnoxMenuList(I)Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const/4 v0, 0x0

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMoveToKnoxMenuList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xe6

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-nez v4, :cond_32

    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "not suppored knox version"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_32
    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4a

    const-string v4, "PersonaManagerService"

    const-string v5, "emergency mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v4

    const/16 v7, 0x3ea

    if-nez v4, :cond_82

    if-nez v2, :cond_82

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v4

    if-gtz v4, :cond_82

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isSecureFolderSupported()Z

    move-result v4

    if-eqz v4, :cond_82

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v8, "com.sec.knox.moveto.name"

    const/16 v9, -0x3e8

    invoke-virtual {v1, v9}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "com.sec.knox.moveto.containerType"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "com.sec.knox.moveto.containerId"

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "true"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    move-object v4, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_239

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_239

    :cond_95
    const/4 v9, 0x0

    const/4 v11, 0x0

    if-nez v2, :cond_1bf

    const/4 v0, 0x0

    move v12, v9

    move-object v9, v4

    move v4, v0

    :goto_9d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1ba

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_10b

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.samsung.knox.securefolder"

    const-string v10, "com.samsung.knox.securefolder.switcher.SwitchSfActivity"

    invoke-direct {v14, v15, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v14

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v14

    if-eq v14, v5, :cond_d8

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v14

    if-nez v14, :cond_d6

    goto :goto_d8

    :cond_d6
    const/4 v13, 0x0

    goto :goto_109

    :cond_d8
    :goto_d8
    const-string v14, "PersonaManagerService"

    const-string v15, "is secure folder"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "com.sec.knox.moveto.name"

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "com.sec.knox.moveto.containerType"

    invoke-virtual {v13, v14, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "com.sec.knox.moveto.containerId"

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "true"

    :goto_109
    goto/16 :goto_1a9

    :cond_10b
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_124

    const-string v0, "PersonaManagerService"

    const-string v10, "is BBCContainer"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b3

    :cond_124
    const-string v0, "PersonaManagerService"

    const-string v10, "is knox"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_130
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_144} :catch_146

    move-object v10, v0

    goto :goto_147

    :catch_146
    move-exception v0

    :goto_147
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v12, :cond_1a8

    if-eqz v10, :cond_1a8

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_1a8

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1a8

    const/4 v0, 0x1

    iget-object v5, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "move-file-to-container"

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v12, v11, v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_176

    const-string/jumbo v5, "true"

    :goto_175
    goto :goto_179

    :cond_176
    const-string v5, "false"

    goto :goto_175

    :goto_179
    if-nez v4, :cond_18f

    const-string v7, "com.sec.knox.moveto.name"

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_196

    :cond_18f
    const-string v7, "com.sec.knox.moveto.name"

    const-string v9, "Workspace"

    invoke-virtual {v13, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_196
    const-string v7, "com.sec.knox.moveto.containerType"

    const/16 v9, 0x3e9

    invoke-virtual {v13, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "com.sec.knox.moveto.containerId"

    const/4 v9, -0x1

    invoke-virtual {v13, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    move v12, v0

    move-object v9, v5

    goto :goto_1a9

    :cond_1a8
    const/4 v13, 0x0

    :goto_1a9
    if-eqz v13, :cond_1b3

    const-string v0, "com.sec.knox.moveto.isSupportMoveTo"

    invoke-virtual {v13, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b3
    :goto_1b3
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    const/16 v7, 0x3ea

    goto/16 :goto_9d

    :cond_1ba
    nop

    move-object v4, v9

    move v9, v12

    goto/16 :goto_238

    :cond_1bf
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_238

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_238

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_1ee

    const-string v0, "com.sec.knox.moveto.name"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.sec.knox.moveto.containerType"

    const/16 v6, 0x3eb

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "true"

    :goto_1ec
    move-object v4, v0

    goto :goto_22a

    :cond_1ee
    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_1f3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1fb} :catch_1fd

    move-object v6, v0

    goto :goto_1fe

    :catch_1fd
    move-exception v0

    :goto_1fe
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-nez v0, :cond_208

    return-object v3

    :cond_208
    const-string v0, "com.sec.knox.moveto.name"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.sec.knox.moveto.containerType"

    const/16 v7, 0x3ec

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "move-file-to-owner"

    invoke-static {v0, v7, v11, v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_227

    const-string/jumbo v0, "true"

    goto :goto_1ec

    :cond_227
    const-string v0, "false"

    goto :goto_1ec

    :goto_22a
    const-string v0, "com.sec.knox.moveto.containerId"

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.sec.knox.moveto.isSupportMoveTo"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_238
    :goto_238
    return-object v3

    :cond_239
    :goto_239
    return-object v3
.end method

.method public bridge synthetic getMoveToKnoxMenuList(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getMoveToKnoxMenuList(I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMyknoxId()I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_37

    move v3, v1

    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/pm/PersonaManagerService;->isMyKnoxContainer(I)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_37
    return v1
.end method

.method public getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "getPersonaCacheValue"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersonaCacheValue is called for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2f
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    monitor-exit v1

    goto :goto_3d

    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3a

    throw v2

    :cond_3d
    :goto_3d
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v7

    if-eqz v7, :cond_2f

    goto :goto_1c

    :cond_2f
    if-nez p2, :cond_35

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, p1, :cond_38

    :cond_35
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_3e

    :cond_38
    goto :goto_1c

    :cond_39
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getScreenOffTimeoutLocked(I)I
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "knox_screen_off_timeout"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1b

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    :cond_1b
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    const v6, 0x7fffffff

    if-lez v5, :cond_27

    move v5, v6

    goto :goto_28

    :cond_27
    long-to-int v5, v3

    :goto_28
    if-lez v5, :cond_2e

    if-ge v5, v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    if-eqz v6, :cond_38

    if-lez v0, :cond_38

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3f

    :cond_38
    if-eqz v6, :cond_3c

    move v0, v5

    goto :goto_3f

    :cond_3c
    if-gtz v0, :cond_3f

    return v0

    :cond_3f
    :goto_3f
    if-eqz v0, :cond_4c

    if-eq v0, v2, :cond_4c

    const/4 v2, -0x2

    if-eq v0, v2, :cond_4c

    const/16 v2, 0x1388

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_4c
    const-string v2, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getScreenOffTimeoutLocked final: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSecureFolderId()I
    .registers 2

    iget v0, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    return v0
.end method

.method public getShownKeyguardOwner()I
    .registers 7

    const/16 v0, -0x515

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_36

    move v0, v4

    goto :goto_37

    :cond_36
    goto :goto_c

    :cond_37
    :goto_37
    return v0
.end method

.method public getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1c

    :cond_14
    if-eqz p2, :cond_19

    const-string v1, ":string/work_profile_title"

    goto :goto_1e

    :cond_19
    const-string v1, ":string/work_title"

    goto :goto_1e

    :cond_1c
    :goto_1c
    const-string v1, ":string/workspace_title"

    :goto_1e
    nop

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.containeragent"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.samsung.android.knox.containeragent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_66

    sget-boolean v4, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v4, :cond_61

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KCALabel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_65} :catch_67

    move-object v0, v4

    :cond_66
    goto :goto_79

    :catch_67
    move-exception v2

    const-string v3, "PersonaManagerService"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PersonaManagerService"

    const-string v4, "exception returning null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_79
    return-object v0
.end method

.method public hideKnoxBadgeHelper()V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "LOG_TAG"

    const-string v2, "hideKnoxBadgeHelper..hide knox badge"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public hideMultiWindows(I)V
    .registers 6

    const-string v0, "hideMultiWindows"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPersonaActivityHelper()Lcom/android/server/am/PersonaActivityHelper;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/PersonaActivityHelper;->hideKnoxWindowsLocked(I)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_23
    return-void
.end method

.method public hideScrim()V
    .registers 3

    const-string v0, "PersonaManagerService"

    const-string v1, " hide scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->hideScrim()V

    return-void
.end method

.method public isExternalStorageEnabled(I)Z
    .registers 6

    const-string/jumbo v0, "mum_container_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string v2, "PersonaManagerService"

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_16
    :try_start_16
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    return v2

    :catch_24
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public isFOTAUpgrade()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z

    return v0
.end method

.method public isFotaUpgradeVersionChanged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/pm/PersonaManagerService;->isFotaUpgradeVersionChanged:Z

    return v0
.end method

.method public isKnoxProfileActivePasswordSufficientForParent(I)Z
    .registers 11

    const-string v0, "isKnoxProfileActivePasswordSufficientForParent"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_ee

    :cond_1e
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_ed

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v3, :cond_2e

    goto/16 :goto_ed

    :cond_2e
    const-string/jumbo v3, "password_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-nez v3, :cond_3a

    return v1

    :cond_3a
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sget-boolean v5, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_b2

    const-string v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isKnoxProfileActivePasswordSufficientForParent getForbiddenStrings = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " getMaximumCharacterOccurences = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " getMaximumCharacterSequenceLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " getMaximumNumericSequenceLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " getMinimumCharacterChangeLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " getRequiredPwdPatternRestrictions = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isMultifactorAuthenticationEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " getPasswordHistoryLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_e4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    if-nez v5, :cond_e4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    if-nez v5, :cond_e4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    if-nez v5, :cond_e4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    if-nez v5, :cond_e4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_e4

    invoke-virtual {v3, v4, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v5

    if-eqz v5, :cond_e3

    goto :goto_e4

    :cond_e3
    return v1

    :cond_e4
    :goto_e4
    const-string v1, "PersonaManagerService"

    const-string v5, "Not sufficient for knox profile active password for parent"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_ed
    :goto_ed
    return v1

    :cond_ee
    :goto_ee
    return v1
.end method

.method public isKnoxWindowExist(III)Z
    .registers 11

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPersonaActivityHelper()Lcom/android/server/am/PersonaActivityHelper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/PersonaActivityHelper;->isKnoxWindowVisibleLocked(ZIZII)Z

    move-result v1

    return v1
.end method

.method public isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    .registers 9

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_24} :catch_2a

    if-nez v5, :cond_27

    goto :goto_29

    :cond_27
    move v1, v4

    nop

    :cond_29
    :goto_29
    return v1

    :catch_2a
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public knoxAnalyticsAccountsChanged(ILjava/lang/String;Z)V
    .registers 6

    if-eqz p1, :cond_2d

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    if-eqz v0, :cond_2d

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2d

    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2d
    :goto_2d
    return-void
.end method

.method public knoxAnalyticsContainer(ILjava/lang/String;)V
    .registers 12

    if-eqz p1, :cond_24c

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_24c

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_24c

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_24c

    :cond_16
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c6

    const-string v0, "PersonaManagerService:DualDARAnalytics"

    const-string v2, "DualDAR Logging"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DUAL_DAR_USER_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24b

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_DUALDAR"

    const-string v3, "TYPE_OF_DUALDAR"

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "DualDARPolicy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    invoke-static {p1}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    move-result v3

    const-string v4, "PersonaManagerService:DualDARAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dual Dar Container Type Created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const-string v5, " "

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v6

    if-eqz v6, :cond_64

    const/4 v4, 0x1

    const-string v5, "Samsung Built-In"

    goto :goto_69

    :cond_64
    const/4 v4, 0x0

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getClientInfo(I)Ljava/lang/String;

    move-result-object v5

    :goto_69
    const-string v6, "dTp"

    invoke-virtual {v0, v6, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v6, "sLyr"

    invoke-virtual {v0, v6, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v6, "sLyrName"

    invoke-virtual {v0, v6, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PersonaManagerService:DualDARAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Payload / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    new-instance v6, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v7, "KNOX_DUALDAR"

    const-string v8, "DAR_AUTH_TYPE"

    invoke-direct {v6, v7, v1, v8}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v6

    const-string v6, "lckTp"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v6, "PersonaManagerService:DualDARAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Payload / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto/16 :goto_24b

    :cond_c6
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_24b

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d6

    const/4 v0, 0x1

    goto :goto_e5

    :cond_d6
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v2

    if-eqz v2, :cond_de

    const/4 v0, 0x2

    goto :goto_e5

    :cond_de
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v2

    if-eqz v2, :cond_e5

    const/4 v0, 0x3

    :cond_e5
    :goto_e5
    const-string v2, "CHANGE_KNOX_SCREEN_OFF_TIMEOUT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_CONTAINER"

    const-string v4, "CONTAINER_EVENT"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "knox_screen_off_timeout"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_109

    const/4 v3, 0x1

    goto :goto_11d

    :cond_109
    if-ne v2, v4, :cond_10d

    const/4 v3, 0x2

    goto :goto_11d

    :cond_10d
    const/4 v4, -0x2

    if-ne v2, v4, :cond_112

    const/4 v3, 0x3

    goto :goto_11d

    :cond_112
    const/16 v4, 0x1388

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v4, "lckTmoutV"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    :goto_11d
    const-string v4, "cTp"

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v4, "e"

    const-string v5, "CHANGE_KNOX_SCREEN_OFF_TIMEOUT"

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lckTmoutTp"

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v4, "PersonaManagerService:KnoxAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->logKnoxAnalytics(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto/16 :goto_24b

    :cond_150
    const-string v2, "WORKAPP_USAGE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_CONTAINER"

    const-string v4, "CONTAINER_EVENT"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActiveTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-lez v4, :cond_1a9

    const-string v4, "cTp"

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v4, "e"

    const-string v5, "WORKAPP_USAGE"

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pN"

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPostActivePackage:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "usgT"

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    const-string v4, "PersonaManagerService:KnoxAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->logKnoxAnalytics(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    :cond_1a9
    goto/16 :goto_24b

    :cond_1ab
    const-string v2, "MOVE_TO_KNOX_FILE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ea

    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_CONTAINER"

    const-string v4, "CONTAINER_EVENT"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v2

    const-string v2, "cTp"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v2, "e"

    const-string v3, "MOVE_TO_KNOX_FILE"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PersonaManagerService:KnoxAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->logKnoxAnalytics(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_24b

    :cond_1ea
    const-string v2, "PROFILE_REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24b

    :try_start_1f2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_201

    const/4 v0, 0x1

    goto :goto_210

    :cond_201
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v3

    if-eqz v3, :cond_209

    const/4 v0, 0x2

    goto :goto_210

    :cond_209
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v3
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_20d} :catch_211

    if-eqz v3, :cond_210

    const/4 v0, 0x3

    :cond_210
    :goto_210
    goto :goto_215

    :catch_211
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_215
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_CONTAINER"

    const-string v4, "CONTAINER_EVENT"

    invoke-direct {v2, v3, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v2

    const-string v2, "cTp"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v2, "e"

    const-string v3, "PROFILE_REMOVED"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PersonaManagerService:KnoxAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->logKnoxAnalytics(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    :cond_24b
    :goto_24b
    return-void

    :cond_24c
    :goto_24c
    return-void
.end method

.method public notifyActivityDrawn(ILandroid/content/ComponentName;ZIIIZZZ)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    move/from16 v0, p1

    if-eqz p8, :cond_1a

    return-void

    :cond_1a
    const/4 v8, 0x0

    if-eqz v2, :cond_fc

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_fc

    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "notifyActivityDrawn u"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " showWhenLocked="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " windowingMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " fullscreen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " dockSide="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.samsung.android.knox.containercore.common.MultiwindowLockActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8e

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.samsung.android.knox.containerdesktop.common.MultiwindowLockActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8e

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.samsung.knox.securefolder.foldercontainer.MultiwindowLockActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8f

    :cond_8e
    const/4 v0, 0x0

    :cond_8f
    move v9, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "com.samsung.android.knox.containeragent.knoxkeyguard.LockdownActivity"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    :try_start_9c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_f1

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_aa
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    if-eqz v12, :cond_ee

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v13

    if-eqz v13, :cond_ee

    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_d0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v13

    if-eqz v13, :cond_ee

    :cond_d0
    const-string v13, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateLicenses() called : "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {v8}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->validateLicenses()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ee} :catch_f2

    :cond_ee
    nop

    const/4 v8, 0x0

    goto :goto_aa

    :cond_f1
    goto :goto_fd

    :catch_f2
    move-exception v0

    const-string v8, "PersonaManagerService"

    const-string/jumbo v10, "validateLicenses() failed. "

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fd

    :cond_fc
    move v9, v0

    :cond_fd
    :goto_fd
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v9, v0, Landroid/os/Message;->arg1:I

    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v0, v10, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez v3, :cond_19c

    iget-boolean v8, v1, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    if-eqz v8, :cond_19c

    iget-object v8, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz p9, :cond_19c

    if-nez v8, :cond_124

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v11

    if-eqz v11, :cond_19c

    :cond_124
    const-string v11, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Knox keyguard triggerd by notifyActivityDrawn case. userId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_168

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    invoke-direct {v1, v11}, Lcom/android/server/pm/PersonaManagerService;->isUserBeingRemoved(I)Z

    move-result v14

    if-nez v14, :cond_168

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v14

    if-nez v14, :cond_168

    invoke-direct {v1, v11}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v14

    if-nez v14, :cond_168

    invoke-direct {v1, v11}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v14

    if-nez v14, :cond_168

    nop

    goto :goto_169

    :cond_168
    move v11, v13

    :goto_169
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "android.intent.extra.user_handle"

    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "knox.container.proxy.EXTRA_COMPONENT_NAME"

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v13, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    iget-boolean v14, v1, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "knox.container.proxy.EXTRA_MULTIWINDOWRECORD"

    iget-boolean v14, v1, Lcom/android/server/pm/PersonaManagerService;->mIsMultiwindowRecord:Z

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v14, 0x3c

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v14, v13}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_19f

    :cond_19c
    move/from16 v13, p1

    move v11, v13

    :goto_19f
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v13

    const/4 v14, 0x3

    move-object v15, v0

    if-ne v13, v14, :cond_1bc

    const/4 v13, 0x1

    goto :goto_1bd

    :cond_1bc
    const/4 v13, 0x0

    :goto_1bd
    const/4 v0, -0x1

    const/4 v14, 0x6

    if-eq v6, v0, :cond_21a

    const/4 v0, 0x3

    if-ne v5, v0, :cond_1ef

    const-string v0, "PersonaManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send intent to divider knox badge for "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_24c

    :cond_1ef
    const/4 v0, 0x4

    if-ne v5, v0, :cond_24c

    const/4 v0, 0x0

    if-eqz v8, :cond_200

    iget-boolean v6, v1, Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z

    if-nez v6, :cond_200

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v6, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_207

    :cond_200
    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v14, 0x7

    invoke-virtual {v6, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_207
    iput v9, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_20f

    const/4 v6, 0x1

    iput v6, v0, Landroid/os/Message;->arg2:I

    goto :goto_212

    :cond_20f
    const/4 v6, 0x0

    iput v6, v0, Landroid/os/Message;->arg2:I

    :goto_212
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_24c

    :cond_21a
    const/4 v0, 0x2

    if-eq v4, v0, :cond_223

    const/4 v0, 0x3

    if-eq v4, v0, :cond_223

    const/4 v0, 0x1

    if-ne v5, v0, :cond_24c

    :cond_223
    if-eqz v7, :cond_24c

    const/4 v0, 0x0

    if-eqz v8, :cond_233

    iget-boolean v6, v1, Lcom/android/server/pm/PersonaManagerService;->mIsDeviceEmergencyModeEnabled:Z

    if-nez v6, :cond_233

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v6, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_23a

    :cond_233
    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v14, 0x7

    invoke-virtual {v6, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_23a
    iput v9, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_242

    const/4 v6, 0x1

    iput v6, v0, Landroid/os/Message;->arg2:I

    goto :goto_245

    :cond_242
    const/4 v6, 0x0

    iput v6, v0, Landroid/os/Message;->arg2:I

    :goto_245
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_24c
    :goto_24c
    return-void
.end method

.method public notifyKeyguardFlagsChanged(ZZ)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez p1, :cond_4d

    if-eqz p2, :cond_4d

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.skype.raider.Main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "knox.container.proxy.EXTRA_COMPONENT_NAME"

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "knox.container.proxy.EXTRA_MULTIWINDOWRECORD"

    iget-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->mIsMultiwindowRecord:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4d
    return-void
.end method

.method public notifyKeyguardShow(IZ)V
    .registers 7

    const-string/jumbo v0, "notifyKeyguardShow"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyKeyguardShow of user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "container_keyguard"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V

    goto :goto_6e

    :cond_33
    if-eqz p2, :cond_3b

    const-string v0, "container_kioskmode"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V

    goto :goto_6e

    :cond_3b
    :try_start_3b
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_47
    iget-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    if-nez v1, :cond_51

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isUserBeingRemoved(I)Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_51
    const-string v1, "container_kioskmode"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_56} :catch_57

    :cond_56
    goto :goto_6e

    :catch_57
    move-exception v0

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get locked state for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_93

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_93

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_8b

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_8e

    :cond_8b
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    :goto_8e
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/16 v2, 0xf

    invoke-static {v1, p1, v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardShowingState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.keyguard.show"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "isShown"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "personaId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onDeviceLockedChanged(IZ)V
    .registers 8

    const-string/jumbo v0, "onDeviceLockedChanged"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-nez v0, :cond_12

    const-string v0, "PersonaManagerService"

    const-string v1, "Knox not supported - onDeviceLockedChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_16
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    move v0, v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_87

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eq v1, v0, :cond_86

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container lock state changed prevLock["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] lockState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_53

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, p1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    goto :goto_79

    :cond_53
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, p1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_79

    const/4 v2, 0x0

    const-string v3, "container_kioskmode"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V

    goto :goto_79

    :cond_72
    const-string v2, "PersonaManagerService"

    const-string v3, "container is unlocked when user is not running. ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    :goto_79
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_7c
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2

    goto :goto_86

    :catchall_83
    move-exception v3

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_83

    throw v3

    :cond_86
    :goto_86
    return-void

    :catchall_87
    move-exception v2

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v2
.end method

.method public onNewUserCreated(Landroid/content/pm/UserInfo;)V
    .registers 5

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNewUserCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getKnoxMUMContainerPolicy()Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->onNewUserCreated(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 5

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedGoingToSleep why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartedWakingUp(I)V
    .registers 5

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedWakingUp reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public parseUserInfoFlag(Ljava/lang/String;)I
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_9c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_95
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8e

    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_80
    .catchall {:try_start_7 .. :try_end_c} :catchall_7c

    nop

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v0

    move-object v0, v2

    :cond_13
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    if-eqz v9, :cond_65

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    new-instance v9, Ljava/util/StringTokenizer;

    const-string v10, " "

    invoke-direct {v9, v4, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v9

    :cond_27
    :goto_27
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    const-string v9, "flags="

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    new-instance v9, Ljava/util/StringTokenizer;

    const-string v10, "\""

    invoke-direct {v9, v5, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    new-instance v9, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_63} :catch_6f
    .catchall {:try_start_13 .. :try_end_63} :catchall_6c

    move v8, v9

    goto :goto_27

    :cond_65
    :try_start_65
    invoke-static {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_79
    .catchall {:try_start_65 .. :try_end_68} :catchall_83

    :try_start_68
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6b
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_6b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_88

    goto :goto_a2

    :catchall_6c
    move-exception v0

    move-object v4, v2

    goto :goto_75

    :catch_6f
    move-exception v0

    :try_start_70
    throw v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception v4

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    :goto_75
    :try_start_75
    invoke-static {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_79} :catch_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_83

    :catch_79
    move-exception v0

    move-object v2, v0

    goto :goto_82

    :catchall_7c
    move-exception v3

    move v8, v0

    move-object v0, v3

    goto :goto_84

    :catch_80
    move-exception v2

    move v8, v0

    :goto_82
    :try_start_82
    throw v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_83

    :catchall_83
    move-exception v0

    :goto_84
    :try_start_84
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_88} :catch_8c
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_88} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_88} :catch_88

    :catch_88
    move-exception v0

    goto :goto_91

    :catch_8a
    move-exception v0

    goto :goto_98

    :catch_8c
    move-exception v0

    goto :goto_9f

    :catch_8e
    move-exception v1

    move v8, v0

    move-object v0, v1

    :goto_91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a3

    :catch_95
    move-exception v1

    move v8, v0

    move-object v0, v1

    :goto_98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    :catch_9c
    move-exception v1

    move v8, v0

    move-object v0, v1

    :goto_9f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_a2
    nop

    :goto_a3
    return v8
.end method

.method public postActiveUserChange(ILandroid/content/ComponentName;ZIIZZZ)V
    .registers 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v0, v2

    if-eqz v3, :cond_8d

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8d

    sget-boolean v8, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v8, :cond_65

    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "postActiveUserChange for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " showWhenLocked="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " windowingMode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " fullscreen="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isVisible="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :cond_65
    move/from16 v10, p4

    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.samsung.android.knox.containercore.common.MultiwindowLockActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8b

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.samsung.android.knox.containerdesktop.common.MultiwindowLockActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8b

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.samsung.knox.securefolder.foldercontainer.MultiwindowLockActivity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    :cond_8b
    const/4 v0, 0x0

    goto :goto_8f

    :cond_8d
    move/from16 v10, p4

    :cond_8f
    :goto_8f
    move v8, v0

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iput v2, v9, Landroid/os/Message;->arg1:I

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const-wide/16 v11, 0x3e8

    invoke-virtual {v0, v9, v11, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v11

    const/4 v13, 0x1

    if-eqz v7, :cond_1ba

    if-nez v2, :cond_1ba

    if-nez v4, :cond_1ba

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getKeyguardShowState(I)Z

    move-result v0

    if-eqz v0, :cond_1ba

    if-eqz v3, :cond_1ba

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ba

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v14, "com.android.systemui.stackdivider.ForcedResizableInfoActivity"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ba

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v14, "com.samsung.android.nfc.knox.KnoxChooserActivity"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ba

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getShownKeyguardOwner()I

    move-result v14

    const/16 v0, -0x515

    if-eq v14, v0, :cond_1ba

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->isDualMode()Z

    move-result v0

    if-eqz v0, :cond_f2

    const-string v0, "PersonaManagerService"

    const-string v15, "Not hiding Knox keyguard by PMS, because dex dual mode is enabled."

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ba

    :cond_f2
    invoke-direct {v1, v14}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v0

    const/16 v15, 0x3d

    if-eqz v0, :cond_119

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v12, "keyguardOwner"

    invoke-virtual {v15, v12, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "forceHide"

    invoke-virtual {v15, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v15}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v12, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v12, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1ba

    :cond_119
    invoke-direct {v1, v14}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v0

    if-eqz v0, :cond_19a

    const-string v0, "PersonaManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Try hide Knox keyguard due to pwd change requested mComponent = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "component = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_154

    :try_start_141
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    if-eqz v0, :cond_154

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    invoke-interface {v0, v14}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_156

    goto :goto_154

    :catch_152
    move-exception v0

    goto :goto_17d

    :cond_154
    :goto_154
    if-nez v11, :cond_199

    :cond_156
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "keyguardOwner"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "forceHide"

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_17c} :catch_152

    goto :goto_199

    :goto_17d
    nop

    const-string v12, "PersonaManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get locked state for user: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " while hide keyguard"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_199
    :goto_199
    goto :goto_1ba

    :cond_19a
    if-nez v11, :cond_1ba

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "keyguardOwner"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "forceHide"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1ba
    :goto_1ba
    iput-boolean v4, v1, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    iput-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    const/4 v0, 0x3

    if-lt v5, v0, :cond_1c3

    const/4 v0, 0x1

    goto :goto_1c4

    :cond_1c3
    const/4 v0, 0x0

    :goto_1c4
    iput-boolean v0, v1, Lcom/android/server/pm/PersonaManagerService;->mIsMultiwindowRecord:Z

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v7, :cond_232

    if-nez v0, :cond_1d8

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    if-nez v12, :cond_1d8

    if-eqz v4, :cond_232

    :cond_1d8
    if-eqz v0, :cond_203

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    invoke-direct {v1, v12}, Lcom/android/server/pm/PersonaManagerService;->isUserBeingRemoved(I)Z

    move-result v14

    if-nez v14, :cond_203

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v14

    if-nez v14, :cond_203

    invoke-direct {v1, v12}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v14

    if-nez v14, :cond_203

    invoke-direct {v1, v12}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v14

    if-nez v14, :cond_203

    move v2, v12

    :cond_203
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "android.intent.extra.user_handle"

    invoke-virtual {v12, v13, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "knox.container.proxy.EXTRA_COMPONENT_NAME"

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v13, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    iget-boolean v14, v1, Lcom/android/server/pm/PersonaManagerService;->mShowWhenLocked:Z

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "knox.container.proxy.EXTRA_MULTIWINDOWRECORD"

    iget-boolean v14, v1, Lcom/android/server/pm/PersonaManagerService;->mIsMultiwindowRecord:Z

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v14, 0x3c

    invoke-virtual {v13, v14}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v14, v13}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_232
    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v5, v13, :cond_267

    if-eqz v6, :cond_267

    if-nez p8, :cond_267

    const/4 v14, 0x0

    if-eqz v12, :cond_24a

    iget-object v15, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move/from16 v16, v0

    const/4 v0, 0x6

    invoke-virtual {v15, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_249
    goto :goto_254

    :cond_24a
    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v15, 0x7

    invoke-virtual {v0, v15}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_249

    :goto_254
    iput v8, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_25c

    const/4 v14, 0x1

    iput v14, v0, Landroid/os/Message;->arg2:I

    goto :goto_25f

    :cond_25c
    const/4 v14, 0x0

    iput v14, v0, Landroid/os/Message;->arg2:I

    :goto_25f
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v14, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_269

    :cond_267
    move/from16 v16, v0

    :goto_269
    if-eqz v7, :cond_2d9

    if-eqz v3, :cond_2d9

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d9

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_28b

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.samsung.android.knox.containeragent.settings.KnoxSettingsAboutKnoxActivity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28b

    const-string v0, "com.samsung.android.knox.containeragent.settings.KnoxSettingsAboutKnoxActivity"

    :cond_28b
    iget v14, v1, Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I

    if-ne v14, v8, :cond_297

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mPostActivePackage:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2d9

    :cond_297
    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_2c0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2c0

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.samsung.android.knox.containeragent.rcpcomponents.move.activity.MoveToKnoxActivity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v14

    sget-object v15, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v14, v15}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v14

    if-gez v14, :cond_2c0

    const-string v14, "MOVE_TO_KNOX_FILE"

    invoke-virtual {v1, v8, v14}, Lcom/android/server/pm/PersonaManagerService;->knoxAnalyticsContainer(ILjava/lang/String;)V

    :cond_2c0
    iget v14, v1, Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_2cf

    const-string v14, "WORKAPP_USAGE"

    iget v15, v1, Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I

    invoke-virtual {v1, v15, v14}, Lcom/android/server/pm/PersonaManagerService;->knoxAnalyticsContainer(ILjava/lang/String;)V

    :cond_2cf
    iput v8, v1, Lcom/android/server/pm/PersonaManagerService;->mPostActiveUserId:I

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPostActivePackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/server/pm/PersonaManagerService;->mPostActiveTime:J

    :cond_2d9
    invoke-direct {v1, v8}, Lcom/android/server/pm/PersonaManagerService;->sendLocationLog(I)V

    return-void
.end method

.method public refreshLockTimer(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromKnox(IJ)V

    return-void
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 3

    const-string/jumbo v0, "registerSystemPersonaObserver"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->register(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public removeKnoxAppsinFota(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    :cond_15
    return-void
.end method

.method public resetPersonaPassword(ILjava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    const-string/jumbo v0, "sendProxyMessage"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendProxyMessage() name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_21

    const-string/jumbo v2, "null"

    goto :goto_25

    :cond_21
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PersonaServiceProxy;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public sendRequestKeyStatus(I)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.knox.containeragent.klms.licensekey.check"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "container_id"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.klmsagent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAttributes(II)Z
    .registers 7

    const-string/jumbo v0, "setAttributes"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_29

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_29
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/UserManagerInternal;->setAttributes(II)Z

    move-result v1

    return v1
.end method

.method public setFocusedLauncherId(I)V
    .registers 6

    const-string/jumbo v0, "setFocusedLauncherId"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusedUser: Focus changed - current uesr id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setFocusedUser(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current focused persona service handled id set to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public setKnoxWindowState(II)V
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    return-void
.end method

.method public setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .registers 6

    const-string/jumbo v0, "setPackageSettingInstalled"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 15

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminUid(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_18

    return v1

    :cond_18
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isPwdChangeRequested(I)Z

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isBiometricsEnabledAfterFota(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v3, :cond_9f

    if-nez v4, :cond_9f

    if-eqz v5, :cond_2d

    goto/16 :goto_9f

    :cond_2d
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->isOneLockOngoing()Z

    move-result v1

    return v1

    :cond_3c
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v8

    const-string v9, "PersonaManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceLocked : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", DeviceSecure : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_98

    iget v9, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncrypted(I)Z

    move-result v9

    const-string v10, "PersonaManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "shouldConfirmCredentials, DualDAR datalocked? : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_97

    if-eqz v8, :cond_97

    if-eqz v9, :cond_97

    move v1, v6

    nop

    :cond_97
    return v1

    :cond_98
    if-eqz v7, :cond_9e

    if-eqz v8, :cond_9e

    move v1, v6

    nop

    :cond_9e
    return v1

    :cond_9f
    :goto_9f
    const-string v1, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "needSetupCredential : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isPwdChangeRequested : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isBiometricsEnabledAfterFota : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public showKeyguard(II)V
    .registers 7

    const-string/jumbo v0, "showKeyguard"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showKeyguard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "KnoxKeyguardEventFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.knox.securefolder"

    const-string v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_54

    :cond_48
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.containeragent"

    const-string v3, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_54
    :try_start_54
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5c} :catch_5d

    goto :goto_65

    :catch_5d
    move-exception v1

    const-string v2, "PersonaManagerService"

    const-string v3, "Failed to start confirm credential intent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_65
    return-void
.end method

.method public showScrim(Z)V
    .registers 4

    const-string v0, "PersonaManagerService"

    const-string v1, " show scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->showScrim(Z)V

    return-void
.end method

.method public showScrimWithoutFreeze(Z)V
    .registers 4

    const-string v0, "PersonaManagerService"

    const-string v1, " show scrim without freeze screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->showScrimWithoutFreeze(Z)V

    return-void
.end method

.method public startActivityThroughPersona(Landroid/content/Intent;)Z
    .registers 5

    const-string/jumbo v0, "startActivityThroughPersona"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityThroughPersona Intent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    if-nez p1, :cond_25

    goto :goto_32

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_2a} :catch_2d

    nop

    const/4 v0, 0x1

    return v0

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return v1

    :cond_32
    :goto_32
    return v1
.end method

.method public systemReady()V
    .registers 14

    const-string/jumbo v0, "systemReady"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/server/pm/PersonaServiceProxy;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    new-instance v0, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->emergencyManager:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    new-instance v1, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxBadgeHandler:Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$BootReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PersonaManagerService$BootReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_ac
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    const-string v5, "PersonaManagerService"

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_b7} :catch_b8

    goto :goto_bc

    :catch_b8
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_bc
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.samsung.android.intent.action.IRIS_RESET"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.intent.action.IRIS_REMOVED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.intent.action.IRIS_ADDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mIrisReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "package"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "samsung.knox.intent.action.rcp.MOVEMENT"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->registerContentObserver()V

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mEmergencyStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v7, "knoxid.reset_on_reboot"

    invoke-virtual {p0, v7}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_185

    const/4 v7, -0x1

    goto :goto_193

    :cond_185
    const-string v7, "knoxid.reset_on_reboot"

    invoke-virtual {p0, v7}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_193
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1a4

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_1a4

    invoke-direct {p0, v7}, Lcom/android/server/pm/PersonaManagerService;->mayResetOnRebootforCOM(I)V

    :cond_1a4
    const-string v8, "com.samsung.android.knox.containeragent"

    invoke-direct {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->clearHomeCrossProfileFilter(Ljava/lang/String;)Z

    new-instance v8, Lcom/android/server/pm/KnoxKeyguardScrimView;

    iget-object v9, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/pm/KnoxKeyguardScrimView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxKeyguardScrim:Lcom/android/server/pm/KnoxKeyguardScrimView;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v8

    const/4 v9, 0x4

    if-eqz v8, :cond_1ef

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaAvailable(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1e2

    const-string v11, "PersonaManagerService"

    const-string v12, "Device compromise detected !"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v9}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    move-result v10

    if-nez v10, :cond_1ef

    const-string v10, "PersonaManagerService"

    const-string/jumbo v11, "setting compromise attribute failed !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ef

    :cond_1e2
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v10

    if-eqz v10, :cond_1ef

    const-string v10, "PersonaManagerService"

    const-string v11, "Device is super locked - start lock screen"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ef
    :goto_1ef
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_215

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaAvailable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_215

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v8

    invoke-static {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    move-result v8

    if-nez v8, :cond_215

    const-string v8, "PersonaManagerService"

    const-string/jumbo v9, "setting compromise attribute failed !!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_215
    new-instance v8, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;-><init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$1;)V

    iput-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mActivationMonitor:Lcom/android/server/pm/PersonaManagerService$ActivationMonitor;

    return-void
.end method

.method public updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string/jumbo v0, "updatePersonaCache"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePersonaCache is called for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_99

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_99

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_31
    const-string v2, "fwversion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "fotaversion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_94

    :cond_42
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    if-nez p2, :cond_59

    const-string v2, "PersonaManagerService"

    const-string v3, "Remove cache entry request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_59
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    if-eqz p2, :cond_70

    const-string v2, "PersonaManagerService"

    const-string v3, "Add cache entry request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_70
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    if-eqz p2, :cond_8d

    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "update cache entry request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_8d
    if-eqz v0, :cond_92

    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    :cond_92
    monitor-exit v1

    goto :goto_99

    :cond_94
    :goto_94
    monitor-exit v1

    return v0

    :catchall_96
    move-exception v2

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_31 .. :try_end_98} :catchall_96

    throw v2

    :cond_99
    :goto_99
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePersonaCache status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
