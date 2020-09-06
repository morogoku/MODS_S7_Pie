.class public final Lcom/android/server/aod/AODManagerService;
.super Lcom/android/server/SystemService;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/aod/AODManagerService$AODDozeLock;,
        Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;,
        Lcom/android/server/aod/AODManagerService$AODListenerRecord;,
        Lcom/android/server/aod/AODManagerService$LocalService;,
        Lcom/android/server/aod/AODManagerService$BinderService;,
        Lcom/android/server/aod/AODManagerService$AODHandler;,
        Lcom/android/server/aod/AODManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AOD_DEBUG:Z = false

.field private static final AOD_SCREEN_TURNING_ON_TIMEOUT:I = 0x64

.field private static final AOD_TSP_STATE_RETRY_COUNT:I = 0x2

.field private static final AOD_TSP_STATE_RETRY_DELAY:I = 0x1388

.field private static final DEBUG_TURNING_ON_DELAYED:I

.field private static GREAT_SPEN_USP_LEVEL:I = 0x0

.field private static final MSG_AOD_APP_LOG:I = 0x64

.field private static final MSG_EXPAND_NOTI_PANEL:I = 0x3e8

.field private static final SYSTEM_UI_SELF_PERMISSION:Ljava/lang/String; = "android.permission.systemui.IDENTITY"

.field private static final TAG:Ljava/lang/String;

.field private static final TSP_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final TSP_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field private static final TSP_MAIN_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp1/input/enabled"

.field private static final TSP_SUB_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/tsp2/input/enabled"

.field private static final WACOM_AOD_SETTING_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/aod_enable"

.field private static final WACOM_SPEN_INPUT_ENABLED:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"


# instance fields
.field private mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

.field private mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

.field private final mAODDozeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/aod/AODManagerService$AODDozeLock;",
            ">;"
        }
    .end annotation
.end field

.field private final mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

.field private mAODLogHandler:Landroid/os/Handler;

.field private mAODLogHandlerThread:Landroid/os/HandlerThread;

.field private mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

.field private mAODTspStateRetryCount:I

.field private mAppLogger:Lcom/android/server/aod/AODLogger;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mCalendarDataDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarDataTimeInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCoverController:Lcom/android/server/aod/AODSCoverController;

.field private mDefaultDisplayState:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExpandPanelTimeStamp:J

.field private mIsAODModeEnabled:Z

.field private mIsAODStartStop:Z

.field private mIsAODTapToShow:Z

.field private mIsFingerAdaptiveIcon:Z

.field private mIsFingerScreenLock:Z

.field private mIsSingleTouchMode:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/aod/AODManagerService$AODListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveClockImageInfo:Ljava/lang/String;

.field private mLiveClockLogger:Lcom/android/server/aod/AODLogger;

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mNeedToExpandPanel:Z

.field private mNotiExpandHandler:Landroid/os/Handler;

.field private final mRetryAODTspStateRunnable:Ljava/lang/Runnable;

.field private mSbnToExpand:Landroid/service/notification/StatusBarNotification;

.field private mScreenOnListener:Landroid/content/BroadcastReceiver;

.field private final mScreenTurningOnLock:Ljava/lang/Object;

.field private final mScreenTurningOnRunnable:Ljava/lang/Runnable;

.field private mSelfIconImageInfo:Ljava/lang/String;

.field private mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

.field private mSpenUspLevel:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemUiUid:I

.field private mTspH:I

.field private mTspLogger:Lcom/android/server/aod/AODLogger;

.field private final mTspRects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTspW:I

.field private mTspX:I

