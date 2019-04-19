.class public Lcom/android/server/am/SamsungActivityManagerService;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;,
        Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;,
        Lcom/android/server/am/SamsungActivityManagerService$BgHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$UiHandler;,
        Lcom/android/server/am/SamsungActivityManagerService$MainHandler;
    }
.end annotation


# static fields
.field static final ACTION_KDDI_SCREEN_PINNING_CONDITION:Ljava/lang/String; = "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

.field static final ACTION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.action.LOCK_TASK_MODE"

.field private static final CSC_VERSION:Ljava/lang/String;

.field static final DEBUG:Z = true

.field private static final DEBUG_VS:Z

.field private static final INTENT_ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KEEP_PACKAGES:Ljava/lang/String; = "keep_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_KILL_PACKAGES:Ljava/lang/String; = "kill_packages"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_NAME:Ljava/lang/String; = "name"

.field static final KEY_MULTI_RESOLUTION_EXTRA_POLICY_SKIP_SDK_VERSION_CHECK:Ljava/lang/String; = "skip_sdk_version_check"

.field private static final MAX_KEEP_ALIVE_ACTIVITIES:I = 0x2

.field static final META_DATA_DISABLE_SNAPSHOT:Ljava/lang/String; = "com.samsung.android.disableSnapshot"

.field static final META_DATA_EDGE_TSP_DEADZONE:Ljava/lang/String; = "com.samsung.android.edge.tsp.deadzone"

.field static final META_DATA_EDGE_TSP_DEADZONE2:Ljava/lang/String; = "com.samsung.android.edge.tsp.deadzone_v2"

.field static final META_DATA_KEEP_ALIVE:Ljava/lang/String; = "com.samsung.android.keepalive.density"

.field static final META_DATA_PERSISTENT_DOWNLOADABLE:Ljava/lang/String; = "com.samsung.android.persistent.downloadable"

.field static final PERMISSION_LOCK_TASK_MODE:Ljava/lang/String; = "com.samsung.android.permission.LOCK_TASK_MODE"

.field static final PERSISTENT_MASK:I = 0x9

.field private static final PRE_BOOT_CSC_FILE:Ljava/io/File;

.field private static final PRE_BOOT_CSC_FILENAME:Ljava/lang/String; = "pre_boot_csc.dat"

.field static final TAG:Ljava/lang/String; = "SamsungActivityManager"

.field private static final TASKWATCHER_FLAG_CONCERN_FRONT:I = 0x1

.field private static final TASKWATCHER_FLAG_MOVED:I = 0x4

.field private static final TASKWATCHER_FLAG_REMOVED:I = 0x2

.field private static final TASKWATCHER_FLAG_TASK_DESCRIPTION_SET:I = 0x8

.field private static mRelaxedBroadcastActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PENDING_INTENT_RECORD_WATCHER_THRESHOLD_CNT:I

.field final mAllTaskWatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/app/ITaskWatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mBgHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field final mCoreStateController:Lcom/android/server/am/CoreStateController;

.field final mForceKeepAliveProcesses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mForceKillPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceStopReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private mKeepAliveActivities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

.field private mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

.field private final mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mTaskState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskWatchers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/am/TaskRecord;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/app/ITaskWatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUiHandler:Landroid/os/Handler;

.field private mVSClientActivity:Lcom/android/server/am/ActivityRecord;

.field private mVSMode:Z

