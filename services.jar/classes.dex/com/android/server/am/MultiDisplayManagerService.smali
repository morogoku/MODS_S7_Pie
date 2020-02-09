.class public Lcom/android/server/am/MultiDisplayManagerService;
.super Lcom/samsung/android/multidisplay/IMultiDisplayManager$Stub;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;,
        Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;,
        Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;,
        Lcom/android/server/am/MultiDisplayManagerService$H;,
        Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;,
        Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;,
        Lcom/android/server/am/MultiDisplayManagerService$UiHandler;
    }
.end annotation


# static fields
.field private static final KILL_PROCESS_REASON_DEX_DISPLAY_DISABLED:Ljava/lang/String; = "proc_dex_display_disabled"

.field private static final KILL_PROCESS_REASON_DISPLAY_CHANGED:Ljava/lang/String; = "proc_display_changed"

.field public static final METADATA_MULTI_DISPLAY_DO_NOT_SHOW_DISPLAYCHOOSER:Ljava/lang/String; = "com.samsung.android.multidisplay.do_not_show_displaychooser"

.field public static final METADATA_MULTI_DISPLAY_KEEP_PROCESS_ALIVE:Ljava/lang/String; = "com.samsung.android.multidisplay.keep_process_alive"

.field public static final METADATA_MULTI_DISPLAY_PRIMARY_DISPLAY:Ljava/lang/String; = "com.samsung.android.multidisplay.primarydisplay"

.field public static final SAFE_DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MultiDisplayManager"

.field private static final WAIT_ACTIVITY_STOPPED_TIMEOUT:J = 0x1388L

.field private static final WAIT_TRANSITION_FINISH_TIMEOUT:J = 0xfa0L


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multidisplay/IMultiDisplayCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserDialogShowRequested:Z

.field private final mContext:Landroid/content/Context;

.field final mDexCompatController:Lcom/android/server/am/DexCompatController;

.field private mDexDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mDexDisplayActivated:Z

.field private final mDexDisplaySize:Landroid/graphics/Point;

.field final mDexPrimaryProcessList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDisplayCompatController:Lcom/android/server/am/DisplayCompatController;

.field final mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private final mH:Lcom/android/server/am/MultiDisplayManagerService$H;

.field private mInStartResult:Z

.field mInterceptor:Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

.field private mIsDoNotShowAgainChecked:Z

.field final mKeepAliveProcessList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDexMode:I

.field private mLastLidOpend:Z

.field private mLastNonResizableTopTaskId:I

.field private mLastReportedDexDisplayEnabled:Z

.field private mLastReportedDisplayCompatMode:Z

.field private final mLockTaskController:Lcom/android/server/am/LockTaskController;

.field mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

.field private final mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

.field private mRequstedDexDisplayEnabled:Z

.field mService:Lcom/android/server/am/ActivityManagerService;

.field private mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

.field final mShellCommand:Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mUiContext:Landroid/content/Context;

.field private final mUiHandler:Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field mWinnerPocSubDisplayMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/multidisplay/IMultiDisplayManager$Stub;-><init>()V

    new-instance v0, Lcom/android/server/am/MultiDisplayManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiDisplayManagerService$H;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastLidOpend:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDisplayCompatMode:Z

    iput v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mWinnerPocSubDisplayMode:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mInStartResult:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mChooserDialogShowRequested:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mIsDoNotShowAgainChecked:Z

    new-instance v2, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiHandler:Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

    new-instance v2, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDexDisplayEnabled:Z

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastNonResizableTopTaskId:I

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mInterceptor:Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLockTaskController:Lcom/android/server/am/LockTaskController;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/DexCompatController;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/DexCompatController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    new-instance v0, Lcom/android/server/am/DisplayCompatController;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/DisplayCompatController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatController:Lcom/android/server/am/DisplayCompatController;

    new-instance v0, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mShellCommand:Lcom/android/server/am/MultiDisplayManagerService$MultiDisplayShellCommand;

    return-void
.end method

.method private NotifyUpdateRestartButtonLocked(IZZ)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v1, "MultiDisplayManager"

    const-string v2, "NotifyUpdateRestartButtonLocked: StatusBarManagerInternal is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotifyUpdateRestartButtonLocked: tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isDisplayCompatTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->updateRestartButton(IZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/hardware/display/VirtualDisplay;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$H;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/ActivityStackSupervisor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiDisplayManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V

    return-void
.end method

.method private activateDexDisplayLocked(Z)Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-eq v0, p1, :cond_3f

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateDexDisplayLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->loadResources()V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->activateDexDisplayLocked(Z)V

    if-eqz p1, :cond_3d

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_3d
    const/4 v0, 0x1

    return v0

    :cond_3f
    const/4 v0, 0x0

    return v0
.end method

.method private allActivitiesStoppedAndInvisibleLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    goto :goto_6

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method private collectFullscreenFreeformTasksLocked(I)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    goto :goto_25

    :cond_3f
    goto :goto_11

    :cond_40
    return-object v0
.end method

