.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;,
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;,
        Lcom/android/server/BluetoothManagerService$ActiveLog;
    }
.end annotation


# static fields
.field private static final ACTIVE_LOG_MAX_SIZE:I = 0x14

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

.field private static final CRASH_LOG_MAX_SIZE:I = 0x64

.field private static final DBG:Z

.field private static final DBG_ADMIN:Z = true

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_BT_IT_POLICY:I = 0x5

.field private static final MESSAGE_CHINA_BT_ENABLE_SECURITY_POPUP:I = 0x2bc

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_GOOGLE_BLE_STATE_CHANGE:I = 0x2be

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_SINK_SERVICE_STATE_CALLBACK:I = 0x3fc

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_REGISTER_STATE_DISBLE_BLE_CALLBACK:I = 0x3fa

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_RESTORE_USER_SETTING:I = 0x1f4

.field private static final MESSAGE_SAMSUNG_BLE_STATE_CHANGE:I = 0x2bf

.field private static final MESSAGE_SEND_SINK_SERVICE_STATE_CHANGE:I = 0x3fe

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_SINK_SERVICE_STATE_CALLBACK:I = 0x3fd

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_UNREGISTER_STATE_DISBLE_BLE_CALLBACK:I = 0x3fb

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final MESSAGE_USER_UNLOCKED:I = 0x12d

.field private static final RESTORE_SETTING_TO_OFF:I = 0x0

.field private static final RESTORE_SETTING_TO_ON:I = 0x1

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final STATE_BTMGR_BLE_OFF:I = 0x0

.field private static final STATE_BTMGR_BLE_ON:I = 0x2

.field private static final STATE_BTMGR_BLE_TURNING_OFF:I = 0x3

.field private static final STATE_BTMGR_BLE_TURNING_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TYPE_BLE:I = 0x1

.field private static final TYPE_BLUETOOTH:I = 0x0

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8

.field private static isEnablePopup:Z

.field private static limit:I

.field private static mBleAppCount:I

.field private static mPolicy:I

.field private static mSamsungBleAppCount:I

.field private static mShutdown:Z

.field private static mainBuffer:Ljava/lang/String;

.field private static subBuffer:Ljava/lang/StringBuilder;


# instance fields
.field private chinaThirdPartyAppName:Ljava/lang/String;

.field logDir:Ljava/io/File;

.field logDirp:Ljava/lang/String;

.field private final mActiveLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/BluetoothManagerService$ActiveLog;",
            ">;"
        }
    .end annotation
.end field

.field private mAddress:Ljava/lang/String;

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

.field private mBinding:Z

.field private mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBleLock:Ljava/lang/Object;

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private mBluetoothBinder:Landroid/os/IBinder;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mBtEnablePopUp:Landroid/app/AlertDialog;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCrashTimestamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashes:I

.field private final mDisableBleCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothDisableBleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mErrorRecoveryRetryCounter:I

.field private mGoogleBleState:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private final mHeadsetProxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBootCompleted:Z

.field private mLastEnabledTime:J

.field private final mMaxHeadsetProxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mPermissionReviewRequired:Z

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private mQuietEnableExternal:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSamsungBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungBleState:I

.field private final mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitching:Z

.field private final mSystemUiUid:I

.field private mUnbinding:Z

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUsingSSUpdate:Z

.field mainBfp:Ljava/lang/String;

.field mainF:Ljava/io/File;

.field subBfp:Ljava/lang/String;

.field subF:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sput v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sput-boolean v0, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    sput-object v1, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    const/high16 v1, 0x80000

    sput v1, Lcom/android/server/BluetoothManagerService;->limit:I

    sput-boolean v0, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mIsBootCompleted:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mMaxHeadsetProxies:Ljava/util/Map;

    const-string v1, "/data/misc/bluedroiddump"

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    const-string v1, "/data/misc/bluedroiddump/mainBuffer.log"

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    const-string v1, "/data/misc/bluedroiddump/subBuffer.log"

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    new-instance v1, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    new-instance v1, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    new-instance v1, Lcom/android/server/BluetoothManagerService$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/server/BluetoothManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$4;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    new-instance v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1120099

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mSwitching:Z

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_126

    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_124

    const-string v2, "BluetoothManagerService"

    const-string v4, "Startup: Bluetooth persisted state is ON."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_124
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    :cond_126
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_138

    const-string v4, "bluetooth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_145

    :cond_138
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_145
    const/4 v3, -0x1

    :try_start_146
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120095

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_164

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.systemui"

    const/high16 v7, 0x100000

    invoke-virtual {v5, v6, v7, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    move v3, v0

    :cond_164
    const-string v0, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected SystemUiUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_146 .. :try_end_17e} :catch_17f

    goto :goto_187

    :catch_17f
    move-exception v0

    const-string v4, "BluetoothManagerService"

    const-string v5, "Unable to resolve SystemUI\'s UID."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_187
    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->setBdroidVersion()V

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->makeHeadsetProfileServiceConnection()Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    return-void
.end method

