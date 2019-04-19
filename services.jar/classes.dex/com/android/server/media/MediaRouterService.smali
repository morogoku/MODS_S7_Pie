.class public final Lcom/android/server/media/MediaRouterService;
.super Landroid/media/IMediaRouterService$Stub;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$UserHandler;,
        Lcom/android/server/media/MediaRouterService$UserRecord;,
        Lcom/android/server/media/MediaRouterService$ClientRecord;,
        Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field static final CONNECTED_TIMEOUT:J = 0xea60L

.field static final CONNECTING_TIMEOUT:J = 0x1388L

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaRouterService"


# instance fields
.field mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

.field private final mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

.field private final mAllClientRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/media/MediaRouterService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field mAudioRouteMainType:I

.field private final mAudioService:Landroid/media/IAudioService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mGlobalBluetoothA2dpOn:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/media/MediaRouterService$UserRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MediaRouterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Landroid/media/IMediaRouterService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    new-instance v0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-static {}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance()Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    new-instance v1, Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-virtual {v0, v1}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerSelfIntoAudioServiceIfNeeded(Landroid/media/IAudioService;)V

    const/4 v0, 0x0

    :try_start_6b
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    new-instance v2, Lcom/android/server/media/MediaRouterService$2;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouterService$2;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_76} :catch_78

    move-object v0, v1

    goto :goto_80

    :catch_78
    move-exception v1

    const-string v2, "MediaRouterService"

    const-string v3, "RemoteException in the audio service."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V
    .registers 6

    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_33

    if-eqz p2, :cond_1d

    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Died!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_1d
    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    iget v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-nez v0, :cond_3b

    iget-boolean v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eqz v0, :cond_43

    :cond_3b
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    :cond_43
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dispose()V

    return-void
.end method

.method private disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 5

    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v0, v1, :cond_2f

    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Disposed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2f
    return-void
.end method

.method private getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 4

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$ClientRecord;->getState()Landroid/media/MediaRouterClientState;

    move-result-object v1

    return-object v1

    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method private initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "MediaRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-ne v0, v1, :cond_26

    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    :cond_26
    return-void
.end method

.method private registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V
    .registers 22

    move-object v9, p0

    move/from16 v10, p5

    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-nez v0, :cond_5f

    const/4 v1, 0x0

    iget-object v2, v9, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-nez v2, :cond_23

    new-instance v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-direct {v3, v9, v10}, Lcom/android/server/media/MediaRouterService$UserRecord;-><init>(Lcom/android/server/media/MediaRouterService;I)V

    move-object v2, v3

    const/4 v1, 0x1

    :cond_23
    move v13, v1

    move-object v12, v2

    new-instance v14, Lcom/android/server/media/MediaRouterService$ClientRecord;

    move-object v1, v14

    move-object v2, v9

    move-object v3, v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouterService$ClientRecord;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;IILjava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_38
    invoke-interface {v11, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_55

    nop

    if-eqz v13, :cond_46

    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {v9, v12}, Lcom/android/server/media/MediaRouterService;->initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    :cond_46
    iget-object v0, v12, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v9, v1}, Lcom/android/server/media/MediaRouterService;->initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    move-object v0, v1

    goto :goto_5f

    :catch_55
    move-exception v0

    move-object v2, v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Media router client died prematurely."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5f
    :goto_5f
    return-void
.end method

.method private requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 9

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method private requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 9

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method private setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    .registers 9

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz v1, :cond_51

    iget-boolean v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-nez v2, :cond_14

    and-int/lit8 p2, p2, -0x5

    :cond_14
    iget v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-ne v2, p2, :cond_1c

    iget-boolean v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eq v2, p3, :cond_51

    :cond_1c
    sget-boolean v2, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v2, :cond_45

    const-string v2, "MediaRouterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Set discovery request, routeTypes=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", activeScan="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iput p2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    iput-boolean p3, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    :cond_51
    return-void
.end method