.field private mTspY:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v0, "debug.aod.turningondelay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerAdaptiveIcon:Z

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataTimeInfo:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCalendarDataDescription:Ljava/util/List;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_App"

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_LiveClock"

    const/16 v3, 0x96

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    new-instance v1, Lcom/android/server/aod/AODLogger;

    const-string v2, "AODManagerService_TSP"

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODLogger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    new-instance v1, Lcom/android/server/aod/AODManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$1;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    iput v0, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    new-instance v1, Lcom/android/server/aod/AODManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$2;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mRetryAODTspStateRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z

    new-instance v1, Lcom/android/server/aod/AODManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$3;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mScreenOnListener:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AODManagerService.LogThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/aod/AODManagerService$4;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$4;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/aod/AODSettingHelper;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/aod/AODSettingHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    new-instance v1, Lcom/android/server/aod/AODSCoverController;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-direct {v1, v2, v3}, Lcom/android/server/aod/AODSCoverController;-><init>(Landroid/content/Context;Lcom/android/server/aod/AODSettingHelper;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    new-instance v1, Lcom/android/server/aod/AODManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/aod/AODManagerService$SettingsObserver;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSettingsObserver:Lcom/android/server/aod/AODManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$SettingsObserver;->observe()V

    const-string/jumbo v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Lcom/android/server/aod/AODManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$5;-><init>(Lcom/android/server/aod/AODManagerService;)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_10a

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_10a

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    :cond_10a
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v0, Lcom/android/server/aod/AODManagerService$6;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/aod/AODManagerService$6;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/aod/AODManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mNotiExpandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODAppLog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/aod/AODManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSettingHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/aod/AODManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateDefaultDisplayState(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/aod/AODManagerService;)Landroid/app/StatusBarManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODSCoverController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    .registers 2

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/server/aod/AODManagerService;IJJJJJJJJ)I
    .registers 19

    invoke-direct/range {p0 .. p17}, Lcom/android/server/aod/AODManagerService;->setLiveClockInfoInternal(IJJJJJJJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/aod/AODManagerService;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->setLiveClockNeedleInternal([B)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/aod/AODManagerService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->turnOnSelfMoveInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/aod/AODManagerService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->turnOffSelfMoveInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/aod/AODManagerService;IIIIII)I
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/aod/AODManagerService;->setCurrentTimeInternal(IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/aod/AODManagerService;IIIIII)I
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/aod/AODManagerService;->setSelfIconInfoInternal(IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/aod/AODManagerService;IIIII)I
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->setSelfGridInfoInternal(IIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/aod/AODManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/aod/AODManagerService;IIII)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->setAnalogClockInfoInternal(IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/aod/AODManagerService;IIIIIIIIIIIIIIIIIIII)I
    .registers 22

    invoke-direct/range {p0 .. p20}, Lcom/android/server/aod/AODManagerService;->setDigitalClockInfoInternal(IIIIIIIIIIIIIIIIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/aod/AODManagerService;I[BLjava/lang/String;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/aod/AODManagerService;->setActiveImageInternal(I[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getActiveImageInfoInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/aod/AODManagerService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->getSelfIconImageInfoInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUid()V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/server/aod/AODManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUidOrSystemUiUidOrSystemApp()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/aod/AODManagerService;IIIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->updateAODTspRectInternal(IIIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->requestExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/aod/AODManagerService;IIIIIIIII)I
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/server/aod/AODManagerService;->setSelfPartialHLPMScanInternal(IIIIIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/aod/AODManagerService;IIIIII)I
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/aod/AODManagerService;->setAnalogClockInfoV4Internal(IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/aod/AODManagerService;IIIIIIIIIIIIIIII)I
    .registers 18

    invoke-direct/range {p0 .. p16}, Lcom/android/server/aod/AODManagerService;->setDigitalClockInfoV4Internal(IIIIIIIIIIIIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/aod/AODManagerService;II[BLjava/lang/String;)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->setLiveClockImageInternal(II[BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/aod/AODManagerService;III[I)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/aod/AODManagerService;->setLiveClockCommandInternal(III[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->addLogTextInternal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->readyToScreenTurningOnInternal()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODListenerInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/aod/AODManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->registerAODDozeCallbackInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/aod/AODManagerService;->acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->releaseDozeInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/aod/AODManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    return-object v0
.end method

.method static synthetic access$5800()I
    .registers 1

    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/aod/AODManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->wakeUpInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/aod/AODManagerService;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
    .registers 2

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/aod/AODManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/aod/AODManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/aod/AODManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/aod/AODManagerService;->mExpandPanelTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/aod/AODManagerService;)Landroid/service/notification/StatusBarNotification;
    .registers 2

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/aod/AODManagerService;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .registers 2

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method private acquireDozeInternal(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDozeInternal: mAODCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_17

    const-string/jumbo v3, "existed"

    goto :goto_1a

    :cond_17
    const-string/jumbo v3, "null"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    monitor-exit v0

    return-void

    :cond_35
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->findAODDozeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    if-gez v1, :cond_7b

    new-instance v9, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/aod/AODManagerService$AODDozeLock;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_84

    move-object v2, v9

    const/4 v3, 0x0

    :try_start_49
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_72
    .catchall {:try_start_49 .. :try_end_4c} :catchall_84

    nop

    :try_start_4d
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_5c

    monitor-exit v0

    return-void

    :cond_5c
    nop

    nop

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_67

    packed-switch v3, :pswitch_data_88

    goto :goto_70

    :cond_67
    :pswitch_67
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v3}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeAcquired()V

    :cond_70
    :goto_70
    monitor-exit v0

    return-void

    :catch_72
    move-exception v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "AOD doze lock is already dead."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7b
    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v3, "acquireDozeInternal: already acquired"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_4d .. :try_end_86} :catchall_84

    throw v1

    nop

    :pswitch_data_88
    .packed-switch 0x3
        :pswitch_67
        :pswitch_67
    .end packed-switch
.end method

.method private addAODAppLog(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method private addAODTspLog(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    return-void
.end method

.method private addLiveClockDumpLog(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    return-void
.end method

.method private addLogTextInternal(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "logs"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODLogHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private checkSystemUid()V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkSystemUidOrSystemUiUid()V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUiUid(I)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2c

    :cond_11
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    :goto_2c
    return-void
.end method

.method private checkSystemUidOrSystemUiUidOrSystemApp()V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemUiUid(I)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->isSystemApp(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_32

    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    :goto_32
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "AODMANAGER (dumpsys AODManagerService)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-static {p1}, Lcom/android/server/aod/AODConfig;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityManager.getCurrentUser()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAODCallback= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AODDozeLock= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_46

    :cond_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_157

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "----- Regarding AOD TSP -----"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsAODModeEnabled(tsp.cmd aod_enable)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsSingleTouchMode(tsp.input.enabled)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsSingleTouchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_a1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a8
    if-ge v2, v0, :cond_d8

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tsp touch rect(uid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_d8
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_a1 .. :try_end_d9} :catchall_154

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tsp touch : x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "live clock image info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockImageInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Self Icon image info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mSelfIconImageInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLiveClockLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspLogger:Lcom/android/server/aod/AODLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODLogger;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    if-eqz v0, :cond_153

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/aod/AODSCoverController;->dump(Ljava/io/PrintWriter;)V

    :cond_153
    return-void

    :catchall_154
    move-exception v0

    :try_start_155
    monitor-exit v1
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    throw v0

    :catchall_157
    move-exception v1

    :try_start_158
    monitor-exit v0
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_157

    throw v1
.end method

.method private findAODDozeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private getActiveImageInfoInternal()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentDisplayName()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    packed-switch v0, :pswitch_data_1c

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c
    const-string v0, "DOZE_SUSPEND"

    return-object v0

    :pswitch_f
    const-string v0, "DOZE"

    return-object v0

    :pswitch_12
    const-string v0, "ON"

    return-object v0

    :pswitch_15
    const-string v0, "OFF"

    return-object v0

    :pswitch_18
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method private getEffectiveUserId(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    :cond_14
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return p1
.end method

.method private getSelfIconImageInfoInternal()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private isSystemApp(I)Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_a
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_57

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    const/4 v4, 0x0

    if-eqz v3, :cond_40

    array-length v5, v3

    move v6, v4

    :goto_18
    if-ge v6, v5, :cond_56

    aget-object v7, v3, v6

    const/4 v8, 0x1

    :try_start_1d
    invoke-virtual {v0, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_2c

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_27} :catch_2d

    and-int/lit16 v10, v10, 0x81

    if-eqz v10, :cond_2c

    return v8

    :cond_2c
    goto :goto_3d

    :catch_2d
    move-exception v9

    sget-object v10, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v11, "Could not find package [%s]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_40
    sget-object v5, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No known packages with uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v4

    :catchall_57
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isSystemUiUid(I)Z
    .registers 3

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method private isSystemUid(I)Z
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private readyToScreenTurningOnInternal()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    invoke-static {}, Lcom/android/server/aod/AODConfig;->isNeedsScreenTurningOnDelayed()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readyToScreenTurningOn : Not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    invoke-interface {v1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_39

    :cond_31
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readyToScreenTurningOn : Do nothing, There is no Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private registerAODDozeCallbackInternal(Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-nez v1, :cond_1f

    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODDozeCallbackInternal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    goto :goto_27

    :cond_1f
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerAODDozeCallbackInternal : already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private registerAODListenerInternal(Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_2b

    # getter for: Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->access$2100(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerAODListenerInternal : already registered"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2b
    goto :goto_9

    :cond_2c
    new-instance v1, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;-><init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private registerScreenOnListener()V
    .registers 4

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerScreenOnListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mScreenOnListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseDozeInternal(Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseDozeInternal: mAODCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_18

    const-string/jumbo v3, "existed"

    goto :goto_1b

    :cond_18
    const-string/jumbo v3, "null"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5d

    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    goto :goto_5d

    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->findAODDozeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v1

    if-gez v1, :cond_4a

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "releaseDozeInternal: cannot find"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_4a
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    iget-object v3, v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-direct {p0, v1}, Lcom/android/server/aod/AODManagerService;->removeDozeLockLocked(I)V

    monitor-exit v0

    return-void

    :cond_5d
    :goto_5d
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method private removeDozeLockLocked(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeReleased()V

    :cond_16
    return-void
.end method

.method private removeDozeLockLocked(Lcom/android/server/aod/AODManagerService$AODDozeLock;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODDozeReleased()V

    :cond_18
    return-void
.end method

.method private requestAODToastInternal(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestAODToastInternal: mAODCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v3, :cond_18

    const-string/jumbo v3, "existed"

    goto :goto_1b

    :cond_18
    const-string/jumbo v3, "null"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", toast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V

    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private requestExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService;->updateExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static native setActiveImage(I[B)I
.end method

.method private setActiveImageInternal(I[BLjava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    return v0
.end method

.method static native setAnalogClockInfo(IIII)I
.end method

.method private setAnalogClockInfoInternal(IIII)I
    .registers 6

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setAnalogClockInfoV4(IIIIII)I
.end method

.method private setAnalogClockInfoV4Internal(IIIIII)I
    .registers 8

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setCurrentTime(IIIIII)I
.end method

.method private setCurrentTimeInternal(IIIIII)I
    .registers 8

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setDigitalClockInfo(IIIIIIIIIIIIIIIIIIII)I
.end method

.method private setDigitalClockInfoInternal(IIIIIIIIIIIIIIIIIIII)I
    .registers 22

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setDigitalClockInfoV4(IIIIIIIIIIIIIIII)I
.end method

.method private setDigitalClockInfoV4Internal(IIIIIIIIIIIIIIII)I
    .registers 18

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setLiveClockCommand(III[I)I
.end method

.method private setLiveClockCommandInternal(III[I)I
    .registers 6

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setLiveClockImage(II[B)I
.end method

.method private setLiveClockImageInternal(II[BLjava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    return v0
.end method

.method static native setLiveClockInfo(IJJJJJJJJ)I
.end method

.method private setLiveClockInfoInternal(IJJJJJJJJ)I
    .registers 19

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setLiveClockNeedle([B)V
.end method

.method private setLiveClockNeedleInternal([B)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    return-void
.end method

.method static native setSelfGridInfo(IIIII)I
.end method

.method private setSelfGridInfoInternal(IIIII)I
    .registers 7

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setSelfIconInfo(IIIIII)I
.end method

.method private setSelfIconInfoInternal(IIIIII)I
    .registers 8

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native setSelfPartialHLPMScan(IIIIIIIII)I
.end method

.method private setSelfPartialHLPMScanInternal(IIIIIIIII)I
    .registers 11

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native turnOffSelfMove()I
.end method

.method private turnOffSelfMoveInternal()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method static native turnOnSelfMove()I
.end method

.method private turnOnSelfMoveInternal()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, -0x1

    return v0
.end method

.method private unregisterAODDozeCallbackInternal(Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    # getter for: Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->access$2200(Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterAODDozeCallbackInternal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    goto :goto_2d

    :cond_25
    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterAODDozeCallbackInternal : cannot find matched callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private unregisterAODListenerInternal(Landroid/os/IBinder;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v3, :cond_23

    # getter for: Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->access$2100(Lcom/android/server/aod/AODManagerService$AODListenerRecord;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object v1, v3

    :cond_23
    goto :goto_a

    :cond_24
    if-nez v1, :cond_30

    sget-object v2, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregisterAODListenerInternal : cannot find the matched host"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_30
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3d
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private updateAODTspRectInternal(IIIII)V
    .registers 13

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    monitor-enter v0

    if-gez p3, :cond_14

    if-gez p4, :cond_14

    if-gez p1, :cond_14

    if-gez p2, :cond_14

    :try_start_e
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3a

    :cond_14
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_2e

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p3, p1

    add-int v4, p4, p2

    invoke-direct {v2, p3, p4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v2, p5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3a

    :cond_2e
    iput p3, v1, Landroid/graphics/Rect;->left:I

    iput p4, v1, Landroid/graphics/Rect;->top:I

    add-int v2, p3, p1

    iput v2, v1, Landroid/graphics/Rect;->right:I

    add-int v2, p4, p2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_3a
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_f9

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    :goto_48
    if-ge v3, v1, :cond_58

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mTspRects:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V
    :try_end_55
    .catchall {:try_start_e .. :try_end_55} :catchall_fb

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_58
    const/4 v3, 0x0

    :try_start_59
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_6d

    goto :goto_cc

    :cond_6d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_aod_rect,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/aod/AODManagerService;->mTspW:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/aod/AODManagerService;->mTspH:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/aod/AODManagerService;->mTspX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/aod/AODManagerService;->mTspY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_c7} :catch_e2
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_c7} :catch_d8
    .catchall {:try_start_59 .. :try_end_c7} :catchall_d6

    nop

    :try_start_c8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_ec
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_fb

    goto :goto_ee

    :cond_cc
    :goto_cc
    if-eqz v3, :cond_d4

    :try_start_ce
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_d2
    .catchall {:try_start_ce .. :try_end_d1} :catchall_fb

    goto :goto_d4

    :catch_d2
    move-exception v5

    nop

    :cond_d4
    :goto_d4
    :try_start_d4
    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_fb

    return-void

    :catchall_d6
    move-exception v4

    goto :goto_ef

    :catch_d8
    move-exception v4

    :try_start_d9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_d6

    if-eqz v3, :cond_ee

    :try_start_de
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_ec
    .catchall {:try_start_de .. :try_end_e1} :catchall_fb

    goto :goto_ee

    :catch_e2
    move-exception v4

    :try_start_e3
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_d6

    if-eqz v3, :cond_ee

    :try_start_e8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_fb

    goto :goto_ee

    :catch_ec
    move-exception v4

    goto :goto_f9

    :cond_ee
    :goto_ee
    goto :goto_f9

    :goto_ef
    nop

    if-eqz v3, :cond_f8

    :try_start_f2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_f6
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_fb

    goto :goto_f8

    :catch_f6
    move-exception v5

    nop

    :cond_f8
    :goto_f8
    :try_start_f8
    throw v4

    :cond_f9
    :goto_f9
    monitor-exit v0

    return-void

    :catchall_fb
    move-exception v1

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_f8 .. :try_end_fd} :catchall_fb

    throw v1
.end method

.method private updateAODTspState()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAODTspState: mIsAODModeEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    const-string v0, "/sys/class/sec/tsp/cmd"

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->updateAODTspState(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_4c

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAODTspState: mSpenUspLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    iget v0, p0, Lcom/android/server/aod/AODManagerService;->mSpenUspLevel:I

    sget v1, Lcom/android/server/aod/AODManagerService;->GREAT_SPEN_USP_LEVEL:I

    if-lt v0, v1, :cond_5f

    const-string/jumbo v0, "updateAODWacomState"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    const-string v0, "/sys/class/sec/sec_epen/aod_enable"

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/aod/AODManagerService;->updateAODWacomState(Ljava/lang/String;Z)V

    :cond_5f
    return-void
.end method

.method private updateAODTspState(Ljava/lang/String;Z)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    sget-boolean v0, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "updateAODTspState skip -- AOD TSP"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_6c

    :cond_21
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aod_enable,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_36

    const-string v3, "1"

    goto :goto_38

    :cond_36
    const-string v3, "0"

    :goto_38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_4b} :catch_bc
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_91
    .catchall {:try_start_f .. :try_end_4b} :catchall_8f

    nop

    :try_start_4c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_6b

    :catch_50
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_56
    const-string/jumbo v3, "updateAODTspState -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_d3

    :cond_6b
    :goto_6b
    goto :goto_d3

    :cond_6c
    :goto_6c
    if-eqz v0, :cond_8d

    :try_start_6e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_8d

    :catch_72
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODTspState -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_8e

    :cond_8d
    :goto_8d
    nop

    :goto_8e
    return-void

    :catchall_8f
    move-exception v1

    goto :goto_d4

    :catch_91
    move-exception v1

    :try_start_92
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "updateAODTspState -- IOException"

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_af

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mRetryAODTspStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/aod/AODManagerService;->mAODTspStateRetryCount:I
    :try_end_af
    .catchall {:try_start_92 .. :try_end_af} :catchall_8f

    :cond_af
    if-eqz v0, :cond_6b

    :try_start_b1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_6b

    :catch_b5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_56

    :catch_bc
    move-exception v1

    :try_start_bd
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "updateAODTspState -- FileNotFoundException"

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_8f

    if-eqz v0, :cond_6b

    :try_start_c8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_6b

    :catch_cc
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_56

    :goto_d3
    return-void

    :goto_d4
    nop

    if-eqz v0, :cond_f6

    :try_start_d7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_f6

    :catch_db
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODTspState -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    nop

    :cond_f6
    :goto_f6
    throw v1
.end method

.method private updateAODWacomState(Ljava/lang/String;Z)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    sget-boolean v0, Lcom/android/server/aod/AODConfig;->isAODTouchDisabled:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "updateAODWacomState skip -- AOD Wacom"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_5b

    :cond_21
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    if-eqz p2, :cond_2c

    const-string v2, "1"

    goto :goto_2e

    :cond_2c
    const-string v2, "0"

    :goto_2e
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_3a} :catch_97
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3a} :catch_80
    .catchall {:try_start_f .. :try_end_3a} :catchall_7e

    nop

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_5a

    :catch_3f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_45
    const-string/jumbo v3, "updateAODWacomState -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_ae

    :cond_5a
    :goto_5a
    goto :goto_ae

    :cond_5b
    :goto_5b
    if-eqz v0, :cond_7c

    :try_start_5d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_7c

    :catch_61
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODWacomState -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    goto :goto_7d

    :cond_7c
    :goto_7c
    nop

    :goto_7d
    return-void

    :catchall_7e
    move-exception v1

    goto :goto_af

    :catch_80
    move-exception v1

    :try_start_81
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v2, "updateAODWacomState -- IOException"

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_7e

    if-eqz v0, :cond_5a

    :try_start_8c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_5a

    :catch_90
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_45

    :catch_97
    move-exception v1

    :try_start_98
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "updateAODWacomState -- FileNotFoundException"

    invoke-direct {p0, v2}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_7e

    if-eqz v0, :cond_5a

    :try_start_a3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_5a

    :catch_a7
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_45

    :goto_ae
    return-void

    :goto_af
    nop

    if-eqz v0, :cond_d1

    :try_start_b2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_d1

    :catch_b6
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODWacomState -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    nop

    :cond_d1
    :goto_d1
    throw v1
.end method

.method private updateDefaultDisplayState(I)V
    .registers 6

    iput p1, p0, Lcom/android/server/aod/AODManagerService;->mDefaultDisplayState:I

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    monitor-enter v0

    packed-switch p1, :pswitch_data_26

    goto :goto_20

    :pswitch_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODDozeLock;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/aod/AODManagerService;->removeDozeLockLocked(Lcom/android/server/aod/AODManagerService$AODDozeLock;Z)V

    goto :goto_f

    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw v1

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private updateExpandNotificationPanelInternal(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    sget-object v0, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateExpandNotificationPanelInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mNeedToExpandPanel:Z

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService;->mSbnToExpand:Landroid/service/notification/StatusBarNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/aod/AODManagerService;->mExpandPanelTimeStamp:J

    return-void
.end method

.method private updateSettings()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v1}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v2}, Lcom/android/server/aod/AODSettingHelper;->isAODTapToShow()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v3}, Lcom/android/server/aod/AODSettingHelper;->isFingerScreenLock()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v4}, Lcom/android/server/aod/AODSettingHelper;->isFingerAdaptiveIcon()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-ne v5, v1, :cond_2e

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    if-ne v5, v2, :cond_2e

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    if-ne v5, v3, :cond_2e

    iget-boolean v5, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerAdaptiveIcon:Z

    if-eq v5, v4, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v5, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v5, 0x1

    :goto_2f
    if-eqz v5, :cond_d3

    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eq v6, v1, :cond_3a

    iput-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateAODTspState()V

    :cond_3a
    iput-boolean v2, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    iput-boolean v3, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    iput-boolean v4, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerAdaptiveIcon:Z

    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    if-eqz v6, :cond_48

    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    if-nez v6, :cond_50

    :cond_48
    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    if-eqz v6, :cond_92

    iget-boolean v6, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerAdaptiveIcon:Z

    if-eqz v6, :cond_92

    :cond_50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSettings: singletap_enable,1 mIsAODModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mIsAODTapToShow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mIsFingerScreenLock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mIsFingerAdaptiveIcon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerAdaptiveIcon:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    const-string v8, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v9, "singletap_enable,1"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSettings: singletap_enable,0 mIsAODModeEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsAODModeEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mIsAODTapToShow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsAODTapToShow:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mIsFingerScreenLock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerScreenLock:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mIsFingerAdaptiveIcon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/aod/AODManagerService;->mIsFingerAdaptiveIcon:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    const-string v8, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v9, "singletap_enable,0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/aod/AODManagerService;->writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    :goto_d3
    monitor-exit v0

    return-void

    :catchall_d5
    move-exception v1

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_3 .. :try_end_d7} :catchall_d5

    throw v1
.end method

.method private wakeUpInternal()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    invoke-static {}, Lcom/android/server/aod/AODConfig;->canRegisterAODListener()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_17

    monitor-exit v0

    return-void

    :cond_17
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->onScreenTurningOn()V

    :cond_2e
    goto :goto_1d

    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_31

    throw v1

    :cond_34
    :goto_34
    return-void
.end method

.method private writeAODCommandInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_30

    :cond_16
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_28} :catch_46
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_28} :catch_3c
    .catchall {:try_start_4 .. :try_end_28} :catchall_3a

    nop

    :try_start_29
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_2f

    :catch_2d
    move-exception v1

    goto :goto_50

    :cond_2f
    :goto_2f
    goto :goto_50

    :cond_30
    :goto_30
    if-eqz v0, :cond_38

    :try_start_32
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_38

    :catch_36
    move-exception v2

    goto :goto_39

    :cond_38
    :goto_38
    nop

    :goto_39
    return-void

    :catchall_3a
    move-exception v1

    goto :goto_51

    :catch_3c
    move-exception v1

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    if-eqz v0, :cond_2f

    :try_start_42
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_2d

    goto :goto_2f

    :catch_46
    move-exception v1

    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_3a

    if-eqz v0, :cond_2f

    :try_start_4c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_2d

    goto :goto_2f

    :goto_50
    return-void

    :goto_51
    nop

    if-eqz v0, :cond_5a

    :try_start_54
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_5a

    :catch_58
    move-exception v2

    nop

    :cond_5a
    :goto_5a
    throw v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x258

    if-ne p1, v0, :cond_18

    :try_start_7
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mCoverController:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSCoverController;->register()V

    :cond_10
    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->registerScreenOnListener()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_18
    return-void
.end method

.method public onStart()V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/aod/AODManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_8
    const-string v1, "android.permission.systemui.IDENTITY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_20

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    goto :goto_3d

    :cond_20
    sget-object v3, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SysUI permission android.permission.systemui.IDENTITY defined by non-privileged app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_3d} :catch_3e

    :goto_3d
    goto :goto_3f

    :catch_3e
    move-exception v1

    :goto_3f
    iget v1, p0, Lcom/android/server/aod/AODManagerService;->mSystemUiUid:I

    if-gtz v1, :cond_4a

    sget-object v1, Lcom/android/server/aod/AODManagerService;->TAG:Ljava/lang/String;

    const-string v2, "SysUI package not found!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const-string v1, "AODManagerService"

    new-instance v2, Lcom/android/server/aod/AODManagerService$BinderService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/aod/AODManagerService$BinderService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/aod/AODManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Lcom/samsung/android/aod/AODManagerInternal;

    new-instance v2, Lcom/android/server/aod/AODManagerService$LocalService;

    invoke-direct {v2, p0, v3}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/aod/AODManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    const-string/jumbo v0, "onUserSwitchComplete"

    invoke-direct {p0, v0}, Lcom/android/server/aod/AODManagerService;->addAODTspLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/aod/AODManagerService;->updateSettings()V

    return-void
.end method

.method public updateBatteryStats()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mAODSettingHelper:Lcom/android/server/aod/AODSettingHelper;

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODShowState()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    if-eq v1, v0, :cond_c

    iput-boolean v0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODStartStop:Z

    :cond_c
    return-void
.end method