.method static synthetic access$000(J)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/BluetoothManagerService;->getEnableDisableReasonString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/BluetoothManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .registers 2

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BluetoothManagerService;Z)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->checkItPolicy(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/BluetoothManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300()I
    .registers 1

    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .registers 1

    sput p0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return p0
.end method

.method static synthetic access$2306()I
    .registers 1

    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0
.end method

.method static synthetic access$2400()I
    .registers 1

    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic access$2406()I
    .registers 1

    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BluetoothManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->updateOppLauncherComponentState(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOffBle(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic access$3802(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mSinkServiceChangeCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 2

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bleStateByBtStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/BluetoothManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/BluetoothManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/BluetoothManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic access$5608(Lcom/android/server/BluetoothManagerService;)I
    .registers 3

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/BluetoothManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->addCrashLog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/BluetoothManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/BluetoothManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/server/BluetoothManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    return p1
.end method

.method static synthetic access$6302(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    return-void
.end method

.method static synthetic access$6602(Lcom/android/server/BluetoothManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mSwitching:Z

    return p1
.end method

.method static synthetic access$6700()I
    .registers 1

    sget v0, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6902(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/BluetoothManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->cancelChinaPopupState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BluetoothManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v0

    return v0
.end method

.method private addActiveLog(ILjava/lang/String;Z)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_12

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_12
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    new-instance v9, Lcom/android/server/BluetoothManagerService$ActiveLog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/BluetoothManagerService$ActiveLog;-><init>(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;ZJ)V

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3a

    if-eqz p3, :cond_2b

    const/4 v0, 0x1

    :goto_29
    move v4, v0

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x2

    goto :goto_29

    :goto_2d
    const/16 v1, 0x43

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    move v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;IILjava/lang/String;)I

    return-void

    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private addCrashLog()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_12
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private bleStateByBtStateChangeHandler(II)V
    .registers 16

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0xb

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/4 v4, 0x3

    const/16 v5, 0x10

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/16 v8, 0xe

    const/16 v9, 0xa

    const/4 v10, 0x2

    if-eq p2, v6, :cond_19d

    if-ne p2, v9, :cond_1d

    goto/16 :goto_19d

    :cond_1d
    if-ne p2, v2, :cond_54

    :try_start_1f
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT ON On, G state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", S state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v1, v10, :cond_48

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    :cond_48
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v10, :cond_280

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    goto/16 :goto_280

    :catchall_51
    move-exception v1

    goto/16 :goto_282

    :cond_54
    if-ne p2, v8, :cond_b4

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ble Turning On, G state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", S state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_89

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-nez v1, :cond_89

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_96

    :cond_89
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_96

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-nez v1, :cond_96

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    :cond_96
    :goto_96
    sget v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-lez v1, :cond_a5

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-nez v1, :cond_a5

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    goto/16 :goto_280

    :cond_a5
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_280

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-nez v1, :cond_280

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    iput v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    goto/16 :goto_280

    :cond_b4
    if-ne p2, v5, :cond_ec

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ble Turning Off, G state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", S state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v1, v10, :cond_e1

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    iput v4, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    :cond_e1
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v10, :cond_280

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    iput v4, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    goto/16 :goto_280

    :cond_ec
    if-ne p2, v1, :cond_155

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turning On, G state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", S state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mBLE count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", s BLE count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v1, v10, :cond_12c

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    goto :goto_137

    :cond_12c
    invoke-direct {p0, v9, v8}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    invoke-direct {p0, v8, v6}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    iput v10, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    :goto_137
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v10, :cond_140

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    goto/16 :goto_280

    :cond_140
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v7, :cond_280

    sget v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-nez v1, :cond_280

    invoke-direct {p0, v9, v8}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    invoke-direct {p0, v8, v6}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    iput v10, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    goto/16 :goto_280

    :cond_155
    if-ne p2, v3, :cond_280

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turning Off, G state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", S state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mBLE count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", s BLE count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v1, v10, :cond_194

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    :cond_194
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v10, :cond_280

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    goto/16 :goto_280

    :cond_19d
    :goto_19d
    const/4 v11, 0x0

    if-ne p1, v3, :cond_1a4

    if-ne p2, v6, :cond_1a4

    move v12, v7

    goto :goto_1a5

    :cond_1a4
    move v12, v11

    :goto_1a5
    if-ne p2, v9, :cond_1ed

    if-ne p1, v5, :cond_1c7

    const-string v1, "BluetoothManagerService"

    const-string v2, "Bluetooth is complete send Service Down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v1, v4, :cond_1bc

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    iput v11, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableBleCallback()V

    :cond_1bc
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v4, :cond_27f

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    iput v11, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    goto/16 :goto_27f

    :cond_1c7
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    if-eq p1, v8, :cond_1e4

    if-ne p1, v6, :cond_1cf

    goto :goto_1e4

    :cond_1cf
    if-eq p1, v1, :cond_1d5

    if-eq p1, v2, :cond_1d5

    if-ne p1, v3, :cond_1e7

    :cond_1d5
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v1, v10, :cond_1dc

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    :cond_1dc
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v10, :cond_1e7

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    goto :goto_1e7

    :cond_1e4
    :goto_1e4
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    :cond_1e7
    :goto_1e7
    iput v11, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    iput v11, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto/16 :goto_27f

    :cond_1ed
    if-nez v12, :cond_242

    const-string v1, "BluetoothManagerService"

    const-string v2, "Bluetooth is in LE only mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_27f

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_202

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-eqz v1, :cond_20d

    :cond_202
    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_216

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-nez v1, :cond_216

    :cond_20d
    invoke-direct {p0, v9, v8}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    iput v10, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_21f

    :cond_216
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v1, v7, :cond_21f

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    iput v10, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    :cond_21f
    :goto_21f
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_227

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-eqz v1, :cond_22f

    :cond_227
    sget v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-lez v1, :cond_238

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-nez v1, :cond_238

    :cond_22f
    invoke-direct {p0, v9, v8}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    iput v10, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    goto :goto_27f

    :cond_238
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v7, :cond_27f

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    iput v10, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    goto :goto_27f

    :cond_242
    if-eqz v12, :cond_27f

    const-string v1, "BluetoothManagerService"

    const-string v2, "Intermediate off, back to LE only mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v1, v10, :cond_268

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    sget v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-eqz v1, :cond_268

    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_268

    invoke-direct {p0, v6, v5}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    invoke-direct {p0, v5, v9}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    iput v11, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableBleCallback()V

    :cond_268
    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    if-ne v1, v10, :cond_27f

    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-eqz v1, :cond_27f

    sget v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-nez v1, :cond_27f

    invoke-direct {p0, v6, v5}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    invoke-direct {p0, v5, v9}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    iput v11, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    :cond_27f
    :goto_27f
    nop

    :cond_280
    :goto_280
    monitor-exit v0

    return-void

    :goto_282
    monitor-exit v0
    :try_end_283
    .catchall {:try_start_1f .. :try_end_283} :catchall_51

    throw v1
.end method

.method private bluetoothStateChangeHandler(II)V
    .registers 12

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return-void

    :cond_4
    const/16 v1, 0xa

    const/16 v2, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v2, :cond_32

    if-ne p2, v1, :cond_f

    goto :goto_32

    :cond_f
    const/16 v1, 0xc

    if-ne p2, v1, :cond_20

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->bindHeadsetProfileServiceConnection()V

    if-ne p2, v1, :cond_19

    goto :goto_1a

    :cond_19
    move v3, v4

    :goto_1a
    move v1, v3

    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    goto/16 :goto_15c

    :cond_20
    const/16 v1, 0xe

    if-eq p2, v1, :cond_2f

    const/16 v1, 0x10

    if-ne p2, v1, :cond_29

    goto :goto_2f

    :cond_29
    const/16 v1, 0xb

    if-eq p2, v1, :cond_15c

    goto/16 :goto_15c

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    goto/16 :goto_15c

    :cond_32
    :goto_32
    const/16 v5, 0xd

    if-ne p1, v5, :cond_3a

    if-ne p2, v2, :cond_3a

    move v5, v3

    goto :goto_3b

    :cond_3a
    move v5, v4

    :goto_3b
    if-ne p2, v1, :cond_f2

    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_48

    const-string v1, "BluetoothManagerService"

    const-string v6, "Bluetooth is complete send Service Down"

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v1, v3, :cond_97

    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After shutdown : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_15b

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    :try_start_8c
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v3, v7, v6}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_15b

    :catchall_94
    move-exception v2

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_94

    throw v2

    :cond_97
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v1, :cond_15b

    iget v1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v3, 0x6

    if-ge v1, v3, :cond_ea

    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call sendEnableMsg() again!!! mErrorRecoveryRetryCounter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mQuietEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothManagerService Call sendEnableMsg to recover. mErrorRecoveryRetryCounter : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    :try_start_df
    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v3, v7, v6}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_15b

    :catchall_e7
    move-exception v2

    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_df .. :try_end_e9} :catchall_e7

    throw v2

    :cond_ea
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    const-string v1, "BluetoothManagerService RetryCounter reached the limit. Don\'t call sendEnableMsg anymore"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_15b

    :cond_f2
    if-nez v5, :cond_146

    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_ff

    const-string v1, "BluetoothManagerService"

    const-string v3, "Bluetooth is in LE only mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ff
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_117

    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_10e

    const-string v1, "BluetoothManagerService"

    const-string v3, "Calling BluetoothGattServiceUp"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    const-string v1, "BluetoothManagerService BLE_ON, mBluetoothGatt is not null"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    goto :goto_144

    :cond_117
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_122

    const-string v1, "BluetoothManagerService"

    const-string v3, "Binding Bluetooth GATT service"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_122
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_144

    new-instance v1, Landroid/content/Intent;

    const-class v3, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v4, 0x41

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3, v4, v6}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_144
    :goto_144
    const/4 v0, 0x0

    goto :goto_15b

    :cond_146
    if-eqz v5, :cond_15b

    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_153

    const-string v1, "BluetoothManagerService"

    const-string v3, "Intermediate off, back to LE only mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_153
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    const/16 p2, 0xa

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    :cond_15b
    :goto_15b
    nop

    :cond_15c
    :goto_15c
    if-eqz v0, :cond_181

    if-ne p1, v2, :cond_162

    const/16 p1, 0xa

    :cond_162
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_181
    return-void
.end method

.method public static bufferLimitReached()Z
    .registers 2

    const-string v0, "BluetoothManagerService"

    const-string v1, "In bufferLimitReached"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method private cancelChinaPopupState()V
    .registers 4

    const-string v0, "BluetoothManagerService -- enable(), China popup state : cancel"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_32

    :try_start_9
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.CHINA_NAL_SECURITY_SCAN_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_2a

    :cond_29
    goto :goto_32

    :catch_2a
    move-exception v0

    const-string v1, "BluetoothManagerService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    return-void
.end method

.method private checkBluetoothPermissionWhenPermissionReviewRequired()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_BLUETOOTH_WHEN_PERMISSION_REVIEW_REQUIRED"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v1, 0x1

    nop

    :cond_12
    return v1
.end method

.method private checkIfCallerIsForegroundUser()Z
    .registers 14

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_20

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    goto :goto_22

    :cond_20
    const/16 v6, -0x2710

    :goto_22
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :try_start_28
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eq v0, v10, :cond_3a

    if-eq v6, v10, :cond_3a

    const/16 v11, 0x403

    if-eq v7, v11, :cond_3a

    iget v11, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    if-ne v7, v11, :cond_39

    goto :goto_3a

    :cond_39
    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v8, 0x1

    :goto_3b
    move v9, v8

    sget-boolean v8, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v8, :cond_70

    if-nez v9, :cond_70

    const-string v8, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " callingUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " parentUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " foregroundUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_28 .. :try_end_70} :catchall_76

    :cond_70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move v8, v10

    return v9

    :catchall_76
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private checkItPolicy(Z)I
    .registers 13

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :try_start_c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_16} :catch_18

    move v2, v3

    :goto_17
    goto :goto_2a

    :catch_18
    move-exception v3

    const-string v4, "BluetoothManagerService"

    const-string v5, "Failed getting userId using ActivityManagerNative"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :catch_21
    move-exception v3

    const-string v4, "BluetoothManagerService"

    const-string v5, "Failed getting userId using ActivityManagerNative"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :goto_2a
    if-eqz v0, :cond_ab

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_2e
    invoke-interface {v0, v3, v2}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v3

    const-wide/16 v5, 0x64

    const/4 v7, 0x5

    if-nez v3, :cond_77

    sput v1, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    const-string/jumbo v1, "service.bt.security.policy.mode"

    const-string v8, "0"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BluetoothManagerService"

    const-string v8, "BT IT Policy is changed to disable Bluetooth. Cannot enable"

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothManagerService -- BT IT Policy is changed to Disable mode"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    if-eqz p1, :cond_6b

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.bluetooth.adapter.extra.STATE"

    const/16 v9, 0xa

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v8, 0x4000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v1, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_6b
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ab

    :cond_77
    const/4 v1, 0x1

    if-ne v3, v1, :cond_9c

    sput v1, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    const-string/jumbo v1, "service.bt.security.policy.mode"

    const-string v8, "1"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BluetoothManagerService"

    const-string v8, "BT IT Policy is changed to support HF only. Can use HF only"

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothManagerService -- BT IT Policy is changed to Hands Free mode"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7, v5, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ab

    :cond_9c
    sput v4, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    const-string/jumbo v1, "service.bt.security.policy.mode"

    const-string v5, "2"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_a6} :catch_a7

    goto :goto_ab

    :catch_a7
    move-exception v1

    sput v4, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    goto :goto_ac

    :cond_ab
    :goto_ab
    nop

    :goto_ac
    sget v1, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    return v1