.method private displayIdFromPrimaryMetaDataLocked(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_18

    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDefaultDisplay(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->isPrimaryDesktopDisplay(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-eqz v1, :cond_17

    const/4 v0, 0x2

    nop

    :cond_17
    return v0

    :cond_18
    return v0
.end method

.method private getActivityWaitingToRun(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 13

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_a
    const/4 v3, 0x0

    if-ltz v2, :cond_6c

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    :goto_19
    if-ltz v6, :cond_69

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v8

    if-nez v8, :cond_26

    goto :goto_66

    :cond_26
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_66

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v9, :cond_66

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, v10, :cond_66

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_66

    sget-boolean v3, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_65

    const-string v3, "MultiDisplayManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getActivityWaitingToRun: r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", app="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-object v8

    :cond_66
    :goto_66
    add-int/lit8 v6, v6, -0x1

    goto :goto_19

    :cond_69
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_6c
    return-object v3
.end method

.method private getDexDisplayStateLocked()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private getPackageProcesses([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_33

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_30

    aget-object v5, p1, v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_30
    :goto_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_33
    return-object v0
.end method

.method private hasVisibleTaskLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;II)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->keepProcessAlive:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v1

    if-eq v1, p4, :cond_19

    move v0, v2

    nop

    :cond_19
    return v0

    :cond_1a
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0, p3, v2, p4}, Lcom/android/server/am/MultiDisplayManagerService;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method static isDefaultOrDexDisplay(I)Z
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_8
    :goto_8
    const/4 v0, 0x1

    return v0
.end method

.method private isExcludedTaskOrNonRecentTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 5

    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    return v0

    :cond_16
    :goto_16
    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isExcludedTaskOrNonRecentTask(), Task ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v0, 0x1

    return v0
.end method

.method public static isPrimaryDefaultDisplay(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPrimaryDesktopDisplay(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "desktop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isStoppedLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 6

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v2, :cond_3b

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_39

    const-string v0, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not stopped completely "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    const/4 v0, 0x0

    return v0

    :cond_3b
    goto :goto_6

    :cond_3c
    const/4 v0, 0x1

    return v0
.end method

.method private killAllProcessInDexDisplayLocked(Ljava/lang/String;)V
    .registers 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    const/4 v4, 0x2

    if-ge v3, v1, :cond_47

    iget-object v5, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v2

    :goto_29
    if-ge v7, v6, :cond_44

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v9, v10, :cond_38

    goto :goto_41

    :cond_38
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v9

    if-ne v9, v4, :cond_41

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    :goto_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v3}, Lcom/android/server/am/MultiDisplayManagerService;->allActivitiesStoppedAndInvisibleLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v6, :cond_7e

    const-string v6, "MultiDisplayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "killAllProcessInDexDisplayLocked: allStoppedAndInvisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    if-eqz v5, :cond_83

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)Z

    :cond_83
    goto :goto_4b

    :cond_84
    return-void
.end method

.method public static synthetic lambda$checkDexLaunchPolicyLocked$1(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$checkDexLaunchPolicyLocked$2(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$updateDexModeIfNeededLocked$0(Lcom/android/server/am/MultiDisplayManagerService;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->updateDesktopModeSettings(Landroid/net/Uri;)V

    return-void
.end method

.method private moveProcessTasksToBackLocked(Ljava/lang/String;II)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/MultiDisplayManagerService;->getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    const-string/jumbo v3, "moveProcessTasksToBackLocked"

    # invokes: Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->execute(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;->access$800(Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;Ljava/lang/String;)V

    goto :goto_9

    :cond_1c
    return-void
.end method

.method private moveTasksToFreeformLocked(II)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_32

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTasksToFreeformLocked: no source d#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_121

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :cond_32
    const/4 v4, 0x2

    if-ne v3, v4, :cond_47

    :try_start_35
    iget-boolean v5, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-nez v5, :cond_47

    const-string v4, "MultiDisplayManager"

    const-string/jumbo v5, "moveTasksToFreeformLocked: no dex dual mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_121

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :cond_47
    const/4 v5, 0x1

    :try_start_48
    invoke-virtual {v0, v5, v5}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_51
    if-ltz v7, :cond_f4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v10, :cond_78

    const-string v10, "MultiDisplayManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "moveTasksToFreeformLocked: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    :goto_7d
    if-ltz v10, :cond_ef

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    sget-boolean v12, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v12, :cond_bb

    const-string v12, "MultiDisplayManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "moveTasksToFreeformLocked: task="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "MultiDisplayManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "moveTasksToFreeformLocked: prev overrideConfig="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v12

    if-nez v12, :cond_c2

    goto :goto_eb

    :cond_c2
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_cf

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v13

    if-nez v13, :cond_cf

    goto :goto_eb

    :cond_cf
    invoke-direct {v1, v11}, Lcom/android/server/am/MultiDisplayManagerService;->isExcludedTaskOrNonRecentTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v13

    if-nez v13, :cond_e0

    invoke-virtual {v1, v11}, Lcom/android/server/am/MultiDisplayManagerService;->getNonStartableActivityInDexMode(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_dc

    goto :goto_e0

    :cond_dc
    invoke-direct {v1, v11, v3}, Lcom/android/server/am/MultiDisplayManagerService;->updateTaskStatus(Lcom/android/server/am/TaskRecord;I)V

    goto :goto_eb

    :cond_e0
    :goto_e0
    iget-object v13, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v14, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v15, 0x0

    const-string/jumbo v4, "moveTasksToFreeformLocked"

    invoke-virtual {v13, v14, v15, v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    :goto_eb
    add-int/lit8 v10, v10, -0x1

    const/4 v4, 0x2

    goto :goto_7d

    :cond_ef
    add-int/lit8 v7, v7, -0x1

    const/4 v4, 0x2

    goto/16 :goto_51

    :cond_f4
    nop

    invoke-direct {v1, v3}, Lcom/android/server/am/MultiDisplayManagerService;->collectFullscreenFreeformTasksLocked(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    iget-object v8, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    goto :goto_fd

    :cond_10f
    const/4 v5, 0x2

    if-ne v3, v5, :cond_11a

    iget-object v5, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v7, "moveTasksToFreeformLocked"

    invoke-virtual {v5, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;I)Z
    :try_end_11a
    .catchall {:try_start_48 .. :try_end_11a} :catchall_121

    :cond_11a
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_121
    move-exception v0

    iget-object v4, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private moveTasksToFullscreenLocked(II)V
    .registers 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTasksToFullscreenLocked: no display #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_11e

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :cond_30
    nop

    :try_start_31
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/MultiDisplayManagerService;->collectFullscreenFreeformTasksLocked(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_40
    if-ltz v6, :cond_101

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v9, :cond_67

    const-string v9, "MultiDisplayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "moveTasksToFullscreenLocked: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_6c
    if-ltz v9, :cond_fd

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    sget-boolean v11, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v11, :cond_aa

    const-string v11, "MultiDisplayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "moveTasksToFullscreenLocked: task="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "MultiDisplayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "moveTasksToFullscreenLocked: prev overrideConfig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v11

    move-object v15, v11

    move/from16 v14, p2

    invoke-virtual {v15, v14}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v15, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15, v11}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    iget-object v11, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    const/16 v17, 0x0

    move-object v12, v10

    move-object/from16 v14, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    sget-boolean v11, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v11, :cond_f9

    const-string v11, "MultiDisplayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "moveTasksToFullscreenLocked: new overrideConfig="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_6c

    :cond_fd
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_40

    :cond_101
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_105
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_117

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V
    :try_end_116
    .catchall {:try_start_31 .. :try_end_116} :catchall_11e

    goto :goto_105

    :cond_117
    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_11e
    move-exception v0

    iget-object v3, v1, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private reparentToDisplayAndStartPendingActivity(Z)V
    .registers 6

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentToDisplayAndStartPendingActivity: immediately="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->removeMessages(I)V

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3c

    :cond_2f
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_3c
    return-void
.end method

.method private setRequestedDexDisplayEnabledLocked(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    if-eq v0, p1, :cond_1d

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequestedDexDisplayEnbaledLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method private updateTaskStatus(Lcom/android/server/am/TaskRecord;I)V
    .registers 11

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v0

    if-eq v0, p2, :cond_30

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_28

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTaskStatus: no display #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityStack;->reparent(Lcom/android/server/am/ActivityDisplay;Z)V

    :cond_30
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_58

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :cond_58
    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_77

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTaskStatus: new overrideConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    return-void
.end method

.method private validDisplay(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method activityStoppedLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityStoppedLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->isStoppedLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->removeWaitingStoppedTask(Lcom/android/server/am/TaskRecord;)V

    :cond_34
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v2}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isTransitionFinished()Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "MultiDisplayManager"

    const-string/jumbo v3, "reparentToDisplayAndStartPendingActivity from activityStopped"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V

    :cond_4f
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x2

    if-eqz v0, :cond_5d

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v0

    if-ne v0, v2, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    move v0, v1

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-nez v1, :cond_75

    if-eqz v0, :cond_75

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->allActivitiesStoppedAndInvisibleLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v3, "proc_dex_display_disabled"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)Z

    :cond_75
    return-void
.end method

.method checkDexLaunchPolicyLocked(Landroid/content/pm/ActivityInfo;)Z
    .registers 16

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_89

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v2

    and-int/lit8 v3, v2, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    move v3, v4

    goto :goto_19

    :cond_18
    move v3, v1

    :goto_19
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_1f

    move v5, v4

    goto :goto_20

    :cond_1f
    move v5, v1

    :goto_20
    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_26

    move v6, v4

    goto :goto_27

    :cond_26
    move v6, v1

    :goto_27
    const v7, 0x8000

    and-int/2addr v7, v2

    if-eqz v7, :cond_2f

    move v7, v4

    goto :goto_30

    :cond_2f
    move v7, v1

    :goto_30
    iget-object v8, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-nez v3, :cond_53

    if-nez v5, :cond_53

    if-eqz v6, :cond_3f

    goto :goto_53

    :cond_3f
    if-eqz v7, :cond_89

    const v4, 0x10405e6

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    new-instance v10, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$tnjd3oHUJf2pG352Rd8YSSlnlas;

    invoke-direct {v10, p0, v4}, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$tnjd3oHUJf2pG352Rd8YSSlnlas;-><init>(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/server/am/MultiDisplayManagerService$H;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_53
    :goto_53
    iget-object v9, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_66

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_68

    :cond_66
    const-string v10, ""

    :goto_68
    const v11, 0x10405e1

    if-eqz v5, :cond_71

    const v11, 0x10405e5

    goto :goto_76

    :cond_71
    if-eqz v6, :cond_76

    const v11, 0x10405e2

    :cond_76
    :goto_76
    new-array v12, v4, [Ljava/lang/Object;

    aput-object v10, v12, v1

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v12, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    new-instance v13, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;

    invoke-direct {v13, p0, v1}, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$LPiVzPOZYpOEeXVS6DLB3mIX1ng;-><init>(Lcom/android/server/am/MultiDisplayManagerService;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/android/server/am/MultiDisplayManagerService$H;->post(Ljava/lang/Runnable;)Z

    return v4

    :cond_89
    return v1
.end method

.method public closeSystemDialogs(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method createDisplayContextIfNeededLocked(Landroid/view/Display;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v3, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2e

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDisplayContext: #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method public createOrWakeupDesktopDisplay(III)I
    .registers 6

    const-string v0, "MultiDisplayManager"

    const-string v1, "Feature is disabled. ignore createOrWakeupDesktopDisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method disableDexDisplayIfNeededLocked()V
    .registers 5

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableDexDisplayIfNeededLocked: currentDisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexDisplayStateLocked()I

    move-result v2

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequstedDexDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_3d
    const-string v2, ""

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    if-nez v0, :cond_80

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->activateDexDisplayLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3, v0}, Lcom/android/server/am/FreeformController;->minimizeAllTasksInFreeformLocked(IZIZ)Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->notifyDexDisplayConfiguredLocked(Z)V

    const-string/jumbo v1, "proc_dex_display_disabled"

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->killAllProcessInDexDisplayLocked(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_80

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const-string/jumbo v1, "lastHomeIsNotExist_disableDex"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->resumeHomeStackTaskIfNeeded(Lcom/android/server/am/ActivityDisplay;Ljava/lang/String;)V

    :cond_80
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "MULTI DISPLAY MANAGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDexDisplayActivated="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mDexDisplaySize="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastDexMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mRequstedDexDisplayEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mLastReportedDexDisplayEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDexDisplayEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDexDisplay="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_9a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDisplayContexts: size="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const/4 v2, 0x0

    :goto_64
    if-ge v2, v1, :cond_9a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " {key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " ctx="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :cond_9a
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mKeepAliveProcessList: size="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mKeepAliveProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ba
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " {packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ba

    :cond_e4
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDexPrimaryProcessList: size="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_104
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " {packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ", app uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_104

    :cond_13c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCallbacks:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method enableDexDisplayIfNeededLocked(Z)V
    .registers 9

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableDexDisplayIfNeededLocked: currentDisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexDisplayStateLocked()I

    move-result v2

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequstedDexDisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_3d
    const-string v2, ""

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mRequstedDexDisplayEnabled:Z

    if-eqz v0, :cond_c4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->activateDexDisplayLocked(Z)Z

    move-result v1

    if-eqz v1, :cond_c4

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-eqz v4, :cond_88

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_88

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_88

    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z

    :cond_88
    goto :goto_5a

    :cond_89
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-nez v1, :cond_a0

    const-string v0, "MultiDisplayManager"

    const-string/jumbo v2, "enableDexDisplayIfNeededLocked: failed to find ActivityDisplay #2"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a0
    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_c1

    invoke-virtual {v1, v0, v3, v0}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableDexDisplayIfNeededLocked: homeStack is created, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->notifyDexDisplayConfiguredLocked(Z)V

    :cond_c4
    return-void
.end method

.method public getCurrentFocusDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->getCurrentFocusDisplayId()I

    move-result v0

    return v0
.end method

.method getDexDisplaySizeLocked()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method getDexModeLocked()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public getDexTaskInfoFlags(Landroid/os/IBinder;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method getDisplayConfiguration(I)Landroid/content/res/Configuration;
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getNonStartableActivityInDexMode(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-eqz v0, :cond_2a

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_29

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_29

    return-object v2

    :cond_29
    goto :goto_10

    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method getResources(I)Landroid/content/res/Resources;
    .registers 3

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v2, "getRunnigTasks()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_e
    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    return-object v0
.end method

.method getTaskLocked(Ljava/lang/String;IZI)Ljava/util/ArrayList;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    if-nez v8, :cond_2e

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2d

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTaskLocked: processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-object v10

    :cond_2e
    add-int/lit8 v0, v9, -0x1

    :goto_30
    move v11, v0

    if-ltz v11, :cond_16b

    iget-object v0, v7, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v12

    iget v0, v12, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    move/from16 v13, p4

    if-ne v0, v13, :cond_46

    nop

    move/from16 v12, p2

    move/from16 v19, v9

    goto/16 :goto_165

    :cond_46
    invoke-virtual {v12}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v14

    add-int/lit8 v0, v14, -0x1

    :goto_4c
    move v15, v0

    if-ltz v15, :cond_161

    invoke-virtual {v12, v15}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_5f
    move v4, v0

    if-ltz v4, :cond_153

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_7e

    nop

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v19, v9

    move-object/from16 v22, v12

    move/from16 v12, p2

    goto/16 :goto_147

    :cond_7e
    if-eqz p3, :cond_8d

    iget-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_8d

    nop

    move/from16 v19, v9

    move-object/from16 v22, v12

    move/from16 v12, p2

    goto/16 :goto_159

    :cond_8d
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v17, 0x0

    :goto_95
    move/from16 v18, v17

    move/from16 v19, v9

    move/from16 v9, v18

    if-ge v9, v1, :cond_13d

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_119

    move/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v1

    move-object/from16 v22, v12

    move/from16 v12, p2

    if-ne v1, v12, :cond_ff

    new-instance v17, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne v0, v1, :cond_c6

    move/from16 v20, v16

    goto :goto_c8

    :cond_c6
    const/16 v20, 0x0

    :goto_c8
    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object v1, v7

    move-object/from16 v23, v2

    move-object v2, v3

    move-object/from16 v24, v3

    move/from16 v3, v20

    move/from16 v25, v4

    move-object v4, v8

    move-object/from16 v26, v5

    move v5, v12

    move-object/from16 v27, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/MultiDisplayManagerService$FindTaskResult;-><init>(Lcom/android/server/am/MultiDisplayManagerService;Lcom/android/server/am/TaskRecord;ZLjava/lang/String;II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_147

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTaskLocked: add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    :cond_ff
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    goto :goto_129

    :cond_10a
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v22, v12

    move/from16 v12, p2

    goto :goto_129

    :cond_119
    move/from16 v21, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v22, v12

    move/from16 v12, p2

    :goto_129
    add-int/lit8 v17, v9, 0x1

    move/from16 v9, v19

    move/from16 v1, v21

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    goto/16 :goto_95

    :cond_13d
    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v22, v12

    move/from16 v12, p2

    :cond_147
    :goto_147
    add-int/lit8 v0, v25, -0x1

    move/from16 v9, v19

    move-object/from16 v12, v22

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    goto/16 :goto_5f

    :cond_153
    move/from16 v19, v9

    move-object/from16 v22, v12

    move/from16 v12, p2

    :goto_159
    add-int/lit8 v0, v15, -0x1

    move/from16 v9, v19

    move-object/from16 v12, v22

    goto/16 :goto_4c

    :cond_161
    move/from16 v12, p2

    move/from16 v19, v9

    :goto_165
    add-int/lit8 v0, v11, -0x1

    move/from16 v9, v19

    goto/16 :goto_30

    :cond_16b
    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v19, v9

    return-object v10
.end method

.method public getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public goodToChangeMode(II)Z
    .registers 24

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v4, "readyToExit"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    move/from16 v4, p1

    if-eq v4, v0, :cond_1a7

    if-ne v2, v0, :cond_18

    goto/16 :goto_1a7

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    const/4 v0, 0x5

    if-ne v2, v3, :cond_29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_4b
    iget-object v8, v1, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_1a2

    :try_start_4e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_192

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11, v3}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_95

    const-string v9, "MultiDisplayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "goodToChangeMode: no stack, windowingMode="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_4e .. :try_end_8e} :catchall_19c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_95
    :try_start_95
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_99
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_188

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ad
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_153

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v16

    move-object/from16 v9, v17

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    move-object/from16 v18, v16

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    if-nez v0, :cond_e5

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    const-string/jumbo v3, "goodToChangeMode: no topRunning. t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    :cond_e5
    move-object/from16 v20, v3

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v1, :cond_103

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goodToChangeMode: stateNotNeeded, r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    :cond_103
    sget-object v1, Lcom/android/server/am/MultiDisplayManagerService$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1b2

    monitor-exit v8

    goto :goto_14b

    :pswitch_114
    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goodToChangeMode: t#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " haveState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_95 .. :try_end_13f} :catchall_19c

    :pswitch_13f
    nop

    :goto_140
    move-object/from16 v0, v19

    move-object/from16 v3, v20

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v9, 0x0

    goto/16 :goto_ad

    :goto_14b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    return v1

    :cond_153
    move-object/from16 v19, v0

    move v1, v9

    :try_start_156
    const-string v0, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "goodToChangeMode stack#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", numTasks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v9, v1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x1

    goto/16 :goto_99

    :cond_188
    move-object/from16 v19, v0

    move v1, v9

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x1

    goto/16 :goto_5c

    :cond_192
    monitor-exit v8
    :try_end_193
    .catchall {:try_start_156 .. :try_end_193} :catchall_19c

    :try_start_193
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_196
    .catchall {:try_start_193 .. :try_end_196} :catchall_1a2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x1

    return v0

    :catchall_19c
    move-exception v0

    :try_start_19d
    monitor-exit v8
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19c

    :try_start_19e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_1a2
    .catchall {:try_start_19e .. :try_end_1a2} :catchall_1a2

    :catchall_1a2
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1a7
    :goto_1a7
    const-string v0, "MultiDisplayManager"

    const-string/jumbo v1, "goodToChangeMode: dual-mode is not need to wait stopped sate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_114
        :pswitch_13f
        :pswitch_13f
        :pswitch_13f
        :pswitch_13f
    .end packed-switch
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    goto :goto_b

    :cond_33
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexPrimaryProcessList:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method initProcessDisplayIdLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiDisplayManagerService;->getActivityWaitingToRun(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_5d

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    invoke-direct {p0, v2}, Lcom/android/server/am/MultiDisplayManagerService;->getPackageProcesses([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eq v5, p1, :cond_15

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_15

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_30

    goto :goto_15

    :cond_30
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v0

    const-string v4, "MultiDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init process display: set packageProcessId, displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", same_package_proc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_5c
    goto :goto_61

    :cond_5d
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    :goto_61
    const/4 v2, -0x1

    if-ne v0, v2, :cond_68

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v0

    :cond_68
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->validDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDisplayId(I)V

    :cond_71
    return-void
.end method

.method isDeXDisabledFromStandAlone()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method isDexDisplayProcessLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method isGamePackage(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v1, :cond_14

    const-string/jumbo v1, "gamemanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    :cond_14
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_25

    if-ne v1, v2, :cond_23

    move v0, v2

    goto :goto_24

    :cond_23
    nop

    :goto_24
    return v0

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public killPackageProcess(Ljava/lang/String;IZ)V
    .registers 4

    return-void
.end method

.method killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 4

    const-string/jumbo v0, "proc_display_changed"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/MultiDisplayManagerService;->killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method killProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)Z
    .registers 13

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p2}, Lcom/android/server/am/MultiDisplayManagerService;->isDefaultOrDexDisplay(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    return v3

    :cond_c
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eq v2, p1, :cond_33

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_32

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring remove of inactive process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v3

    :cond_33
    const-string/jumbo v4, "proc_display_changed"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_7f

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v4

    if-ne v4, p2, :cond_5e

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_5d

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "already in same display: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return v3

    :cond_5e
    if-ne p2, v5, :cond_7f

    iget-boolean v4, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexDisplayActivated:Z

    if-nez v4, :cond_7f

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_7e

    const-string v4, "MultiDisplayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dex display is not activated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return v3

    :cond_7f
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v4, v6, :cond_ac

    sget-boolean v4, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_ab

    const-string v4, "MultiDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not kill system process, app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    return v3

    :cond_ac
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v6, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v6, :cond_100

    const-string v6, "MultiDisplayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "killProcessIfNeededLocked: reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " app="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setDisplayId(I)V

    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->removed:Z

    iget-object v6, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, p1, v3, v3, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    return v5
.end method

.method loadResources(I)V
    .registers 2

    return-void
.end method

.method moveTaskToDisplayBackLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p2

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v1

    if-ne v1, v9, :cond_b

    return-void

    :cond_b
    iget-object v1, v0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    if-nez v10, :cond_14

    return-void

    :cond_14
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    if-nez v1, :cond_3e

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToDisplayBackLocked: Skip RemovingTask, Parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    iget-object v2, v2, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    if-eqz v2, :cond_59

    iget-object v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    iget-object v2, v2, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iget-object v2, v2, Lcom/android/server/am/DisplayChooserInfo;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_59

    iget-object v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    iget-object v2, v2, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->mInfo:Lcom/android/server/am/DisplayChooserInfo;

    iget-object v1, v2, Lcom/android/server/am/DisplayChooserInfo;->mOptions:Landroid/app/ActivityOptions;

    :cond_59
    move-object v11, v1

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v10

    move-object v3, v11

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_9d

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToDisplayBackLocked: to d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_9d
    move-object/from16 v13, p3

    :goto_9f
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, v12

    move-object v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_af

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_af
    return-void
.end method

.method moveTasksBackAndStartPendingActivity(Lcom/android/server/am/DisplayChooserInfo;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, p1}, Lcom/android/server/am/MultiDisplayManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyAppTransitionFinished()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAppTransitionFinished. isTransitionFinished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v3}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isTransitionFinished()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isTransitionFinished()Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->transitionFinished()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiDisplayManagerService$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V

    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppWindowGone(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_21

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAppWindowGone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->removeWaitingStoppedTask(Lcom/android/server/am/TaskRecord;)V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mPendingActivityInfo:Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService$PendingActivityInfo;->isWaitingStoppedTasksEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiDisplayManagerService;->reparentToDisplayAndStartPendingActivity(Z)V

    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyDexDisplayConfiguredLocked(Z)V
    .registers 7

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v0, :cond_41

    if-eqz v1, :cond_41

    iget-boolean v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDexDisplayEnabled:Z

    if-ne v2, p1, :cond_18

    goto :goto_41

    :cond_18
    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyDexDisplayConfiguredLocked: dexDisplayEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastReportedDexDisplayEnabled:Z

    invoke-virtual {v0, p1}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->onDesktopDisplayConfigured(Z)V

    return-void

    :cond_41
    :goto_41
    return-void
.end method

.method onConfigurationChangedLocked(II)V
    .registers 7

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChangedLocked: display#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", configChanges=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_29

    move v2, v1

    goto :goto_2a

    :cond_29
    move v2, v0

    :goto_2a
    and-int/lit16 v3, p1, 0x1c80

    if-eqz v3, :cond_30

    move v0, v1

    nop

    :cond_30
    if-eqz v0, :cond_40

    if-eqz p2, :cond_3c

    const/4 v1, 0x2

    if-eq p2, v1, :cond_38

    goto :goto_40

    :cond_38
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiDisplayManagerService;->loadResources(I)V

    goto :goto_40

    :cond_3c
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiDisplayManagerService;->loadResources(I)V

    nop

    :cond_40
    :goto_40
    return-void
.end method

.method parseApplicationInfoLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public registerDisplayCompatModeWatcher(Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "registerDisplayFocusCallback"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method public registerDisplayFocusCallback(Lcom/samsung/android/multidisplay/IMultiDisplayCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeDisplayContextIfNeededLocked(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDisplayContext: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public requestKeepDisplay(Landroid/os/IBinder;Z)V
    .registers 3

    return-void
.end method

.method resetLastNonResizableTopTaskIfNeeded(Lcom/android/server/am/ActivityStack;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_22

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastNonResizableTopTaskId:I

    if-eq v2, v3, :cond_1f

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiDisplayManagerService;->setLastNonResizableTopTaskIdLocked(I)V

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_22
    return-void
.end method

.method public restartTask(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "releaseDisplayCompatMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restoreLastNonResizableTopTaskIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "restoreLastNonResizableTopTaskIfNeeded()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resumeHomeStackTaskIfNeeded(Lcom/android/server/am/ActivityDisplay;Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_26

    return-void

    :cond_26
    goto :goto_13

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    return-void
.end method

.method public rotateCompatTask(Landroid/os/IBinder;)V
    .registers 2

    return-void
.end method

.method public scaleFreeformForNewScreenSize(IFF)V
    .registers 14

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->updateMinMaxSizeIfNeeded()V

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isFullscreenFreeform()Z

    move-result v7

    if-eqz v7, :cond_3f

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_25

    :cond_3f
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_7f

    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, p2, v7

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v8, :cond_60

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, p2

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Landroid/graphics/Rect;->right:I

    :cond_60
    cmpl-float v7, p3, v7

    if-eqz v7, :cond_74

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    :cond_74
    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/am/MultiWindowManagerService;->adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v7, v7}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    :cond_7f
    goto :goto_25

    :cond_80
    goto :goto_11

    :cond_81
    return-void
.end method

.method scheduleDispayCompatCallbackIfNeededLocked()V
    .registers 1

    return-void
.end method

.method scheduleDisplayConfigurationLocked(Landroid/content/res/Configuration;I)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfiguraton("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiDisplayManagerService;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_30
    if-ltz v3, :cond_b8

    iget-object v5, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    :try_start_3c
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_b2

    invoke-virtual {p0, v5}, Lcom/android/server/am/MultiDisplayManagerService;->isDexDisplayProcessLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-nez v6, :cond_47

    goto :goto_b2

    :cond_47
    move-object v6, v1

    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/DexCompatController;->isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;ILcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_67

    iput-boolean v4, v5, Lcom/android/server/am/ProcessRecord;->isDexCompatConfigApplied:Z

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v6, v7

    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v10, v6, v8, v0}, Lcom/android/server/am/DexCompatController;->applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto :goto_75

    :cond_67
    iget-boolean v7, v5, Lcom/android/server/am/ProcessRecord;->isDexCompatConfigApplied:Z

    if-eqz v7, :cond_75

    iput-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->isDexCompatConfigApplied:Z

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v6, v7

    iput v4, v6, Landroid/content/res/Configuration;->dexCompatEnabled:I

    :cond_75
    :goto_75
    sget-boolean v7, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_a2

    const-string v7, "MultiDisplayManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending to proc{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "}, new config"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", displayId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    iget-object v7, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-static {v6}, Landroid/app/servertransaction/ConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ConfigurationChangeItem;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_b1} :catch_b3

    goto :goto_b4

    :cond_b2
    :goto_b2
    goto :goto_b4

    :catch_b3
    move-exception v6

    :goto_b4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_30

    :cond_b8
    return-void
.end method

.method scheudleForceResizedTaskCallbackIfNeededLocked()V
    .registers 1

    return-void
.end method

.method public setChooserDialogShowRequested(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mChooserDialogShowRequested:Z

    return-void
.end method

.method public setCurrentFocusDisplayId(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/MultiDisplayManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDeviceDefaultDisplay(I)V
    .registers 2

    return-void
.end method

.method setLastNonResizableTopTaskIdLocked(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastNonResizableTopTaskId:I

    if-eq v0, p1, :cond_1d

    iput p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mLastNonResizableTopTaskId:I

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastNonResizableTopTaskIdLocked : storedTopTaskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setMultiDisplayManager(Lcom/samsung/android/multidisplay/IMultiDisplayManager;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/DexCompatController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    return-void
.end method

.method public shouldGoHomeInSubDisplay()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method showDisplayChooserLocked(Lcom/android/server/am/DisplayChooserInfo;I)V
    .registers 6

    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_30

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDisplayChooserLocked on #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-virtual {p1}, Lcom/android/server/am/DisplayChooserInfo;->skipToShow()Z

    move-result v0

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mIsDoNotShowAgainChecked:Z

    if-eqz v0, :cond_3b

    goto :goto_50

    :cond_3b
    iget-boolean v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mChooserDialogShowRequested:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiHandler:Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mUiHandler:Lcom/android/server/am/MultiDisplayManagerService$UiHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, p1}, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiDisplayManagerService$UiHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiDisplayManagerService;->setChooserDialogShowRequested(Z)V

    :cond_4f
    return-void

    :cond_50
    :goto_50
    sget-boolean v0, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_6c

    const-string v0, "MultiDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip to show DisplayChoosermDoNotShowAgainChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/MultiDisplayManagerService;->mIsDoNotShowAgainChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksBackAndStartPendingActivity(Lcom/android/server/am/DisplayChooserInfo;I)V

    return-void
.end method

.method public sleepDesktopDisplay()I
    .registers 3

    const-string v0, "MultiDisplayManager"

    const-string v1, "Feature is disabled. ignore sleepDesktopDisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public unregisterDisplayCompatModeWatcher(Lcom/samsung/android/multidisplay/IDisplayCompatModeWatcher;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "unregisterDisplayCompatModeWatcher"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mDisplayCompatModeWatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method public unregisterDisplayFocusCallback(Lcom/samsung/android/multidisplay/IMultiDisplayCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method updateDexModeIfNeededLocked(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v1

    iget v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-eq v2, v1, :cond_122

    sget-boolean v2, Lcom/android/server/am/MultiDisplayManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3f

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDesktopModeIfNeededLocked, lastDexMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentDexMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_3f
    move-object/from16 v4, p1

    :goto_41
    iget-object v2, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v2}, Lcom/android/server/am/FreeformController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_58

    if-ne v1, v5, :cond_50

    goto :goto_58

    :cond_50
    if-ne v1, v3, :cond_5d

    const-string v6, "desktop_on"

    invoke-virtual {v2, v6}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_5d

    :cond_58
    :goto_58
    const-string v6, "desktop_off"

    invoke-virtual {v2, v6}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    if-nez v1, :cond_bf

    iget v7, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-ne v7, v5, :cond_65

    move v7, v5

    goto :goto_66

    :cond_65
    const/4 v7, 0x0

    :goto_66
    iget-object v8, v0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v8

    if-nez v8, :cond_86

    const-string v9, "MultiDisplayManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDexModeIfNeededLocked: cannot found, d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    :cond_86
    const/4 v9, 0x5

    invoke-virtual {v8, v9, v3}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_be

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_bd

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v14, v15}, Lcom/android/server/am/TaskRecord;->getOverrideBounds(Landroid/graphics/Rect;)V

    iget-object v6, v14, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    invoke-virtual {v6, v7, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a3

    :cond_bd
    goto :goto_8f

    :cond_be
    :goto_be
    goto :goto_cd

    :cond_bf
    iget-object v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mSettingsObserver:Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;

    if-eqz v6, :cond_cd

    iget-object v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;

    new-instance v7, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$GCqVc_gZmeoV6i8H9QJlOg4KAns;

    invoke-direct {v7, v0}, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$GCqVc_gZmeoV6i8H9QJlOg4KAns;-><init>(Lcom/android/server/am/MultiDisplayManagerService;)V

    invoke-virtual {v6, v7}, Lcom/android/server/am/MultiDisplayManagerService$H;->post(Ljava/lang/Runnable;)Z

    :cond_cd
    :goto_cd
    iget v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-ne v6, v3, :cond_dd

    if-ne v1, v5, :cond_d8

    const/4 v6, 0x0

    invoke-direct {v0, v6, v5}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksToFreeformLocked(II)V

    goto :goto_105

    :cond_d8
    const/4 v6, 0x0

    invoke-direct {v0, v6, v6}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksToFullscreenLocked(II)V

    goto :goto_105

    :cond_dd
    const/4 v6, 0x0

    if-ne v1, v3, :cond_105

    iget-object v7, v0, Lcom/android/server/am/MultiDisplayManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    if-eqz v7, :cond_f9

    :goto_e8
    const/4 v6, 0x3

    invoke-virtual {v7, v6, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    move-object v8, v6

    if-eqz v6, :cond_f9

    iget-object v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_e8

    :cond_f9
    const/4 v10, 0x0

    iget v6, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-ne v6, v5, :cond_101

    invoke-direct {v0, v5, v10}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksToFreeformLocked(II)V

    :cond_101
    invoke-direct {v0, v10, v10}, Lcom/android/server/am/MultiDisplayManagerService;->moveTasksToFreeformLocked(II)V

    goto :goto_106

    :cond_105
    :goto_105
    move v10, v6

    :goto_106
    iput v1, v0, Lcom/android/server/am/MultiDisplayManagerService;->mLastDexMode:I

    if-eqz v1, :cond_10b

    goto :goto_10c

    :cond_10b
    move v3, v10

    :goto_10c
    iget-object v5, v0, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService;->getEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v5

    const-string v6, "MultiDisplayManager"

    if-eqz v3, :cond_11b

    const-string v7, "Desktop On"

    goto :goto_11d

    :cond_11b
    const-string v7, "Desktop Off"

    :goto_11d
    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v3, v8}, Lcom/android/server/am/MultiWindowEnableController;->setForceEnableForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_124

    :cond_122
    move-object/from16 v4, p1

    :goto_124
    return-void
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/Map;)V
    .registers 2

    return-void
.end method