.method private setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz v0, :cond_67

    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    sget-boolean v2, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v2, :cond_43

    const-string v2, "MediaRouterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Set selected route, routeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldRouteId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", explicit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    iput-object p2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    if-eqz p3, :cond_67

    iget-boolean v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-eqz v2, :cond_67

    if-eqz v1, :cond_59

    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_59
    if-eqz p2, :cond_67

    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_67
    return-void
.end method

.method private unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz v0, :cond_1b

    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v2, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    :cond_1b
    return-void
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p2, :cond_20

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    array-length v2, v1

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_20
    return v0
.end method


# virtual methods
.method clientDied(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "MediaRouterService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "MEDIA ROUTER SERVICE (dumpsys media_router)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Global state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_31
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v1, :cond_4d

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v4, ""

    invoke-virtual {v3, p2, v4}, Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_31 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 6

    if-eqz p1, :cond_1a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService;->getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object v3

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_12
    move-exception v3

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
    .registers 7

    if-eqz p1, :cond_31

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_2c

    :try_start_9
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$ClientRecord;

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_29

    if-eqz v3, :cond_24

    :try_start_18
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget v4, v3, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    invoke-virtual {v2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_2c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_24
    const/4 v2, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public monitor()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    return-void

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 20

    move-object/from16 v8, p0

    if-eqz p1, :cond_5b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move-object/from16 v10, p2

    invoke-direct {v8, v9, v10}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "registerClientAsUser"

    move v1, v11

    move v2, v9

    move/from16 v3, p3

    move-object v7, v10

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v12

    iget-object v0, v8, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    :goto_2d
    move v7, v0

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2d

    :goto_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    :try_start_36
    iget-object v6, v8, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_4d

    move-object v1, v8

    move-object/from16 v2, p1

    move v3, v9

    move v4, v11

    move-object v5, v10

    move-object v15, v6

    move v6, v12

    :try_start_41
    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaRouterService;->registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V

    monitor-exit v15
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4a

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v15
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_52
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "packageName must match the calling uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    move-object/from16 v10, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 8

    if-eqz p1, :cond_25

    if-eqz p2, :cond_1c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    :try_start_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 8

    if-eqz p1, :cond_25

    if-eqz p2, :cond_1c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    :try_start_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreBluetoothA2dp()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2f

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2c

    if-eqz v2, :cond_2b

    :try_start_a
    const-string v0, "MediaRouterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreBluetoothA2dp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2b} :catch_2f

    :cond_2b
    goto :goto_37

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v0

    const-string v1, "MediaRouterService"

    const-string v2, "RemoteException while calling setBluetoothA2dpOn."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method

.method restoreRoute(I)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v2, :cond_33

    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$ClientRecord;

    iget-object v5, v4, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    move-object v0, v4

    goto :goto_33

    :cond_32
    goto :goto_1c

    :cond_33
    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_49

    if-eqz v0, :cond_45

    :try_start_36
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v1}, Landroid/media/IMediaRouterClient;->onRestoreRoute()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception v1

    const-string v2, "MediaRouterService"

    const-string v3, "Failed to call onRestoreRoute. Client probably died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    goto :goto_48

    :cond_45
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    :goto_48
    return-void

    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .registers 8

    if-eqz p1, :cond_1a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    :try_start_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_12
    move-exception v3

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 8

    if-eqz p1, :cond_1a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    :try_start_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_12
    move-exception v3

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v3
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method switchUser()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    if-eq v2, v1, :cond_32

    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    iput v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentUserId:I

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v3, :cond_22

    iget-object v4, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    :cond_22
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v4, :cond_32

    iget-object v5, v4, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public systemRunning()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/media/MediaRouterService$3;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaRouterService$3;-><init>(Lcom/android/server/media/MediaRouterService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->switchUser()V

    return-void
.end method

.method public unregisterClient(Landroid/media/IMediaRouterClient;)V
    .registers 6

    if-eqz p1, :cond_1b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_16

    const/4 v3, 0x0

    :try_start_a
    invoke-direct {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v3

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method