.end method

.method private clearAllmBleApps()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    if-eqz v2, :cond_34

    if-eqz v3, :cond_34

    const/4 v4, 0x0

    :try_start_27
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2a
    .catch Ljava/util/NoSuchElementException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_34

    :catch_2b
    move-exception v4

    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "no such element, already unlinked"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    goto :goto_a

    :cond_35
    return-void
.end method

.method private clearAllmSamsungBleApps()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    if-eqz v2, :cond_34

    if-eqz v3, :cond_34

    const/4 v4, 0x0

    :try_start_27
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2a
    .catch Ljava/util/NoSuchElementException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_34

    :catch_2b
    move-exception v4

    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "no such element, already unlinked"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    goto :goto_a

    :cond_35
    return-void
.end method

.method private clearBleApps()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearAllmBleApps()V

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearAllmSamsungBleApps()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_14
    sput v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sput v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private disableBleScanMode()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_31

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_22

    const-string v0, "BluetoothManagerService"

    const-string v1, "Reseting the mEnable flag for clean disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_28
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    goto :goto_31

    :catchall_26
    move-exception v0

    goto :goto_3c

    :catch_28
    move-exception v0

    :try_start_29
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getState()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void

    :goto_3c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private enablePopupForBluetooth(Ljava/lang/String;)V
    .registers 13

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "enablePopupForBluetooth"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_19
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_34
    new-instance v2, Lcom/android/server/BluetoothManagerService$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/BluetoothManagerService$6;-><init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v4, 0x5

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const v7, 0x104014d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040141

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    aput-object v10, v8, v9

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1040142

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/BluetoothManagerService$8;

    invoke-direct {v6, p0, v1}, Lcom/android/server/BluetoothManagerService$8;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/app/KeyguardManager;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/BluetoothManagerService$7;

    invoke-direct {v6, p0}, Lcom/android/server/BluetoothManagerService$7;-><init>(Lcom/android/server/BluetoothManagerService;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v1, :cond_b9

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_b9

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_c4

    :cond_b9
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    :goto_c4
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    return-void
.end method

.method private static getEnableDisableReasonString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1a
    const-string v0, "CHANGED_IT_POLICY"

    return-object v0

    :pswitch_1d
    const-string v0, "RESTORE_USER_SETTING"

    return-object v0

    :pswitch_20
    const-string v0, "USER_SWITCH"

    return-object v0

    :pswitch_23
    const-string v0, "CRASH"

    return-object v0

    :pswitch_26
    const-string v0, "SYSTEM_BOOT"

    return-object v0

    :pswitch_29
    const-string v0, "START_ERROR"

    return-object v0

    :pswitch_2c
    const-string v0, "RESTARTED"

    return-object v0

    :pswitch_2f
    const-string v0, "DISALLOWED"

    return-object v0

    :pswitch_32
    const-string v0, "AIRPLANE_MODE"

    return-object v0

    :pswitch_35
    const-string v0, "APPLICATION_REQUEST"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private static getStrVer(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_24

    const-string v0, "0"

    return-object v0

    :pswitch_6
    const-string v0, "5.0"

    return-object v0

    :pswitch_9
    const-string v0, "4.2"

    return-object v0

    :pswitch_c
    const-string v0, "4.1"

    return-object v0

    :pswitch_f
    const-string v0, "4.0"

    return-object v0

    :pswitch_12
    const-string v0, "3.0"

    return-object v0

    :pswitch_15
    const-string v0, "2.1"

    return-object v0

    :pswitch_18
    const-string v0, "2.0"

    return-object v0

    :pswitch_1b
    const-string v0, "1.2"

    return-object v0

    :pswitch_1e
    const-string v0, "1.1"

    return-object v0

    :pswitch_21
    const-string v0, "1.0"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private handleDisable()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    :try_start_3
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_35

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "BluetoothManagerService"

    const-string v1, "Sending off request."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "BluetoothManagerService"

    const-string v1, "IBluetooth.disable() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2a} :catch_2d
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception v0

    goto :goto_40

    :catch_2d
    move-exception v0

    :try_start_2e
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to call disable()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return-void

    :goto_40
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private handleEnable(Z)V
    .registers 9

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    :try_start_5
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_45

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v5, 0x41

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_44

    :cond_42
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    :goto_44
    goto :goto_75

    :cond_45
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_80

    if-eqz v0, :cond_75

    :try_start_49
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "BluetoothManagerService"

    const-string v1, "IBluetooth.enable() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :cond_5d
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "BluetoothManagerService"

    const-string v1, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_6c} :catch_6d
    .catchall {:try_start_49 .. :try_end_6c} :catchall_80

    :cond_6c
    :goto_6c
    goto :goto_75

    :catch_6d
    move-exception v0

    :try_start_6e
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to call enable()"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_80

    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void

    :catchall_80
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private initSecBluetoothService()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->getSecBTHIDLServiceMockable()Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_1d
    .catchall {:try_start_0 .. :try_end_f} :catchall_1b

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const/4 v0, 0x1

    return v0

    :catchall_1b
    move-exception v0

    goto :goto_30

    :catch_1d
    move-exception v0

    :try_start_1e
    const-string v1, "BluetoothManagerService"

    const-string v2, "IBTVendor.getService exception : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_30
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private isAirplaneModeOn()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method private isBluetoothDisallowed()Z
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string/jumbo v3, "no_bluetooth"

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isBluetoothPersistedStateOn()Z
    .registers 6

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_on"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_2b

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth persisted state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    nop

    :cond_2f
    return v1
.end method

.method private isBluetoothPersistedStateOnBluetooth()Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->supportBluetoothPersistedState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_on"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_15

    move v1, v3

    nop

    :cond_15
    return v1
.end method

.method private isCustomizedByKccAgent()Z
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.sec.knox.kccagent/shared_prefs/customized.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method private isNameAndAddressSet()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method static synthetic lambda$getFileService$0(Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method static synthetic lambda$getPropertyService$1(Landroid/os/HidlSupport$Mutable;ZLjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iput-object p2, p0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private loadStoredNameAndAddress()V
    .registers 4

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_32

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_31

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_6c

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return-void
.end method

.method private onBluetoothGattServiceUp()V
    .registers 5

    const-string v0, "BluetoothManagerService"

    const-string v1, "BluetoothGatt Service is Up"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_26

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "onBluetoothServiceUp: mBluetooth is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1c} :catch_73
    .catchall {:try_start_7 .. :try_end_1c} :catchall_71

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_55

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothServiceUp: state isn\'t BLE_ON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_4b} :catch_73
    .catchall {:try_start_26 .. :try_end_4b} :catchall_71

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :cond_55
    :try_start_55
    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v2, :cond_7b

    if-ne v0, v1, :cond_7b

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRestrictedBtPolicy()Z

    move-result v1
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5f} :catch_73
    .catchall {:try_start_55 .. :try_end_5f} :catchall_71

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :cond_6b
    :try_start_6b
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_70} :catch_73
    .catchall {:try_start_6b .. :try_end_70} :catchall_71

    goto :goto_7b

    :catchall_71
    move-exception v0

    goto :goto_86

    :catch_73
    move-exception v0

    :try_start_74
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to call onServiceUp"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_71

    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return-void

    :goto_86
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private persistBluetoothSetting(I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerService -- Persisting Bluetooth Setting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_2e

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting Bluetooth Setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private recoverBluetoothServiceFromError(Z)V
    .registers 6

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "recoverBluetoothServiceFromError"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1c} :catch_20
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    goto :goto_28

    :catchall_1d
    move-exception v0

    goto/16 :goto_9e

    :catch_20
    move-exception v0

    :try_start_21
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to unregister"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1d

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    :try_start_45
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_5c
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_93

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    if-eqz p1, :cond_78

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    :cond_78
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_92

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_92
    return-void

    :catchall_93
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :goto_9e
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private registerForBleScanModeChange()V
    .registers 5

    new-instance v0, Lcom/android/server/BluetoothManagerService$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$5;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private restrictedByMdmPolicy(I)Z
    .registers 13

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_a

    const-string/jumbo v0, "isBluetoothEnabled"

    goto :goto_f

    :cond_a
    if-ne p1, v2, :cond_8f

    const-string/jumbo v0, "isBLEAllowed"

    :goto_f
    const-string v3, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v9

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_70

    :try_start_23
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_35
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_23 .. :try_end_35} :catch_54
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_23 .. :try_end_35} :catch_3c
    .catchall {:try_start_23 .. :try_end_35} :catchall_3a

    move v10, v4

    :goto_36
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_70

    :catchall_3a
    move-exception v1

    goto :goto_6c

    :catch_3c
    move-exception v4

    :try_start_3d
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CursorIndexOutOfBoundsException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :catch_54
    move-exception v4

    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CursorWindowAllocationException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_3d .. :try_end_6b} :catchall_3a

    goto :goto_36

    :goto_6c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_70
    :goto_70
    if-nez v10, :cond_8e

    const-string v1, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is Disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8e
    return v1

    :cond_8f
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private sendBleStateChanged(II)V
    .registers 7

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending BLE State Change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_51

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_4a

    :try_start_24
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2f} :catch_30
    .catchall {:try_start_24 .. :try_end_2f} :catchall_51

    goto :goto_47

    :catch_30
    move-exception v2

    :try_start_31
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_51

    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_4a
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void

    :catchall_51
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBluetoothServiceUpCallback()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_53

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_4c

    :try_start_24
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_32
    .catchall {:try_start_24 .. :try_end_31} :catchall_53

    goto :goto_49

    :catch_32
    move-exception v2

    :try_start_33
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_53

    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_4c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void

    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBluetoothStateCallback(Z)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " receivers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_59

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_52

    :try_start_2c
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_37} :catch_38
    .catchall {:try_start_2c .. :try_end_37} :catchall_59

    goto :goto_4f

    :catch_38
    move-exception v2

    :try_start_39
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_59

    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_52
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void

    :catchall_59
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
.end method

