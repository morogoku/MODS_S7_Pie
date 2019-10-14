.class final Lcom/android/server/display/WifiDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;,
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
    }
.end annotation


# static fields
.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static final CONTROLLER_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.smartmirroring.controller.ControllerService"

.field private static final CONTROLLER_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.smartmirroring"

.field private static final DEBUG:Z = true

.field private static final DISPLAY_NAME_PREFIX:Ljava/lang/String; = "wifi:"

.field private static final MSG_SEND_STATUS_CHANGE_BROADCAST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiDisplayAdapter"

.field private static final WIFI_DISPLAY_STATE_ON:I = 0x1


# instance fields
.field private mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private mActiveDisplayState:I

.field private mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field private mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

.field private mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mDlnaController:Lcom/android/server/display/DlnaController;

.field private mFeatureState:I

.field private mGoogleCastController:Lcom/android/server/display/GoogleCastController;

.field private final mGoogleCastListener:Lcom/android/server/display/GoogleCastController$Listener;

.field private final mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

.field private mIsBluetoothConnected:Z

.field private mIsBluetoothReceiverConnected:Z

.field private mPendingStatusChangeBroadcast:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mScanState:I

.field private mScreenInMode:Z

.field private mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

.field private final mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mWifiDisplaySinkDisplay:Landroid/hardware/display/SemWifiDisplay;

.field private mWifiDisplaySinkState:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .registers 12

    const-string v5, "WifiDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$17;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$17;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectionTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$18;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$18;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$19;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$19;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$20;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$20;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGoogleCastListener:Lcom/android/server/display/GoogleCastController$Listener;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$21;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$21;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->disableScreenInTile(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->broadcastBluetoothState(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayAdapter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothReceiverConnected:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/WifiDisplayAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothReceiverConnected:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayAdapter;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->updateOverrideDisplayInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/WifiDisplayAdapter;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->rotationDisplayDeviceLocked(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkState:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/display/WifiDisplayAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenInMode:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemWifiDisplay;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkDisplay:Landroid/hardware/display/SemWifiDisplay;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemWifiDisplay;)Landroid/hardware/display/SemWifiDisplay;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkDisplay:Landroid/hardware/display/SemWifiDisplay;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/WifiDisplayAdapter;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->fixRememberedDisplayNamesFromAvailableDisplaysLocked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaysLocked()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/GoogleCastController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGoogleCastController:Lcom/android/server/display/GoogleCastController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/GoogleCastController;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGoogleCastController:Lcom/android/server/display/GoogleCastController;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/display/WifiDisplayAdapter;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplaySessionInfo;)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->handleSendStatusChangeBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/GoogleCastController$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGoogleCastListener:Lcom/android/server/display/GoogleCastController$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/DlnaController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/DlnaController;)Lcom/android/server/display/DlnaController;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/SemDeviceInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;)Landroid/hardware/display/SemDeviceInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayAdapter;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/WifiDisplayAdapter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothConnected:Z

    return p1
.end method