.field private mVSVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    const-string/jumbo v0, "ril.official_cscver"

    const-string v1, "DUMMY"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "pre_boot_csc.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    sget-boolean v0, Lcom/samsung/android/virtualspace/SemVirtualSpaceManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->PENDING_INTENT_RECORD_WATCHER_THRESHOLD_CNT:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->initRelaxedBroadcastActions()V

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;-><init>(Lcom/android/server/am/SamsungActivityManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    const-string v1, "com.tencent.mm:exdevice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "installPackageLI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "pkg removed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    const-string/jumbo v1, "pkg changed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SamsungActivityManagerService$MainHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;-><init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/CoreStateController;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/CoreStateController;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;-><init>(Lcom/android/server/am/SamsungActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->scheduleLoad()V
    invoke-static {v0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$100(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V

    const-string v0, "SamsungActivityManager"

    const-string v1, "SamsungActivityManagerService :: created"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private clearStackLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, p1, :cond_20

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_20
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    return-void
.end method

.method private getDefaultHomePackageName()Ljava/lang/String;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2

    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method private getProcessDisplay(Lcom/android/server/am/ProcessRecord;)I
    .registers 6

    const/4 v0, -0x1

    if-eqz p1, :cond_27

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    if-eqz v1, :cond_27

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v3

    goto :goto_21

    :cond_20
    move v3, v0

    :goto_21
    if-eq v3, v0, :cond_26

    if-eqz v3, :cond_26

    return v3

    :cond_26
    goto :goto_d

    :cond_27
    return v0
.end method

.method public static getSamsungActivityManagerService(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/SamsungActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    return-object v0
.end method

.method private varargs getTasksWithActivityTypesLocked(I[I)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_33

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    array-length v4, p2

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_30

    aget v6, p2, v5

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v7

    if-ne v6, v7, :cond_2d

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_30

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_33
    return-object v0
.end method

.method private getTopStackWithStandardActivityType(Lcom/android/server/am/ActivityDisplay;Z)Lcom/android/server/am/ActivityStack;
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1f

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz p2, :cond_15

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_1f

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTopTask(I)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_17

    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    return v3

    :cond_17
    const/4 v1, -0x1

    return v1
.end method

.method private initRelaxedBroadcastActions()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_24

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_24

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_24
    return-void
.end method

.method private isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z
    .registers 9

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_1d

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    const-string v6, "com.samsung.android.keepalive.density"

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v5, v4, v6}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$500(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v1, 0x1

    return v1

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1d
    return v1
.end method

.method private setVSVisible(ZZ)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_3d

    :cond_6
    iput-boolean p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->setVSVisible(Z)V

    const-string/jumbo v0, "sys.vs.visible"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v0, :cond_3d

    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VS now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_30

    const-string/jumbo v2, "visible"

    goto :goto_33

    :cond_30
    const-string/jumbo v2, "hidden"

    :goto_33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method private visibilityUpdated()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void
.end method


# virtual methods
.method public addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 6

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    return-void
.end method

.method public addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .registers 9

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3e

    iget-wide v0, p2, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-lez v0, :cond_3e

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/server/am/BroadcastQueue;->addDelayedBrToDropBox(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    :cond_3e
    return-void
.end method

.method public addCustomStartingWindowData(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;
    .registers 7

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    const/4 v1, 0x0

    return-object v1

    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->addCustomStartingWindowData(Landroid/content/ComponentName;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method addPendingIntentRecordLocked(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_4b

    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PendingIntent are generated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void
.end method

.method public addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->access$1000(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    return-void
.end method

.method public bringStackToForeground(III)V
    .registers 14

    if-gez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->isAutoOpenLastAppAllowed()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    move v3, v2

    :goto_17
    move v1, v3

    if-eqz v1, :cond_31

    sget-boolean v3, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v3, :cond_25

    const-string v3, "SamsungActivityManager"

    const-string v4, "bringStackToForeground(), auto_open_last_app is forcibly disabled by Knox Custom SDK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_open_last_app"

    invoke-static {v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_4b

    :cond_31
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_open_last_app"

    invoke-static {v3, v4, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4b

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_4a

    const-string v2, "SamsungActivityManager"

    const-string v3, "bringStackToForeground(), auto_open_last_app is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-void

    :cond_4b
    :goto_4b
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_4e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_114

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v4

    if-eqz v4, :cond_114

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-nez v4, :cond_84

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_7f

    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bringStackToForeground(), stack is empty, stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_4e .. :try_end_80} :catchall_119

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_84
    if-eqz v1, :cond_b2

    :try_start_86
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->stayInForeground(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_b2

    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_ad

    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bringStackToForeground(), stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not whitelisted."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_86 .. :try_end_ae} :catchall_119

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_b2
    :try_start_b2
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_e8

    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bringStackToForeground(), stackId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", stack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", targetDisplayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", targetWindowingMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_fa

    const-string v6, "SamsungActivityManager"

    const-string v7, "bringStackToForeground(): rootActivity is null."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_b2 .. :try_end_f6} :catchall_119

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_fa
    :try_start_fa
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v8

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7, v8, v9, v4, v6}, Lcom/android/server/am/DisplayChooserInfo;->createStartActivityFromRecentsType(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/DisplayChooserInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v8, v7, p2}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksBackAndStartPendingActivity(Lcom/android/server/am/DisplayChooserInfo;I)V

    :cond_114
    monitor-exit v2
    :try_end_115
    .catchall {:try_start_fa .. :try_end_115} :catchall_119

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_119
    move-exception v3

    :try_start_11a
    monitor-exit v2
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method broadcastRecordToStringLocked(Lcom/android/server/am/BroadcastRecord;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method checkScreenDpSizeChanges(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v1, :cond_b

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v1, v2, :cond_15

    :cond_b
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v1, :cond_16

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_16

    :cond_15
    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_f
    const-string v0, "SamsungActivityManager"

    const-string v1, "clearCustomStartingWindowDataForAllUsers, package is null or empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearHomeStack(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_8e

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->getTasksWithActivityTypesLocked(I[I)Ljava/util/ArrayList;

    move-result-object v1

    if-nez p1, :cond_17

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->getDefaultHomePackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearHomeStack(), displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", defaultHomePkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tasks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_5e

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    :cond_5e
    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearHomeStack(), removing task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "SamsungActivityManagerService.clearHomeStack"

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :cond_82
    goto :goto_42

    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_88

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :array_8e
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public clearHomeStackForKnoxKiosk(I)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_8e

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->getTasksWithActivityTypesLocked(I[I)Ljava/util/ArrayList;

    move-result-object v1

    if-nez p1, :cond_17

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->getDefaultHomePackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearHomeStackForKnoxKiosk(), displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", defaultHomePkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tasks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_5e

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    :cond_5e
    const-string v5, "SamsungActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearHomeStackForKnoxKiosk(), removing task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "SamsungActivityManagerService.clearHomeStack"

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :cond_82
    goto :goto_42

    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_88

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :array_8e
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public clearVSDisplay(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_22

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-direct {p0, v3}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;)V

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_22
    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService;->visibilityUpdated()V

    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedHistoryNext:I

    move v3, v2

    :cond_5
    sget v4, Lcom/android/server/am/BroadcastQueue;->MAX_ABORTED_BROADCAST_HISTORY:I

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/am/BroadcastQueue;->mAbortedBroadcastHistory:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-nez v4, :cond_13

    goto :goto_5f

    :cond_13
    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_39

    if-eqz p3, :cond_1c

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1c
    const/4 p3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Aborted Historical broadcasts ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Aborted Historical Broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5f
    if-ne v3, v2, :cond_5

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v4, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedHistoryNext:I

    move v3, v4

    :cond_66
    sget v2, Lcom/android/server/am/BroadcastQueue;->MAX_DELAYED_BROADCAST_HISTORY:I

    invoke-virtual {p1, v3, v5, v2}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v3

    iget-object v2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBroadcastHistory:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-nez v2, :cond_73

    goto :goto_bf

    :cond_73
    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_99

    if-eqz p3, :cond_7c

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_7c
    const/4 p3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Delayed Historical broadcasts ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Delayed Historical Broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_bf
    if-ne v3, v4, :cond_66

    return-void
.end method

.method public dumpLocaleChangedHistoryLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->access$900(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dumpMetaDataLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$700(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    const-string v3, "com.samsung.android.persistent.downloadable"

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v11, v3}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$500(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_35

    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mForceStopReasons:Ljava/util/Set;

    move-object/from16 v13, p9

    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceStopPackageLocked with revised flags for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v1

    move v15, v2

    goto :goto_3b

    :cond_35
    move-object/from16 v13, p9

    :cond_37
    move/from16 v14, p3

    move/from16 v15, p6

    :goto_3b
    iget-object v1, v0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v2, v11

    move/from16 v3, p2

    move v4, v14

    move/from16 v5, p4

    move/from16 v6, p5

    move v7, v15

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v10, v13

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getApplicationToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getExtraPolicyForMultiResolution()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundStackId(I)I
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    if-eqz v2, :cond_24

    const/4 v3, 0x1

    if-nez p1, :cond_18

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/SamsungActivityManagerService;->getTopStackWithStandardActivityType(Lcom/android/server/am/ActivityDisplay;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object v1, v3

    goto :goto_24

    :cond_18
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getFreeformStackCount(Z)I

    move-result v4

    if-lez v4, :cond_24

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object v1, v3

    :cond_24
    :goto_24
    if-nez v1, :cond_28

    const/4 v3, -0x1

    goto :goto_2c

    :cond_28
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    :goto_2c
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_57

    const-string v4, "SamsungActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getForegroundStackId(displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_5c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getProcessDisplayVS(ILjava/lang/String;)I
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v0

    if-eqz p1, :cond_21

    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->getProcessDisplay(Lcom/android/server/am/ProcessRecord;)I

    move-result v3

    move v4, v3

    if-eq v3, v1, :cond_21

    monitor-exit v0

    return v4

    :catchall_1f
    move-exception v1

    goto :goto_7a

    :cond_21
    if-eqz p2, :cond_78

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2d
    if-ltz v2, :cond_78

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_75

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v4, :cond_75

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    sget-boolean v4, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v4, :cond_6c

    const-string v4, "SamsungActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "found matching caller process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    invoke-direct {p0, v3}, Lcom/android/server/am/SamsungActivityManagerService;->getProcessDisplay(Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    move v5, v4

    if-eq v4, v1, :cond_75

    monitor-exit v0

    return v5

    :cond_75
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    :cond_78
    monitor-exit v0

    goto :goto_7c

    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_c .. :try_end_7b} :catchall_1f

    throw v1

    :cond_7c
    :goto_7c
    return v1
.end method

.method public getResumedStackVS()Lcom/android/server/am/ActivityStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$600(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskInfoFromTaskIdLocked(III)Landroid/os/Bundle;
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_5e

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    const-string/jumbo v2, "userId"

    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "taskType"

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "lastTaskDescription"

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "resizeable"

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "displayId"

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_43
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_5e

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5e

    const-string v2, "componentName"

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return-object v0
.end method

.method hasKeepAliveActivitiesLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    goto :goto_6

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mMetaDataCollector:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->access$500(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hideVSStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public inVSMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    return v0
.end method

.method installSystemProviders()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowEnableController;->init(I)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    invoke-virtual {v0}, Lcom/android/server/am/CoreStateController;->init()V

    return-void
.end method

.method public isCscVerChanged()Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "DUMMY"

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "SamsungActivityManager"

    const-string v3, "csc version of property is wrong"

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    const-string v2, "DUMMY"

    :try_start_1a
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v5, 0x400

    invoke-direct {v4, v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_33} :catch_53
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_33} :catch_3d
    .catchall {:try_start_1a .. :try_end_33} :catchall_3b

    move-object v2, v3

    nop

    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    :goto_38
    goto :goto_5a

    :catch_39
    move-exception v3

    goto :goto_38

    :catchall_3b
    move-exception v3

    goto :goto_4b

    :catch_3d
    move-exception v3

    :try_start_3e
    const-string v4, "SamsungActivityManager"

    const-string v5, "Failure reading pre boot csc"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    if-eqz v0, :cond_5a

    :try_start_47
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_39

    goto :goto_38

    :goto_4b
    if-eqz v0, :cond_52

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v4

    :cond_52
    :goto_52
    throw v3

    :catch_53
    move-exception v3

    if-eqz v0, :cond_5a

    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_39

    goto :goto_38

    :cond_5a
    :goto_5a
    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isRelaxedBroadcastAction(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->mRelaxedBroadcastActions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method isTopTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public isTrimApplicaionsScheduled()Z
    .registers 2

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isVSClientStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    iget-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSVisible:Z

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_10

    goto :goto_3f

    :cond_10
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_29

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_29

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v3, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v2

    if-nez v2, :cond_29

    return v0

    :cond_29
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq p1, v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v3, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_3d

    :cond_3c
    goto :goto_3e

    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    :goto_3e
    return v0

    :cond_3f
    :goto_3f
    return v0
.end method

.method killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
    .registers 33

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_46

    const/4 v8, 0x1

    :try_start_1e
    const-string/jumbo v11, "name"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "kill_packages"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    move-object v0, v12

    const-string/jumbo v12, "keep_packages"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    move-object v7, v12

    const-string/jumbo v12, "skip_sdk_version_check"

    invoke-virtual {v4, v12, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_42

    move v9, v12

    goto :goto_49

    :catchall_42
    move-exception v0

    move-wide v4, v5

    goto/16 :goto_1a0

    :cond_46
    :try_start_46
    const-string/jumbo v11, "multi-resolution"

    :goto_49
    move-object v12, v7

    move-object v7, v0

    iget-object v13, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_19e

    :try_start_4e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_193

    move v15, v10

    :goto_63
    if-ge v15, v14, :cond_14a

    :try_start_65
    iget-object v10, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v16

    move/from16 v17, v16

    const/16 v16, 0x0

    :goto_7b
    move/from16 v18, v16

    move/from16 v19, v14

    move/from16 v4, v17

    move/from16 v14, v18

    if-ge v14, v4, :cond_13a

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v20, v16

    move/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v4, v20

    iget v10, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I
    :try_end_95
    .catchall {:try_start_65 .. :try_end_95} :catchall_147

    move-wide/from16 v23, v5

    const/16 v5, 0x13

    if-ne v10, v5, :cond_9d

    goto/16 :goto_12a

    :cond_9d
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move/from16 v25, v5

    :try_start_a2
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v26, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_ac

    const/4 v5, 0x1

    move/from16 v25, v5

    :cond_ac
    iget-object v5, v1, Lcom/android/server/am/SamsungActivityManagerService;->mForceKillPackages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v27, v5

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    const/16 v25, 0x1

    goto :goto_d1

    :cond_cd
    nop

    move-object/from16 v5, v27

    goto :goto_b2

    :cond_d1
    :goto_d1
    if-eqz v8, :cond_ec

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_e3

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    const/4 v6, 0x1

    move/from16 v26, v6

    goto :goto_ec

    :cond_e3
    if-eqz v12, :cond_ec

    invoke-virtual {v12, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ec

    const/4 v10, 0x1

    :cond_ec
    :goto_ec
    iget-object v5, v1, Lcom/android/server/am/SamsungActivityManagerService;->mForceKeepAliveProcesses:Ljava/util/Set;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {v1, v4}, Lcom/android/server/am/SamsungActivityManagerService;->isKeepAlive(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    or-int/2addr v5, v6

    iget-boolean v6, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v6, :cond_101

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12a

    :cond_101
    if-nez v5, :cond_12a

    if-nez v10, :cond_12a

    if-nez v9, :cond_10f

    if-ltz v2, :cond_10f

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v6, v2, :cond_12a

    :cond_10f
    if-ltz v3, :cond_124

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-gt v6, v3, :cond_124

    if-nez v25, :cond_124

    if-nez v26, :cond_124

    const-string/jumbo v6, "force-keep-alive"

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    :cond_124
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12a
    .catchall {:try_start_a2 .. :try_end_12a} :catchall_17c

    :cond_12a
    :goto_12a
    add-int/lit8 v16, v14, 0x1

    move/from16 v14, v19

    move/from16 v17, v21

    move-object/from16 v10, v22

    move-wide/from16 v5, v23

    move/from16 v2, p1

    move-object/from16 v4, p3

    goto/16 :goto_7b

    :cond_13a
    move-wide/from16 v23, v5

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v19

    move/from16 v2, p1

    move-object/from16 v4, p3

    const/4 v10, 0x0

    goto/16 :goto_63

    :catchall_147
    move-exception v0

    move-wide v4, v5

    goto :goto_195

    :cond_14a
    move-wide/from16 v23, v5

    move/from16 v19, v14

    :try_start_14e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_152
    .catchall {:try_start_14e .. :try_end_152} :catchall_18f

    const/4 v4, 0x0

    :goto_153
    if-ge v4, v2, :cond_180

    :try_start_155
    iget-object v5, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "kill all background except(policy="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v5, v6, v14, v15, v10}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_179
    .catchall {:try_start_155 .. :try_end_179} :catchall_17c

    add-int/lit8 v4, v4, 0x1

    goto :goto_153

    :catchall_17c
    move-exception v0

    move-wide/from16 v4, v23

    goto :goto_195

    :cond_180
    :try_start_180
    monitor-exit v13
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_18f

    :try_start_181
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_18b

    move-wide/from16 v4, v23

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18b
    move-exception v0

    move-wide/from16 v4, v23

    goto :goto_1a0

    :catchall_18f
    move-exception v0

    move-wide/from16 v4, v23

    goto :goto_195

    :catchall_193
    move-exception v0

    move-wide v4, v5

    :goto_195
    :try_start_195
    monitor-exit v13
    :try_end_196
    .catchall {:try_start_195 .. :try_end_196} :catchall_19c

    :try_start_196
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_19a
    .catchall {:try_start_196 .. :try_end_19a} :catchall_19a

    :catchall_19a
    move-exception v0

    goto :goto_1a0

    :catchall_19c
    move-exception v0

    goto :goto_195

    :catchall_19e
    move-exception v0

    move-wide v4, v5

    :goto_1a0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: killAllBackgroundProcessesExcept() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.KILL_BACKGROUND_PROCESSES"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SamsungActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public logIllegalArgumentExceptionLocked(Landroid/os/IBinder;)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_51

    const-string v1, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTopOfTask failed: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " app="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_46

    :cond_44
    const-string v4, ""

    :goto_46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_51
    move-exception v2

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v2
.end method

.method moveTaskToBackLocked(IZLandroid/os/Bundle;)Z
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    return v1

    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_53

    if-eqz p2, :cond_50

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_39

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    :cond_39
    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max count exceeded! Cannot set keepAlive for taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_50
    invoke-virtual {p0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_53
    :goto_53
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_63

    :cond_62
    nop

    :goto_63
    return v1

    :cond_64
    return v1
.end method

.method public moveTaskToBackVS(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_19

    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p2, :cond_19

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->clearStackLocked(Lcom/android/server/am/ActivityStack;)V

    return v1

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewProcessRecord(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v1, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_29

    const-string v1, "com.android.systemui"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v1, :cond_29

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x9

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_29

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    const/16 v1, -0x320

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    :cond_29
    return-void
.end method

.method public notifyTaskDescriptionSetLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_38

    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyTaskDescriptionSetLocked: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    return-void
.end method

.method public notifyTaskMovedLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_38

    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyTaskMoved: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    return-void
.end method

.method public notifyTaskRemovedLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_18

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_18
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v1, :cond_3d

    const-string v1, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyTaskRemoved: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    invoke-virtual {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->isTopTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x3

    goto :goto_46

    :cond_45
    const/4 v1, 0x2

    :goto_46
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    return-void
.end method

.method public notifyTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->isTopTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    xor-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_21

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-nez v2, :cond_21

    return-void

    :cond_21
    if-eqz v0, :cond_55

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v2, :cond_50

    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyTaskToFront: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTaskToFront="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/SamsungActivityManagerService;->sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_82

    :cond_55
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v2, :cond_82

    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyTaskToFront: [no change] taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTaskToFront="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    return-void
.end method

.method public onLockTaskModeChanged(I)V
    .registers 7

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_SupportBroadcastScreenPinning"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kddi.agent.action.SCREEN_PINNING_CONDITION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_25
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "enable"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.permission.LOCK_TASK_MODE"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V
    .registers 10

    const-string v0, ", [disp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, ", fin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    invoke-static {v0, v1, p4, p5, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, ", dur="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v0, v0, p3

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v2, v2, p3

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_39

    :cond_34
    const-string v0, "--"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_39
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 24

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v0, 0x3e8

    if-eq v12, v0, :cond_49

    const/16 v0, 0x3e9

    if-eq v12, v0, :cond_49

    const/16 v0, 0x7d0

    if-eq v12, v0, :cond_49

    const/16 v0, 0x3ea

    if-eq v12, v0, :cond_49

    const/16 v0, 0x403

    if-eq v12, v0, :cond_49

    if-nez v11, :cond_25

    goto :goto_49

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: not allowed to query registered receiver packages from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SamsungActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_49
    :goto_49
    const/4 v0, 0x0

    new-array v13, v0, [Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_4f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_e0

    move-object/from16 v3, p1

    :try_start_56
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_de

    move-object v15, v2

    :try_start_5b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_d8

    move-wide v8, v2

    :try_start_60
    iget-object v2, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x1

    iget-object v3, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const-string/jumbo v16, "queryRegisteredReceiverPackages"
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_ce

    const/16 v17, 0x0

    move v3, v10

    move v4, v11

    move/from16 v5, p3

    move-wide/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    :try_start_77
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_c6

    :try_start_7b
    iget-object v3, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_c0

    move-object/from16 v4, p2

    :try_start_81
    invoke-virtual {v3, v15, v4, v0, v2}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v3
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_be

    if-eqz v3, :cond_b3

    :try_start_87
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    nop

    :goto_8d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_a1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastFilter;

    iget-object v7, v6, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :cond_a1
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_ad
    .catchall {:try_start_87 .. :try_end_ad} :catchall_af

    move-object v13, v0

    goto :goto_b3

    :catchall_af
    move-exception v0

    move-wide/from16 v5, v18

    goto :goto_d4

    :cond_b3
    :goto_b3
    move-wide/from16 v5, v18

    :try_start_b5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v14
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_ed

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v13

    :catchall_be
    move-exception v0

    goto :goto_c3

    :catchall_c0
    move-exception v0

    move-object/from16 v4, p2

    :goto_c3
    move-wide/from16 v5, v18

    goto :goto_cd

    :catchall_c6
    move-exception v0

    move-object/from16 v4, p2

    move-wide/from16 v5, v18

    move/from16 v2, p3

    :goto_cd
    goto :goto_d4

    :catchall_ce
    move-exception v0

    move-object/from16 v4, p2

    move-wide v5, v8

    move/from16 v2, p3

    :goto_d4
    :try_start_d4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_d8
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v2, p3

    goto :goto_e8

    :catchall_de
    move-exception v0

    goto :goto_e3

    :catchall_e0
    move-exception v0

    move-object/from16 v3, p1

    :goto_e3
    move-object/from16 v4, p2

    move/from16 v2, p3

    move-object v15, v3

    :goto_e8
    monitor-exit v14
    :try_end_e9
    .catchall {:try_start_d4 .. :try_end_e9} :catchall_ed

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_ed
    move-exception v0

    goto :goto_e8
.end method

.method registerAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_7
    return-void
.end method

.method public registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
    .registers 10

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_45

    const-string v0, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerTaskWatcher: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v1, :cond_17

    const-string v3, "ALL"

    goto :goto_1b

    :cond_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", watcher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " allowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    if-eqz p5, :cond_67

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_4a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-ne p1, v1, :cond_53

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->registerAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V

    goto :goto_5c

    :cond_53
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/SamsungActivityManagerService;->registerTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V

    :cond_5c
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_67
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot registerTaskWatcher from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_15

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method removeAllRecentTasksLocked(I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_32

    if-nez v1, :cond_19

    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_19

    goto :goto_2f

    :cond_19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/SamsungActivityManagerService;->removeTaskByIdIfNeededLocked(Lcom/android/server/am/TaskRecord;I)V

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_32
    return v2
.end method

.method removePendingIntentRecordLocked(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_18
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mPendingIntentRecordSizeByPkg:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    return-void
.end method

.method removeTaskByIdIfNeededLocked(Lcom/android/server/am/TaskRecord;I)V
    .registers 8

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq v0, v1, :cond_2d

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->getProfileIds(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    and-int/lit8 v2, p2, 0x10

    const/4 v3, 0x1

    if-nez v2, :cond_38

    move v2, v3

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    const-string/jumbo v4, "sem-remove-id-task"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    return-void
.end method

.method public removeTaskLocked(II)Z
    .registers 7

    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_2f

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_9

    goto :goto_2f

    :cond_9
    and-int/lit8 v0, p2, 0x10

    const/4 v1, 0x1

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v3, "sem-remove-task"

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_24

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_23
    return v1

    :catchall_24
    move-exception v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :cond_2e
    throw v0

    :cond_2f
    :goto_2f
    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->removeAllRecentTasksLocked(I)Z

    move-result v0

    return v0
.end method

.method resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetUpdateConfigurationCallerLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->setCallerLocked(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->access$800(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/lang/String;)V

    return-void
.end method

.method public resumedActivityVS(Lcom/android/server/am/ActivityRecord;)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_79

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v0, :cond_27

    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumedActivityVS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/SamsungActivityManagerService;->setVSVisible(ZZ)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_33
    if-ltz v0, :cond_6e

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_52
    if-ltz v4, :cond_6b

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_68

    iget-object v6, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_68

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_68

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :cond_68
    add-int/lit8 v4, v4, -0x1

    goto :goto_52

    :cond_6b
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    :cond_6e
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/SamsungWindowManagerService;->setFocusedDisplay(IZ)Z

    :cond_79
    return-void
.end method

.method public scheduleTrimApplicaions(Z)V
    .registers 4

    sget-object v0, Lcom/android/server/am/SamsungActivityManagerService;->sTrimApplicationsScheduled:Ljava/lang/ThreadLocal;

    if-eqz p1, :cond_7

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method sendTaskCallbacksLocked(Lcom/android/server/am/TaskRecord;I)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v1

    :goto_1c
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_22

    move v5, v2

    goto :goto_23

    :cond_22
    move v5, v1

    :goto_23
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_29

    move v6, v2

    goto :goto_2a

    :cond_29
    move v6, v1

    :goto_2a
    and-int/lit8 v7, p2, 0x8

    if-eqz v7, :cond_30

    move v1, v2

    nop

    :cond_30
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_13f

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_3e
    if-lez v2, :cond_13a

    add-int/lit8 v2, v2, -0x1

    :try_start_42
    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/ITaskWatcher;

    if-eqz v1, :cond_79

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_74

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskDescriptionSet for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskDescriptionSet(I)V

    :cond_79
    if-eqz v4, :cond_d8

    if-eqz v3, :cond_ab

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_a5

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskToFront for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToFront(I)V

    goto :goto_d8

    :cond_ab
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_d3

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskToBack for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToBack(I)V

    :cond_d8
    :goto_d8
    if-eqz v5, :cond_107

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_102

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskRemoved for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskRemoved(I)V

    :cond_107
    if-eqz v6, :cond_138

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_131

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All Sending onTaskMoved for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_131
    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/app/ITaskWatcher;->onTaskMoved(I)V
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_136} :catch_137

    goto :goto_138

    :catch_137
    move-exception v7

    :cond_138
    :goto_138
    goto/16 :goto_3e

    :cond_13a
    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_13f
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_14a

    return-void

    :cond_14a
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    :goto_14e
    if-lez v7, :cond_248

    add-int/lit8 v7, v7, -0x1

    :try_start_152
    invoke-virtual {v2, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/ITaskWatcher;

    if-eqz v1, :cond_187

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_182

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskDescriptionSet for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_182
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskDescriptionSet(I)V

    :cond_187
    if-eqz v4, :cond_1e6

    if-eqz v3, :cond_1b9

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_1b3

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskToFront for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b3
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToFront(I)V

    goto :goto_1e6

    :cond_1b9
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_1e1

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskToBack for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e1
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskToBack(I)V

    :cond_1e6
    :goto_1e6
    if-eqz v5, :cond_215

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_210

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending onTaskRemoved for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_210
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskRemoved(I)V

    :cond_215
    if-eqz v6, :cond_246

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v9, :cond_23f

    const-string v9, "SamsungActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "All Sending onTaskMoved for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/samsung/android/app/ITaskWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23f
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9}, Lcom/samsung/android/app/ITaskWatcher;->onTaskMoved(I)V
    :try_end_244
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_244} :catch_245

    goto :goto_246

    :catch_245
    move-exception v8

    :cond_246
    :goto_246
    goto/16 :goto_14e

    :cond_248
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-eqz v5, :cond_27b

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    if-eqz v8, :cond_26e

    const-string v8, "SamsungActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Watched task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has been removed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26e
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v8, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskState:Ljava/util/WeakHashMap;

    invoke-virtual {v8, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27b
    return-void
.end method

.method public setImageForCustomStartingWindow(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z
    .registers 14

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-interface {v3, p1, v4, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_68

    move-object v1, v3

    nop

    if-eqz v1, :cond_4c

    :try_start_11
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p3, :cond_20

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    nop

    :cond_20
    move-object v7, v0

    move v6, p2

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/SamsungWindowManagerService;->setImageForCustomStartingWindow(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z

    move-result v0

    if-eqz p3, :cond_2c

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2c} :catch_2d

    :cond_2c
    return v0

    :catch_2d
    move-exception v0

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v3, :cond_49

    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setImageForCustomStartingWindow, failed to set customImageForPackage by IOException, component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4c
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_67

    const-string v0, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setImageForCustomStartingWindow, activityInfo is null, component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return v2

    :catch_68
    move-exception v0

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v3, :cond_84

    const-string v3, "SamsungActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setImageForCustomStartingWindow, failed to get activityInfo, component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    return v2
.end method

.method public setSupportsPictureInPicture(Z)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-nez v2, :cond_2f

    sget-boolean v2, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v2, :cond_2b

    const-string v2, "SamsungActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting setSupportsPictureInPicture to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setUpdateConfigurationCallerLocked(I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    move-object v0, v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_23

    const/4 v2, 0x0

    goto :goto_25

    :cond_23
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mLocaleChangedHistory:Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;

    # invokes: Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->setCallerLocked(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;->access$800(Lcom/android/server/am/SamsungActivityManagerService$LocaleChangedHistory;Ljava/lang/String;)V

    return-void

    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public setVSMode(ZLandroid/os/IBinder;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v0, :cond_1b

    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVSMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_1e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iput-boolean p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz p1, :cond_2a

    invoke-static {p2}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    iput-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/SamsungActivityManagerService;->setVSVisible(ZZ)V

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setWindowManager(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    return-void
.end method

.method public startPausingVS(Lcom/android/server/am/ActivityRecord;ZZLcom/android/server/am/ActivityRecord;Z)V
    .registers 15

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_81

    sget-boolean v0, Lcom/android/server/am/SamsungActivityManagerService;->DEBUG_VS:Z

    if-eqz v0, :cond_23

    const-string v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPausingVS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->setVSVisible(ZZ)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_35
    if-ltz v1, :cond_81

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->isVSScreen(I)Z

    move-result v3

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_55
    if-ltz v4, :cond_7e

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_7b

    iget-object v6, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_7b

    if-ne v0, v5, :cond_78

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSClientActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_78

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    :cond_78
    invoke-virtual {v5, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    :cond_7b
    add-int/lit8 v4, v4, -0x1

    goto :goto_55

    :cond_7e
    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    :cond_81
    return-void
.end method

.method startUser(IZZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/server/am/MultiWindowEnableController;->startUserLocked(IZ)V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/CoreStateController;->startUserLocked(IZZ)V

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method stopUserLocked(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/MultiWindowEnableController;->stopUserLocked(IZ)V

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/CoreStateController;->stopUserLocked(IZ)V

    return-void
.end method

.method unregisterAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mAllTaskWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_7
    return-void
.end method

.method public unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
    .registers 10

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKWATCHER:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_45

    const-string v0, "SamsungActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterTaskWatcher: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v1, :cond_17

    const-string v3, "ALL"

    goto :goto_1b

    :cond_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", watcher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callingUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " allowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    if-eqz p5, :cond_67

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_4a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-ne p1, v1, :cond_53

    invoke-virtual {p0, p2}, Lcom/android/server/am/SamsungActivityManagerService;->unregisterAllTaskWatcherLocked(Lcom/samsung/android/app/ITaskWatcher;)V

    goto :goto_5c

    :cond_53
    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService;->anyExistingTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/SamsungActivityManagerService;->unregisterTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V

    :cond_5c
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_67
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unregisterTaskWatcher from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unregisterTaskWatcherLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/app/ITaskWatcher;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mTaskWatchers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_20
    if-ltz v0, :cond_32

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_2f

    invoke-virtual {p0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_32
    return-void
.end method

.method public updateOomAdj()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updatePreBootCscFile()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x400

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    sget-object v2, Lcom/android/server/am/SamsungActivityManagerService;->CSC_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_2b
    .catchall {:try_start_2 .. :try_end_1c} :catchall_29

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    nop

    :try_start_20
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    :goto_23
    goto :goto_41

    :catch_24
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    :catchall_29
    move-exception v2

    goto :goto_42

    :catch_2b
    move-exception v2

    :try_start_2c
    const-string v3, "SamsungActivityManager"

    const-string v4, "Failure writing last done pre-boot receivers"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/android/server/am/SamsungActivityManagerService;->PRE_BOOT_CSC_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_29

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    if-eqz v1, :cond_41

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_24

    goto :goto_23

    :cond_41
    :goto_41
    return-void

    :goto_42
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    if-eqz v1, :cond_4f

    :try_start_47
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_4f
    :goto_4f
    throw v2
.end method

.method public updatedTopTaskVS(Lcom/android/server/am/ActivityStack;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService;->mVSMode:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/am/SamsungActivityManagerService;->getTopTask(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/SamsungWindowManagerService;->notifyUpdatedDisplayTopTask(II)V

    return-void
.end method