.method private sendBrEdrDownCallback()V
    .registers 4

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "BluetoothManagerService"

    const-string v1, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v0, :cond_17

    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth handle is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mSwitching:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_34} :catch_37
    .catchall {:try_start_22 .. :try_end_34} :catchall_35

    goto :goto_3f

    :catchall_35
    move-exception v0

    goto :goto_4a

    :catch_37
    move-exception v0

    :try_start_38
    const-string v1, "BluetoothManagerService"

    const-string v2, "Call to onBrEdrDown() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    :cond_49
    return-void

    :goto_4a
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private sendDisableMsg(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    return-void
.end method

.method private sendEnableMsg(ZILjava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/BluetoothManagerService;->addActiveLog(ILjava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BluetoothManagerService;->mLastEnabledTime:J

    return-void
.end method

.method private sendSamsungBleStateChanged(II)V
    .registers 7

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung BLE State Change Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private setBdroidVersion()V
    .registers 6

    const-string v0, "8"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_21

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBdroidVersion, Int version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string/jumbo v2, "persist.service.bdroid.version"

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->getStrVer(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkBluetoothPermissionWhenPermissionReviewRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, p2, :cond_50

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_2b} :catch_6f

    :try_start_2b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b .. :try_end_30} :catch_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_30} :catch_6f

    nop

    const/4 v1, 0x1

    return v1

    :catch_33
    move-exception v3

    :try_start_34
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent to handle action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_50
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception v0

    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_2d

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetooth name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-eqz p2, :cond_5a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_5a

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_address"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    if-eqz p1, :cond_66

    if-eqz p2, :cond_66

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_66
    return-void
.end method

.method private supportBluetoothPersistedState()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static timeToLog(J)Ljava/lang/CharSequence;
    .registers 3

    const-string v0, "MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private unbindAllBluetoothProfileServices()V
    .registers 5

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "unbindAllBluetoothProfileServices"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    if-nez v3, :cond_2c

    goto :goto_15

    :cond_2c
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2900(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V

    goto :goto_15

    :cond_30
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_37

    throw v1
.end method

.method private updateOppLauncherComponentState(IZ)V
    .registers 7

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.bluetooth"

    const-string v2, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    const/4 v1, 0x2

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception v2

    :goto_18
    return-void
.end method

.method private waitForOnOff(ZZ)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x28

    if-ge v1, v2, :cond_9c

    :try_start_6
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_7f
    .catchall {:try_start_6 .. :try_end_11} :catchall_7d

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_9c

    :cond_1e
    const/16 v2, 0xc

    const/4 v3, 0x1

    if-eqz p1, :cond_36

    :try_start_23
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_7f
    .catchall {:try_start_23 .. :try_end_29} :catchall_7d

    if-ne v4, v2, :cond_60

    nop

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v3

    :cond_36
    if-eqz p2, :cond_4d

    :try_start_38
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v2
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3e} :catch_7f
    .catchall {:try_start_38 .. :try_end_3e} :catchall_7d

    const/16 v4, 0xa

    if-ne v2, v4, :cond_60

    nop

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v3

    :cond_4d
    :try_start_4d
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v4
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_53} :catch_7f
    .catchall {:try_start_4d .. :try_end_53} :catchall_7d

    if-eq v4, v2, :cond_60

    nop

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v3

    :cond_60
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    if-nez p1, :cond_75

    if-eqz p2, :cond_6f

    goto :goto_75

    :cond_6f
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_7a

    :cond_75
    :goto_75
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :goto_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_7d
    move-exception v0

    goto :goto_92

    :catch_7f
    move-exception v2

    :try_start_80
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "getState()"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_7d

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_9c

    :goto_92
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_9c
    :goto_9c
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOff time out"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private waitForOnOffBle(ZZ)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x50

    if-ge v1, v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_b} :catch_4d
    .catchall {:try_start_9 .. :try_end_b} :catchall_4b

    if-nez v3, :cond_f

    :try_start_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_4b

    goto :goto_5a

    :cond_f
    const/16 v3, 0xf

    const/4 v4, 0x1

    if-eqz p1, :cond_1e

    :try_start_14
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v5
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_4d
    .catchall {:try_start_14 .. :try_end_1a} :catchall_4b

    if-ne v5, v3, :cond_36

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_4b

    return v4

    :cond_1e
    if-eqz p2, :cond_2c

    :try_start_20
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_4d
    .catchall {:try_start_20 .. :try_end_26} :catchall_4b

    const/16 v5, 0xa

    if-ne v3, v5, :cond_36

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_4b

    return v4

    :cond_2c
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v5
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_4d
    .catchall {:try_start_2c .. :try_end_32} :catchall_4b

    if-eq v5, v3, :cond_36

    :try_start_34
    monitor-exit v2

    return v4

    :cond_36
    nop

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_4b

    if-nez p1, :cond_43

    if-eqz p2, :cond_3d

    goto :goto_43

    :cond_3d
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_48

    :cond_43
    :goto_43
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_4b
    move-exception v0

    goto :goto_58

    :catch_4d
    move-exception v3

    :try_start_4e
    const-string v4, "BluetoothManagerService"

    const-string/jumbo v5, "getState()"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    goto :goto_5a

    :goto_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_4b

    throw v0

    :cond_5a
    :goto_5a
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOffBle time out"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    const/4 v1, 0x0

    if-nez v0, :cond_25

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to bind to profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", while Bluetooth was disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v1

    :cond_25
    if-nez p2, :cond_28

    return v1

    :cond_28
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    return v1

    :cond_2c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public bindBluetoothProfileServiceWithCaller(ILandroid/bluetooth/IBluetoothProfileServiceConnection;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5d

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1a

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_1a
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    invoke-interface {v3, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2a
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mMaxHeadsetProxies:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3e

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mMaxHeadsetProxies:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    :cond_3e
    if-eqz v2, :cond_58

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v0, v4, :cond_58

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mMaxHeadsetProxies:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    :goto_58
    monitor-exit v1

    goto :goto_5d

    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_6 .. :try_end_5c} :catchall_5a

    throw v0

    :cond_5d
    :goto_5d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z

    move-result v0

    return v0
.end method

.method bindHeadsetProfileServiceConnection()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->makeHeadsetProfileServiceConnection()Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    const-string v2, "bindHeadsetProfileServiceConnection"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$4500(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    return-void
.end method

.method public disable(Ljava/lang/String;Z)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    const-string v4, "BluetoothManagerService -- disable() BT ManagerService disable called"

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    if-nez v1, :cond_77

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "disable(): not allowed for non-active and non system user"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BluetoothManagerService -- disable(): not allowed for non-active and non system user"

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return v3

    :cond_2c
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_77

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    if-eqz v4, :cond_77

    const-string v4, "android.bluetooth.adapter.action.REQUEST_DISABLE"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    const-string v2, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disable(): not allowed. mPermissionReviewRequired : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothManagerService -- disable(): not allowed. mPermissionReviewRequired : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return v3

    :cond_77
    sget-boolean v4, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v4, :cond_9e

    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disable(): mBluetooth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mBinding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    if-eqz p2, :cond_a9

    :try_start_a3
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    goto :goto_a9

    :catchall_a7
    move-exception v2

    goto :goto_c3

    :cond_a9
    :goto_a9
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-direct {p0, v2, p1}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    monitor-exit v4
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_a7

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-class v3, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Disabling Bluetooth"

    const/4 v11, -0x1

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return v2

    :goto_c3
    :try_start_c3
    monitor-exit v4
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_a7

    throw v2
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x1

    return v1

    :cond_1b
    :goto_1b
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to bind to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "BluetoothManagerService"

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_11

    return-void

    :cond_11
    const/4 v3, 0x0

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_23

    aget-object v4, v0, v5

    const-string v7, "--proto"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    move v4, v6

    goto :goto_24

    :cond_23
    move v4, v5

    :goto_24
    if-nez v4, :cond_285

    const-string v7, "Bluetooth Status"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-static {v8}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v7, :cond_e6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/BluetoothManagerService;->mLastEnabledTime:J

    sub-long/2addr v7, v9

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%02d:%02d:%02d.%03d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const-wide/32 v12, 0x36ee80

    div-long v12, v7, v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    const-wide/32 v12, 0xea60

    div-long v12, v7, v12

    const-wide/16 v14, 0x3c

    rem-long/2addr v12, v14

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    const/4 v12, 0x2

    const-wide/16 v16, 0x3e8

    div-long v18, v7, v16

    rem-long v13, v18, v14

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    rem-long v13, v7, v16

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  time since enabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e6
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_f4

    const-string v7, "\nBluetooth never enabled!"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_120

    :cond_f4
    const-string v7, "\nEnable log:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mActiveLogs:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_ff
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_120

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/BluetoothManagerService$ActiveLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ff

    :cond_120
    :goto_120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nBluetooth crashed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    if-ne v8, v6, :cond_13b

    const-string v8, ""

    goto :goto_13e

    :cond_13b
    const-string/jumbo v8, "s"

    :goto_13e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v7, v1, Lcom/android/server/BluetoothManagerService;->mCrashes:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_153

    const-string v7, "(last 100)"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_153
    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mCrashTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_159
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_182

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/BluetoothManagerService;->timeToLog(J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_159

    :cond_182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " BLE app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v8, v6, :cond_1a5

    const-string v8, ""

    goto :goto_1a8

    :cond_1a5
    const-string/jumbo v8, "s"

    :goto_1a8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "registered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1c2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c2

    :cond_1e7
    const-string v7, "\nBluetoothHeadset proxy:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "  Max:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mMaxHeadsetProxies:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1fb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_230

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1fb

    :cond_230
    const-string v7, "  Now:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_23f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_274

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23f

    :cond_274
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    array-length v7, v0

    if-nez v7, :cond_285

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "--print"

    aput-object v6, v0, v5

    :cond_285
    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    if-nez v0, :cond_28f

    const-string v3, "Bluetooth Service not connected"

    move-object/from16 v6, p1

    goto :goto_29e

    :cond_28f
    :try_start_28f
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;
    :try_end_291
    .catch Landroid/os/RemoteException; {:try_start_28f .. :try_end_291} :catch_299

    move-object/from16 v6, p1

    :try_start_293
    invoke-interface {v0, v6, v5}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_296
    .catch Landroid/os/RemoteException; {:try_start_293 .. :try_end_296} :catch_297

    goto :goto_29e

    :catch_297
    move-exception v0

    goto :goto_29c

    :catch_299
    move-exception v0

    move-object/from16 v6, p1

    :goto_29c
    const-string v3, "RemoteException while dumping Bluetooth Service"

    :goto_29e
    if-eqz v3, :cond_2a6

    if-eqz v4, :cond_2a3

    return-void

    :cond_2a3
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2a6
    const-string v0, "---------------------------------------"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b8

    sget-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2b8
    sget-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2c5

    sget-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2c5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public dumpInFile()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "dumpInFile start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "dumpInFile delete main file"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_47
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "dumpInFile delete sub file"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_5c
    sget-object v2, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_82

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "dumpInFile write main file"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    :cond_82
    sget-object v2, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_ad

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "dumpInFile write sub file"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_ad} :catch_de
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_32 .. :try_end_ad} :catch_c9
    .catchall {:try_start_32 .. :try_end_ad} :catchall_c7

    :cond_ad
    if-eqz v0, :cond_b5

    :try_start_af
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_b5

    :catch_b3
    move-exception v2

    goto :goto_bb

    :cond_b5
    :goto_b5
    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_ba} :catch_b3

    goto :goto_bd

    :goto_bb
    nop

    goto :goto_be

    :cond_bd
    :goto_bd
    nop

    :goto_be
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "dumpInFile end"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_c7
    move-exception v2

    goto :goto_f3

    :catch_c9
    move-exception v2

    :try_start_ca
    invoke-virtual {v2}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_c7

    if-eqz v0, :cond_d5

    :try_start_cf
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_d5

    :catch_d3
    move-exception v3

    goto :goto_db

    :cond_d5
    :goto_d5
    if-eqz v1, :cond_dc

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_da} :catch_d3

    goto :goto_dc

    :goto_db
    goto :goto_dd

    :cond_dc
    :goto_dc
    nop

    :goto_dd
    return-void

    :catch_de
    move-exception v2

    :try_start_df
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_c7

    if-eqz v0, :cond_ea

    :try_start_e4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_ea

    :catch_e8
    move-exception v3

    goto :goto_f0

    :cond_ea
    :goto_ea
    if-eqz v1, :cond_f1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ef} :catch_e8

    goto :goto_f1

    :goto_f0
    goto :goto_f2

    :cond_f1
    :goto_f1
    nop

    :goto_f2
    return-void

    :goto_f3
    nop

    if-eqz v0, :cond_fc

    :try_start_f6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_fc

    :catch_fa
    move-exception v3

    goto :goto_102

    :cond_fc
    :goto_fc
    if-eqz v1, :cond_103

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_101} :catch_fa

    goto :goto_103

    :goto_102
    nop

    :cond_103
    :goto_103
    throw v2