.method private addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 27

    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    iget-object v0, v11, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object/from16 v12, p1

    invoke-virtual {v0, v12}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v11, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_1a
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move v14, v0

    const/4 v0, 0x0

    and-int/lit8 v1, p5, 0x10

    if-eqz v1, :cond_29

    const/16 v0, 0x40

    :cond_29
    if-eqz v14, :cond_2f

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x8

    :cond_2f
    const/4 v1, 0x0

    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_35

    const/4 v1, 0x3

    :cond_35
    move v15, v1

    iget-object v1, v11, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v1

    if-nez v1, :cond_41

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_41
    iget-object v1, v11, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isInitiateMirroringMode()Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, v11, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->isAuSharingLinkMode()Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_55

    :cond_52
    :goto_52
    move/from16 v16, v0

    goto :goto_59

    :cond_55
    :goto_55
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    goto :goto_52

    :goto_59
    const/high16 v17, 0x42700000    # 60.0f

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v18

    invoke-static {v10, v14}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v19

    new-instance v9, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, v19

    move-object v3, v10

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, v17

    move/from16 v7, v16

    move-object/from16 v8, v18

    move-object v13, v9

    move-object/from16 v9, p2

    move-object/from16 v20, v10

    move v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;I)V

    iput-object v13, v11, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    iget-object v0, v11, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method private broadcastBluetoothState(Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$16;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private disableScreenInTile(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$15;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private fixRememberedDisplayNamesFromAvailableDisplaysLocked()V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    if-ge v1, v2, :cond_57

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v2, v2, v1

    nop

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayAdapter;->findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {v2, v3}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "WifiDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fixRememberedDisplayNamesFromAvailableDisplaysLocked: updating remembered display to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aput-object v3, v4, v1

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    new-instance v13, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v12

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {v4, v13}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    or-int/2addr v0, v4

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_57
    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_5e
    return-void
.end method

.method private handleSendStatusChangeBroadcast()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2e

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private removeDisplayDeviceLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->destroyLocked()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    :cond_12
    return-void
.end method

.method private renameDisplayDeviceLocked(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setNameLocked(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_1b
    return-void
.end method

.method private rotationDisplayDeviceLocked(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setRotationLocked(I)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->sendTraversalRequestLocked()V

    :cond_12
    return-void
.end method

.method private scheduleStatusChangedBroadcastLocked()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method private sendBroadcastScreenRatio(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$13;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private turnOffPeriodicWifiScan(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$14;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDisplaysLocked()V
    .registers 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v2, v2

    new-array v2, v2, [Z

    iget-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_11
    if-ge v6, v4, :cond_5e

    aget-object v7, v3, v6

    const/4 v8, 0x0

    move v9, v5

    :goto_17
    iget-object v10, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v10, v10

    if-ge v9, v10, :cond_2e

    iget-object v10, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v10, v10, v9

    invoke-virtual {v7, v10}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/4 v10, 0x1

    move v8, v10

    aput-boolean v10, v2, v9

    goto :goto_2e

    :cond_2b
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_2e
    :goto_2e
    if-nez v8, :cond_5b

    iget-object v9, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v7, v9}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v9

    if-eqz v9, :cond_3e

    iget-object v9, v0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_3e
    new-instance v9, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v17

    move-object v10, v9

    invoke-direct/range {v10 .. v17}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5b
    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_5e
    nop

    :goto_5f
    move v3, v5

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v4

    if-ge v3, v4, :cond_a1

    iget-object v4, v0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v4, v4, v3

    new-instance v13, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v10

    aget-boolean v11, v2, v3

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v12

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getIconIdx()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/display/WifiDisplay;->setIconIdx(I)V

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/display/WifiDisplay;->setDeviceInfo(I)V

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getBluetoothMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/display/WifiDisplay;->setBluetoothMacAddress(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v3, 0x1

    goto :goto_5f

    :cond_a1
    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/display/WifiDisplay;

    iput-object v3, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-void
.end method

.method private updateOverrideDisplayInfo(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateRememberedDisplaysLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateDisplaysLocked()V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 10

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFeatureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAvailableDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRememberedDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingStatusChangeBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-nez v0, :cond_eb

    const-string/jumbo v0, "mDisplayController=null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_109

    :cond_eb
    const-string/jumbo v0, "mDisplayController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string v5, ""

    const-wide/16 v6, 0xc8

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    :goto_109
    return-void
.end method

.method public fitToActiveDisplayLocked(Z)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fitToActiveDisplayLocked, status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberActiveDisplayFitStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_24
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->sendBroadcastScreenRatio(Z)V

    return-void
.end method

.method public getActiveDevice()Landroid/hardware/display/SemDeviceInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGoogleCastController:Lcom/android/server/display/GoogleCastController;

    invoke-virtual {v0}, Lcom/android/server/display/GoogleCastController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGoogleCastController:Lcom/android/server/display/GoogleCastController;

    invoke-virtual {v0}, Lcom/android/server/display/GoogleCastController;->getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v0

    return-object v0

    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothConnected:Z

    if-eqz v0, :cond_47

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/SemDeviceInfo;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    return-object v0

    :cond_47
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mIsBluetoothReceiverConnected:Z

    if-eqz v0, :cond_61

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/display/SemDeviceInfo;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    return-object v0

    :cond_61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveSinkDisplay()Landroid/hardware/display/SemWifiDisplay;
    .registers 5

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkDisplay:Landroid/hardware/display/SemWifiDisplay;

    if-nez v0, :cond_15

    new-instance v0, Landroid/hardware/display/SemWifiDisplay;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/display/SemWifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkDisplay:Landroid/hardware/display/SemWifiDisplay;

    return-object v0

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceMaxVolume()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->getDeviceMaxVolume()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->getDeviceMaxVolume()I

    move-result v0

    return v0

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public getDeviceMinVolume()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->getDeviceMinVolume()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->getDeviceMinVolume()I

    move-result v0

    return v0

    :cond_1e
    const/4 v0, -0x1

    return v0
.end method

.method public getLastConnectedDevice()Landroid/hardware/display/SemDeviceInfo;
    .registers 3

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mGoogleCastController:Lcom/android/server/display/GoogleCastController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/GoogleCastController;->getLastConnectedGoogleCast(Landroid/hardware/display/SemDeviceInfo;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DlnaController;->getLastConnectedDlnaDevice(Landroid/hardware/display/SemDeviceInfo;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/WifiDisplayController;->getLastConnectedWifiDisplay(Landroid/hardware/display/SemDeviceInfo;)V

    return-object v0
.end method

.method public getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;
    .registers 9

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-nez v0, :cond_18

    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    :cond_18
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSideSyncMode()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplayStatus;->setConnectedState(I)V

    goto :goto_68

    :cond_27
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isMirrorLinkMode()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplayStatus;->setConnectedState(I)V

    goto :goto_68

    :cond_37
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_50

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSwitchingMode()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplayStatus;->setConnectedState(I)V

    goto :goto_68

    :cond_50
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->getConnectType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/display/SemDeviceInfo;->isSwitchingMode()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplayStatus;->setConnectedState(I)V

    :cond_68
    :goto_68
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWifiDisplayStatusLocked: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method public isConnWithPinSupportedLocked(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isConnWithPinSupportedLocked: address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeviceVolumeMuted()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isDeviceVolumeMuted()Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isDeviceVolumeMuted()Z

    move-result v0

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public isDongleRenameSupportedLocked()Z
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "isDongleRenameSupportedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isDongleRenameSupported()Z

    move-result v0

    return v0
.end method

.method public isFitToActiveDisplayLocked()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedActiveDisplayFitStatus()Z

    move-result v0

    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFitToActiveDisplayLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isScreenInSinkConnected()Z
    .registers 6

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isScreenInSinkConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenInMode:Z

    if-eqz v2, :cond_19

    move v2, v4

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkState:I

    if-ne v0, v4, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScreenInMode:Z

    if-eqz v0, :cond_2e

    move v3, v4

    nop

    :cond_2e
    return v3
.end method

.method public isWifiDisplaySinkConnected()Z
    .registers 3

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplaySinkState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public registerLocked()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeLastConnectedDevice()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->clearLastConnectedDevice()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    return-void
.end method

.method public renameDongleLocked(Ljava/lang/String;)V
    .registers 4

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "renameDongleLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->renameDongle(Ljava/lang/String;)V

    return-void
.end method

.method public requestConnectDeviceLocked(Landroid/hardware/display/SemDeviceInfo;)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectDeviceLocked: deviceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$9;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestConnectLocked(Ljava/lang/String;)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$5;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestDisconnectLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestDisconnectLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$8;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$8;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestForgetLocked(Ljava/lang/String;)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestForgetLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    :cond_3d
    return-void
.end method

.method public requestPauseLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestPauseLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$6;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$6;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestRenameLocked: address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", alias = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    const/4 p2, 0x0

    :cond_32
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v8

    if-eqz v8, :cond_6b

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    new-instance v9, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v7

    move-object v0, v9

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    move-object v8, v9

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, v8}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_6b
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    :cond_84
    return-void
.end method

.method public requestResumeLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestResumeLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$7;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$7;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStartScanLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStartScanLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$2;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStartScanLocked(I)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestStartScanLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$3;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStopScanLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStopScanLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$4;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public restartWifiDisplayLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "restartWifiDisplayLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$12;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$12;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAppListSupportingDirectStream(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->setAppListSupportingDirectStream(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method public setDeviceVolume(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DlnaController;->setDeviceVolume(I)V

    goto :goto_1b

    :cond_e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->setDeviceVolume(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setDeviceVolumeMuted(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DlnaController;->setDeviceVolumeMuted(Z)V

    goto :goto_1b

    :cond_e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->setDeviceVolumeMuted(Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setScanningChannelLocked(I)V
    .registers 4

    const-string v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "setScanChannelLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->setScanningChannel(I)V

    return-void
.end method

.method public setVolumeKeyEvent(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0}, Lcom/android/server/display/DlnaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDlnaController:Lcom/android/server/display/DlnaController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DlnaController;->sendDeviceVolumeKeyEvent(I)V

    goto :goto_1b

    :cond_e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeKeyEvent(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setWifiDisplayCPUBoost(ILandroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->setWifiDisplayCPUBoost(ILandroid/os/IBinder;)V

    return-void
.end method

.method public setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public setWifiDisplayRealSize(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->setWifiDisplayRealSize(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public updateDeviceState(Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$10;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/SemDeviceInfo;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