.end method

.method public enable(Ljava/lang/String;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    const-string v4, "BluetoothManagerService -- enable() BT ManagerService enable called"

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRestrictedBtPolicy()Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v3, "BluetoothManagerService"

    const-string v4, "Enabling BT is restriced by policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "BluetoothManagerService -- Enabling BT is restriced by policy"

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return v2

    :cond_29
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v4

    if-eqz v4, :cond_41

    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_3b

    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "enable(): not enabling - bluetooth disallowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const-string v3, "BluetoothManagerService -- enable(): not enabling - bluetooth disallowed"

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return v2

    :cond_41
    if-nez v1, :cond_a2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_57

    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "enable(): not allowed for non-active and non system user"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "BluetoothManagerService -- enable(): not allowed for non-active and non system user"

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return v2

    :cond_57
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_a2

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    if-eqz v4, :cond_a2

    const-string v4, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/BluetoothManagerService;->startConsentUiIfNeeded(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a2

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enable(): not allowed. mPermissionReviewRequired : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothManagerService -- enable(): not allowed. mPermissionReviewRequired : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mPermissionReviewRequired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return v2

    :cond_a2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_103

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "bluetooth_security_on_check"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "enable(): enable PopUp for Bluetooth isChecked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ChinaNalSecurity"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_103

    if-ne v5, v3, :cond_103

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isUserAction()Z

    move-result v6

    if-eqz v6, :cond_103

    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    if-nez v6, :cond_101

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x2bc

    invoke-virtual {v2, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v7, 0x32

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v3

    :cond_101
    sput-boolean v2, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    :cond_103
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    sget-boolean v4, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v4, :cond_143

    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enable("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "):  mBluetooth ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mBinding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_143
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    :try_start_146
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    monitor-exit v4
    :try_end_14c
    .catchall {:try_start_146 .. :try_end_14c} :catchall_16c

    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_158

    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "enable returning"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_158
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-class v2, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Enabling Bluetooth"

    const/4 v11, -0x1

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return v3

    :catchall_16c
    move-exception v2

    :try_start_16d
    monitor-exit v4
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    throw v2
.end method

.method public enableBle(Ljava/lang/String;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->restrictedByMdmPolicy(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "enableBle BLE is restriced by policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_11
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    if-ne v1, v0, :cond_1e

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "enableBle() : during shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2c

    move v3, v0

    goto :goto_2d

    :cond_2c
    move v3, v2

    :goto_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothManagerService -- enableBle("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") BT ManagerService enableBle called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v4

    if-eqz v4, :cond_5a

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v4, "enableBle(): not enabling - bluetooth disallowed"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BluetoothManagerService -- enableBle(): not allowed for non-active and non system user"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return v2

    :cond_5a
    if-nez v3, :cond_7b

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v4

    if-nez v4, :cond_6b

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v4, "enableBle(): not allowed for non-active and non system user"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6b
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7b

    return v0

    :cond_7b
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableBle("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "):  mBluetooth ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mBinding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v4

    :try_start_b7
    invoke-direct {p0, v2, v0, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    monitor-exit v4
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_d7

    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "enable returning"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-class v2, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Enabling Bluetooth"

    const/4 v11, -0x1

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return v0

    :catchall_d7
    move-exception v0

    :try_start_d8
    monitor-exit v4
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v0
.end method

.method public enableNoAutoConnect(Ljava/lang/String;)Z
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRestrictedBtPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string v0, "BluetoothManagerService"

    const-string v2, "Enabling BT is restriced by policy"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_21

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "enableNoAutoConnect(): not enabling - bluetooth disallowed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v1

    :cond_22
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_52

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mBinding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x403

    if-ne v0, v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_62
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-direct {p0, v2, v2, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_7c

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Enabling Bluetooth"

    const/4 v9, -0x1

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return v2

    :catchall_7c
    move-exception v2

    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v2

    :cond_7f
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "no permission to enable Bluetooth quietly"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "02:00:00:00:00:00"

    return-object v0

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_41} :catch_4d
    .catchall {:try_start_2e .. :try_end_41} :catchall_4b

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_4b
    move-exception v0

    goto :goto_63

    :catch_4d
    move-exception v0

    :try_start_4e
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getAddress(): Unable to retrieve address remotely. Returning cached address"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_4b

    :cond_56
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    return-object v0

    :goto_63
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getBleAppCount()I
    .registers 4

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBleAppCount mBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0
.end method

.method public getBleAppCounts()[I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->getBleAppCount()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->getSamsungBleAppCount()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .registers 3

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockBluetooth(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "BluetoothManagerService -- getBluetoothGatt() but knox block it "

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "getBluetoothGatt() but knox block it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method public getFileService(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1b

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "getFileService(): No System UID"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->initSecBluetoothService()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "getFileService(): Bluetooth Vendor HIDL service failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2a
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "getFileService(): Bluetooth Vendor HIDL service starts"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    :try_start_37
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    new-instance v2, Lcom/android/server/-$$Lambda$BluetoothManagerService$-oZKjd2jrowubGXH4Bn_6Aua1Jk;

    invoke-direct {v2, v0}, Lcom/android/server/-$$Lambda$BluetoothManagerService$-oZKjd2jrowubGXH4Bn_6Aua1Jk;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->getVendorFileInfo(Ljava/lang/String;Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorFileInfoCallback;)V

    goto :goto_63

    :cond_4f
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getFileService() : mBTvendor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_57} :catch_5a
    .catchall {:try_start_37 .. :try_end_57} :catchall_58

    goto :goto_63

    :catchall_58
    move-exception v1

    goto :goto_8d

    :catch_5a
    move-exception v1

    :try_start_5b
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "getFileService() : exception = "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_58

    :goto_63
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFileService(): getfileinfo.value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    :goto_8d
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "getName(): not allowed for non-active and non system user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_34} :catch_40
    .catchall {:try_start_21 .. :try_end_34} :catchall_3e

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_3e
    move-exception v0

    goto :goto_56

    :catch_40
    move-exception v0

    :try_start_41
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getName(): Unable to retrieve name remotely. Returning cached name"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3e

    :cond_49
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    return-object v0

    :goto_56
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getPropertyService(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1b

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "getPropertyService(): No System UID"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->initSecBluetoothService()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "getPropertyService(): Bluetooth Vendor HIDL service failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2a
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "getPropertyService(): Bluetooth Vendor HIDL service starts"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HidlSupport$Mutable;

    invoke-direct {v0}, Landroid/os/HidlSupport$Mutable;-><init>()V

    :try_start_37
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    new-instance v2, Lcom/android/server/-$$Lambda$BluetoothManagerService$7xVgbWYFxmtTxrTc6v5OSFBEabc;

    invoke-direct {v2, v0}, Lcom/android/server/-$$Lambda$BluetoothManagerService$7xVgbWYFxmtTxrTc6v5OSFBEabc;-><init>(Landroid/os/HidlSupport$Mutable;)V

    invoke-interface {v1, p1, v2}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->getVendorProperty(Ljava/lang/String;Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor$getVendorPropertyCallback;)V

    goto :goto_63

    :cond_4f
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getPropertyService() : mBTvendor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_57} :catch_5a
    .catchall {:try_start_37 .. :try_end_57} :catchall_58

    goto :goto_63

    :catchall_58
    move-exception v1

    goto :goto_8d

    :catch_5a
    move-exception v1

    :try_start_5b
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "getPropertyService() : exception = "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_58

    :goto_63
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPropertyService(): getpropinfo.value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/os/HidlSupport$Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    :goto_8d
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getSamsungBleAppCount()I
    .registers 4

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSamsungBleAppCount mSamsung : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0
.end method

.method protected getSecBTHIDLServiceMockable()Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;
    .registers 4

    :try_start_0
    invoke-static {}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->getService()Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "BluetoothManagerService"

    const-string v2, "Exception getting IBTVendor service: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getSettingsName()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "getName(): not allowed for non-active and non system user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    const-string v2, "device_name"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_35
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings Name is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getState()I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_19

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "getState(): report OFF for non-active and non system user"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2c} :catch_38
    .catchall {:try_start_19 .. :try_end_2c} :catchall_36

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_36
    move-exception v0

    goto :goto_4c

    :catch_38
    move-exception v0

    :try_start_39
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "getState()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_36

    :cond_41
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_4c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public handleOnBootPhase()V
    .registers 10

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth boot completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->readFromFile()V

    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothDisallowed()Z

    move-result v1

    const-string/jumbo v2, "ro.build.PDA"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothManagerService -- ===== BOOT_COMPLETED ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") ===== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-string/jumbo v3, "persist.bluetooth.enableinbandringing"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    const-string v4, "BluetoothManagerService -- IBR is supported, but disabled (Up)"

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-string/jumbo v4, "persist.bluetooth.enableinbandringing"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "persist.bluetooth.disableinbandringing"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fb

    :cond_92
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    const/4 v4, 0x0

    :try_start_9b
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/device-tree/sound/not-support-inband-ringtone"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a6} :catch_c2
    .catchall {:try_start_9b .. :try_end_a6} :catchall_c0

    xor-int/lit8 v6, v6, 0x1

    move v4, v6

    if-nez v4, :cond_b1

    :goto_ab
    const-string v5, "BluetoothManagerService -- IBR is not supported"

    invoke-static {v5}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_fb

    :cond_b1
    const-string v5, "BluetoothManagerService -- IBR is supported"

    invoke-static {v5}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-string/jumbo v5, "persist.bluetooth.enableinbandringing"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fb

    :catchall_c0
    move-exception v5

    goto :goto_e4

    :catch_c2
    move-exception v5

    :try_start_c3
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception on reading IBR file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "BluetoothManagerService -- IBR file reading exception"

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_c3 .. :try_end_e1} :catchall_c0

    if-nez v4, :cond_b1

    goto :goto_ab

    :goto_e4
    if-nez v4, :cond_ec

    const-string v6, "BluetoothManagerService -- IBR is not supported"

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_fa

    :cond_ec
    const-string v6, "BluetoothManagerService -- IBR is supported"

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-string/jumbo v6, "persist.bluetooth.enableinbandringing"

    const-string/jumbo v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_fa
    throw v5

    :cond_fb
    :goto_fb
    if-eqz v1, :cond_103

    const-string v4, "BluetoothManagerServiceBluetooth is disallowed, so block turning BT ON at BOOT_COMPLETED time"

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :cond_103
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v4, :cond_125

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v4

    if-eqz v4, :cond_125

    sget-boolean v4, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v4, :cond_118

    const-string v4, "BluetoothManagerService"

    const-string v5, "Auto-enabling Bluetooth."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_118
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnableExternal:Z

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(ZILjava/lang/String;)V

    goto :goto_143

    :cond_125
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v4

    if-nez v4, :cond_143

    sget-boolean v4, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v4, :cond_136

    const-string v4, "BluetoothManagerService"

    const-string v5, "Getting adapter name and address"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_136
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_143
    :goto_143
    return-void
.end method

.method public handleOnSwitchUser(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1f

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " switched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerService -- Bluetooth user switched. userHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "mSwitching to true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mSwitching:Z

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleOnUnlockUser(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1f

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unlocked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerService -- User unlocked. userHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x12d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isBleAppPresent()Z
    .registers 4

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBleAppPresent() count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-lez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v0, :cond_c

    return v1

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_14} :catch_19

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    nop

    :cond_18
    return v1

    :catch_19
    move-exception v0

    return v1
.end method

.method public isEnabled()Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_18

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_37
    .catchall {:try_start_18 .. :try_end_2b} :catchall_35

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_35
    move-exception v0

    goto :goto_4b

    :catch_37
    move-exception v0

    :try_start_38
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "isEnabled()"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_35

    :cond_40
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_4b
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isRestrictedBtPolicy()Z
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->checkItPolicy(Z)I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->restrictedByMdmPolicy(I)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->restrictedByMdmPolicy(I)Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockBluetooth(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_22

    :cond_21
    return v1

    :cond_22
    :goto_22
    return v0
.end method

.method public isUserAction()Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_176

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_176

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_176

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.systemui"

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_ac

    const-string v6, "com.android.settings"

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ac

    const-string v6, "com.sec.android.easysettings"

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ac

    const-string v6, "com.sec.android.emergencymode.service"

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ac

    const-string v6, "com.samsung.android.app.sreminder"

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ac

    const-string v6, "com.sec.knox.kccagent"

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isCustomizedByKccAgent()Z

    move-result v6

    if-eqz v6, :cond_ac

    :cond_88
    const-string v6, "com.samsung.cts.AndroidBluetooth"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ac

    const-string v6, "com.samsung.android.app.routines"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_104

    :cond_ac
    const-string v6, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v8

    if-ne v6, v8, :cond_104

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "info pid = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",  getCallingPid() = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v2, :cond_103

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBtEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    :cond_103
    return v7

    :cond_104
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v8

    if-ne v6, v8, :cond_174

    :try_start_10c
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/16 v6, 0x80

    if-eqz v3, :cond_142

    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v3

    :goto_115
    if-ge v7, v8, :cond_16a

    aget-object v9, v3, v7

    invoke-virtual {v5, v9, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_115

    :cond_142
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    const-string v3, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10c .. :try_end_16a} :catch_16b

    :cond_16a
    goto :goto_173

    :catch_16b
    move-exception v3

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_173
    return v2

    :cond_174
    goto/16 :goto_1b

    :cond_176
    return v2
.end method

.method makeHeadsetProfileServiceConnection()Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .registers 7

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    if-nez v1, :cond_36

    const-string v2, "BluetoothManagerService"

    const-string v4, "Creating new ProfileServiceConnections object for profile: 1"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    invoke-direct {v4, p0, v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    move-object v1, v4

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_36
    const-string v2, "BluetoothManagerService"

    const-string v3, "Already ProfileServiceConnections object is made for profile: 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    monitor-exit v0

    move-object v0, v1

    return-object v0

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public putLogs(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_18

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    :try_start_18
    sget-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/android/server/BluetoothManagerService;->limit:I

    if-le v0, v1, :cond_31

    const-string v0, "BluetoothManagerService"

    const-string v1, "buffer limit reached"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->bufferLimitReached()Z

    :cond_31
    sget-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception v0

    const-string v1, "BluetoothManagerService"

    const-string v2, "btsvc manager.putSlogs"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    return-void
.end method

.method public readFile(Ljava/io/FileInputStream;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_21

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_20} :catch_22

    goto :goto_11

    :cond_21
    goto :goto_26

    :catch_22
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public readFromFile()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "BluetoothManagerService"

    const-string/jumbo v5, "readFromFile start"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_34
    :try_start_34
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6a

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readFromFile main: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/BluetoothManagerService;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    :cond_6a
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a0

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readFromFile sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/BluetoothManagerService;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_a0} :catch_b4
    .catchall {:try_start_34 .. :try_end_a0} :catchall_b2

    :cond_a0
    if-eqz v0, :cond_a8

    :try_start_a2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_a8

    :catch_a6
    move-exception v4

    goto :goto_ae

    :cond_a8
    :goto_a8
    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ad} :catch_a6

    goto :goto_b0

    :goto_ae
    nop

    goto :goto_b1

    :cond_b0
    :goto_b0
    nop

    :goto_b1
    return-void

    :catchall_b2
    move-exception v4

    goto :goto_c9

    :catch_b4
    move-exception v4

    :try_start_b5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b2

    if-eqz v0, :cond_c0

    :try_start_ba
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_c0

    :catch_be
    move-exception v5

    goto :goto_c6

    :cond_c0
    :goto_c0
    if-eqz v1, :cond_c7

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c5} :catch_be

    goto :goto_c7

    :goto_c6
    goto :goto_c8

    :cond_c7
    :goto_c7
    nop

    :goto_c8
    return-void

    :goto_c9
    nop

    if-eqz v0, :cond_d2

    :try_start_cc
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_d2

    :catch_d0
    move-exception v5

    goto :goto_d8

    :cond_d2
    :goto_d2
    if-eqz v1, :cond_d9

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d7} :catch_d0

    goto :goto_d9

    :goto_d8
    nop

    :cond_d9
    :goto_d9
    throw v4
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .registers 4

    if-nez p1, :cond_b

    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in registerAdapter"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v1
.end method

.method public registerSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_14

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "registerStateChangeCallback: Callback is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x3fa

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDisableBleCallback()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting sendDisableBleCallback to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " receivers."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_55

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_4d

    :try_start_27
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothDisableBleCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDisableBleCallback;->ondisableBLE()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_55

    goto :goto_4a

    :catch_33
    move-exception v3

    :try_start_34
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to call sendDisableBleCallback() on callback #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_55

    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    monitor-exit v0

    return-void

    :catchall_55
    move-exception v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public sendSinkServiceChangeCallback(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPropertyService(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1b

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "setPropertyService(): No System UID"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->initSecBluetoothService()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "setPropertyService(): Bluetooth Vendor HIDL service failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2a
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "setPropertyService(): Bluetooth Vendor HIDL service starts"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :try_start_33
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->setVendorProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_5c

    :cond_48
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "setPropertyService() : mBTvendor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_50} :catch_53
    .catchall {:try_start_33 .. :try_end_50} :catchall_51

    goto :goto_5c

    :catchall_51
    move-exception v1

    goto :goto_7e

    :catch_53
    move-exception v1

    :try_start_54
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "setPropertyService() : exception = "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_51

    :goto_5c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPropertyService(): is_writevendor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_7e
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public shutdown()Z
    .registers 9

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "shutDown()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v0, 0xa

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1e

    move v2, v4

    goto :goto_1f

    :cond_1e
    move v2, v5

    :goto_1f
    if-nez v2, :cond_2a

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    const-string v7, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_e0

    :try_start_2e
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3d} :catch_42
    .catchall {:try_start_2e .. :try_end_3d} :catchall_3f

    move v0, v3

    goto :goto_4a

    :catchall_3f
    move-exception v3

    goto/16 :goto_d6

    :catch_42
    move-exception v3

    :try_start_43
    const-string v6, "BluetoothManagerService"

    const-string v7, "Unable to call getState"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_3f

    :goto_4a
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const-string v3, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_d5

    sput-boolean v4, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    const/16 v3, 0xf

    if-ne v0, v3, :cond_b7

    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_84

    const-string v3, "BluetoothManagerService"

    const-string/jumbo v6, "shutdown BLE disable()"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :try_start_84
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_a3

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_98} :catch_9b
    .catchall {:try_start_84 .. :try_end_98} :catchall_99

    goto :goto_a3

    :catchall_99
    move-exception v3

    goto :goto_ad

    :catch_9b
    move-exception v3

    :try_start_9c
    const-string v5, "BluetoothManagerService"

    const-string v6, "Unable to call onBrEdrDown"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_99

    :cond_a3
    :goto_a3
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_d5

    :goto_ad
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3

    :cond_b7
    const/16 v3, 0xc

    if-ne v0, v3, :cond_d5

    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_c7

    const-string v3, "BluetoothManagerService"

    const-string/jumbo v6, "shutdown BT disable()"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg(ILjava/lang/String;)V

    :cond_d5
    :goto_d5
    return v4

    :goto_d6
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3

    :cond_e0
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "shutdown mBluetooth is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public unbindAndFinish()V
    .registers 6

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_31

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindAndFinish(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mBinding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mUnbinding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_8e

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_48
    const/4 v0, 0x1

    :try_start_49
    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_5b
    .catchall {:try_start_49 .. :try_end_5b} :catchall_8e

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7f

    :try_start_5f
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v0, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_66} :catch_67
    .catchall {:try_start_5f .. :try_end_66} :catchall_8e

    goto :goto_6f

    :catch_67
    move-exception v0

    :try_start_68
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to unregister BluetoothCallback"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6f
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothBinder:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_81

    :cond_7f
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    :goto_81
    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_83
    .catchall {:try_start_68 .. :try_end_83} :catchall_8e

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void

    :catchall_8e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    if-nez v1, :cond_14

    monitor-exit v0

    return-void

    :cond_14
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    invoke-static {v1, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2800(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public unbindBluetoothProfileServiceWithCaller(ILandroid/bluetooth/IBluetoothProfileServiceConnection;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1d

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_1d
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHeadsetProxies:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    :goto_2c
    monitor-exit v1

    goto :goto_31

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :goto_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .registers 5

    if-nez p1, :cond_a

    const-string v0, "BluetoothManagerService"

    const-string v1, "Callback is null in unregisterAdapter"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_14

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "unregisterStateChangeCallback: Callback is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/server/BluetoothManagerService;->restrictedByMdmPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v4, "updateBleAppCount BLE is restriced by policy"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0

    :cond_18
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    if-ne v0, v4, :cond_2b

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_28

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v4, "updateBleAppCount Pass"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0

    :cond_2b
    iget-object v5, v1, Lcom/android/server/BluetoothManagerService;->mBleLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2e
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    move v6, v0

    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    move v7, v0

    monitor-exit v5
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b5

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    const/16 v8, 0xc

    const/16 v10, 0xa

    const/16 v11, 0x2be

    const/4 v12, 0x0

    const/16 v13, 0xf

    if-nez v5, :cond_173

    if-eqz p2, :cond_173

    new-instance v0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {v0, v1, v3}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;)V

    move-object v14, v0

    :try_start_51
    invoke-interface {v2, v14, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_54} :catch_155

    nop

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/server/BluetoothManagerService;->mBleLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_5d
    const-string v0, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBleAppCount #UP | mBleAppCount: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mSappCount: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Using SS: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_a0

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    if-ne v0, v8, :cond_a0

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_123

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v4, "updateBleAppCount on state"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_123

    :cond_a0
    sub-int v0, v6, v7

    const/4 v4, 0x2

    const/16 v8, 0xe

    if-nez v0, :cond_dc

    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-nez v0, :cond_dc

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_dc

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    if-ne v0, v13, :cond_dc

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v11, v10, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v9, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v9, 0x1

    iput v9, v1, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v9}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v9

    if-eq v9, v8, :cond_db

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v9, v11, v8, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    move-object v0, v8

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v8, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    iput v4, v1, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    :cond_db
    goto :goto_123

    :cond_dc
    if-nez v7, :cond_117

    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v0, :cond_117

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_117

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    if-ne v0, v13, :cond_117

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v9, 0x2bf

    invoke-virtual {v0, v9, v10, v8}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v9, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v9, 0x1

    iput v9, v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v9}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v9

    if-eq v9, v8, :cond_116

    iget-object v9, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v10, 0x2bf

    invoke-virtual {v9, v10, v8, v13}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    move-object v0, v8

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v8, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    iput v4, v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    :cond_116
    goto :goto_123

    :cond_117
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_123

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v4, "updateBleAppCount else case"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_123} :catch_126
    .catchall {:try_start_5d .. :try_end_123} :catchall_124

    :cond_123
    :goto_123
    goto :goto_12e

    :catchall_124
    move-exception v0

    goto :goto_153

    :catch_126
    move-exception v0

    :try_start_127
    const-string v4, "BluetoothManagerService"

    const-string v8, "Unable to call updateBleAppCount"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12e
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    monitor-exit v12
    :try_end_137
    .catchall {:try_start_127 .. :try_end_137} :catchall_124

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_151

    const-string v0, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registered for death of "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_151
    goto/16 :goto_27d

    :goto_153
    :try_start_153
    monitor-exit v12
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_124

    throw v0

    :catch_155
    move-exception v0

    move-object v4, v0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BLE app ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") already dead!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_173
    if-nez p2, :cond_2ac

    if-eqz v5, :cond_2ac

    :try_start_177
    invoke-interface {v2, v5, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_17a
    .catch Ljava/util/NoSuchElementException; {:try_start_177 .. :try_end_17a} :catch_17b

    goto :goto_185

    :catch_17b
    move-exception v0

    move-object v4, v0

    const-string v4, "BluetoothManagerService"

    const-string/jumbo v9, "no such element, already unlinked"

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_185
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v6, :cond_263

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_18f
    const-string v0, "BluetoothManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateBleAppCount #DOWN | mBleAppCount: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mSappCount"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", Using SS: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v1, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1d2

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    if-ne v0, v8, :cond_1d2

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_24c

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v8, "updateBleAppCount on state : false"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24c

    :cond_1d2
    sub-int v0, v6, v7

    const/4 v8, 0x3

    const/16 v9, 0x10

    const/4 v14, 0x1

    if-ne v0, v14, :cond_20b

    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-nez v0, :cond_20b

    if-lez v7, :cond_20b

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v0, v11, v13, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v13, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v13, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    iput v8, v1, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v8, :cond_20a

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    if-eq v8, v9, :cond_20a

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    move-object v0, v8

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v8, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    iput v12, v1, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->sendDisableBleCallback()V

    :cond_20a
    goto :goto_24c

    :cond_20b
    const/4 v11, 0x1

    if-ne v7, v11, :cond_240

    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v0, :cond_240

    if-le v6, v11, :cond_240

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v11, 0x2bf

    invoke-virtual {v0, v11, v13, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v11, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v11, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    iput v8, v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v8, :cond_23f

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v8}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v8

    if-eq v8, v9, :cond_23f

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v11, 0x2bf

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    move-object v0, v8

    iget-object v8, v1, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v8, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    iput v12, v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleState:I

    :cond_23f
    goto :goto_24c

    :cond_240
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_24c

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v8, "updateBleAppCount else:false case"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24c
    .catch Landroid/os/RemoteException; {:try_start_18f .. :try_end_24c} :catch_24f
    .catchall {:try_start_18f .. :try_end_24c} :catchall_24d

    :cond_24c
    :goto_24c
    goto :goto_257

    :catchall_24d
    move-exception v0

    goto :goto_261

    :catch_24f
    move-exception v0

    :try_start_250
    const-string v8, "BluetoothManagerService"

    const-string v9, "Unable to call updateBleAppCount"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_257
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v6, v6, -0x1

    monitor-exit v4

    goto :goto_263

    :goto_261
    monitor-exit v4
    :try_end_262
    .catchall {:try_start_250 .. :try_end_262} :catchall_24d

    throw v0

    :cond_263
    :goto_263
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_27d

    const-string v0, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unregistered for death of "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27d
    :goto_27d
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_297

    const-string v0, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " registered Ble Apps"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_297
    if-nez v6, :cond_2a0

    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v0, :cond_2a0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    :cond_2a0
    if-nez v6, :cond_2a9

    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v0, :cond_2a9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    :cond_2a9
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0

    :cond_2ac
    const-string v0, "BluetoothManagerService"

    const-string v4, "Unable to handle updateBleAppCount"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :catchall_2b5
    move-exception v0

    :try_start_2b6
    monitor-exit v5
    :try_end_2b7
    .catchall {:try_start_2b6 .. :try_end_2b7} :catchall_2b5

    throw v0
.end method

.method public updateSBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
    .registers 12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->restrictedByMdmPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "updateSBleAppCount BLE is restriced by policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0

    :cond_12
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    iput-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService;->updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    sget v4, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v5, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_86

    if-ge v2, v4, :cond_53

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    if-nez v1, :cond_3a

    const-string v0, "BluetoothManagerService"

    const-string v3, "Updating Ble App count failed, return"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0

    :cond_3a
    invoke-virtual {v1, p1, v0}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->setTokenAndAppInfo(Landroid/os/IBinder;Z)V

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/2addr v3, v0

    sput v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_52

    const-string v0, "BluetoothManagerService"

    const-string v3, "Registered for death Notification"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    goto :goto_83

    :cond_53
    if-le v2, v4, :cond_83

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    if-eqz v1, :cond_83

    :try_start_5f
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_62
    .catch Ljava/util/NoSuchElementException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_6c

    :catch_63
    move-exception v3

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "no such element, already unlinked"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6c
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v5, :cond_78

    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v3, v0

    sput v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    :cond_78
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_83

    const-string v0, "BluetoothManagerService"

    const-string v3, "Unregistered for death Notification"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0

    :catchall_86
    move-exception v0

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public writeFileService(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1b

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "writeFileService(): No System UID"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->initSecBluetoothService()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "writeFileService(): Bluetooth Vendor HIDL service failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2a
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "writeFileService(): Bluetooth Vendor HIDL service starts"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :try_start_33
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBTvendor:Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;

    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/bluetooth/V1_0/IBTVendor;->writeOutVendorFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    goto :goto_5c

    :cond_48
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "writeFileService() : mBTvendor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_50} :catch_53
    .catchall {:try_start_33 .. :try_end_50} :catchall_51

    goto :goto_5c

    :catchall_51
    move-exception v1

    goto :goto_7e

    :catch_53
    move-exception v1

    :try_start_54
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "writeFileService() : exception = "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_51

    :goto_5c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeFileService(): is_writevendor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_7e
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method
