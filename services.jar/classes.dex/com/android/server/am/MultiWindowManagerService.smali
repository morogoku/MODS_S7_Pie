.class public Lcom/android/server/am/MultiWindowManagerService;
.super Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;,
        Lcom/android/server/am/MultiWindowManagerService$H;,
        Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTRA_SPLIT_SCREEN_PRIMARY_APP_LABEL:Ljava/lang/String; = "splitScreenPrimaryAppLabel"

.field private static final EXTRA_SPLIT_SCREEN_SECONDARY_APP_LABEL:Ljava/lang/String; = "splitScreenSecondaryAppLabel"

.field private static final MIN_ASPECT:F = 1.2f

.field private static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field private static final TAG_BIXBY:Ljava/lang/String; = "MultiWindowManager_Bixby"

.field private static mInstance:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field cachedDensityChanged:Z

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IMultiWindowCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredDetachSplitScreenPrimaryStack:Z

.field private final mDisplaySize:Landroid/graphics/Point;

.field final mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

.field private final mEnableController:Lcom/android/server/am/MultiWindowEnableController;

.field private final mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

.field private final mFreeformController:Lcom/android/server/am/FreeformController;

.field final mH:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mLastGlobalDensity:I

.field private mLaunchingPairActivities:Z

.field private final mNotifyFocusStackChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

.field private final mNotifyMultiWindowEnableChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

.field private final mNotifySnapWindowVisibilityChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

.field private final mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IMultiWindowEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field final mShellCommand:Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;

.field final mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

.field private final mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mSystemResources:Landroid/content/res/Resources;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mInstance:Lcom/android/server/am/MultiWindowManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 8

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachSplitScreenPrimaryStack:Z

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    sget-object v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$0mQS-avniE5D0ivC2VCuUFPKjKo;->INSTANCE:Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$0mQS-avniE5D0ivC2VCuUFPKjKo;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifyFocusStackChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    sget-object v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;->INSTANCE:Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$BUaF3R5r8yqC4sBzLftmPEwFTg8;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifyMultiWindowEnableChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    sget-object v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$s3HzvKqb7o69WP1SUBbxTjQU6To;->INSTANCE:Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$s3HzvKqb7o69WP1SUBbxTjQU6To;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifySnapWindowVisibilityChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSystemResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_a6

    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mInstance:Lcom/android/server/am/MultiWindowManagerService;

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mCoreStateController:Lcom/android/server/am/CoreStateController;

    new-instance v2, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/server/corestate/MultiWindowCoreStateSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v3, v4}, Lcom/samsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    const-class v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/am/CoreStateController;->createObserverController(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)Lcom/samsung/android/server/corestate/CoreStateObserverController;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/CoreStateController;->registerObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;Lcom/samsung/android/server/corestate/CoreStateCallback;)V

    new-instance v1, Lcom/android/server/am/MultiWindowEnableController;

    invoke-direct {v1, p1}, Lcom/android/server/am/MultiWindowEnableController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    new-instance v1, Lcom/android/server/am/FreeformController;

    invoke-direct {v1, p1, p0}, Lcom/android/server/am/FreeformController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;-><init>(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService;Z)V

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShellCommand:Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;

    new-instance v0, Lcom/android/server/am/EnsureDockedViewManager;

    invoke-direct {v0, p1}, Lcom/android/server/am/EnsureDockedViewManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    new-instance v0, Lcom/android/server/am/SnapWindowManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/am/SnapWindowManager;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    iput-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    new-instance v0, Lcom/android/server/am/DividerCloseNotificationController;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/DividerCloseNotificationController;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

    return-void

    :cond_a6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifyFocusStackChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->forAllRemoteListeners(Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->toggleNresumeSupport()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->toggleCornerGestureSupport()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowEnableController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->toggleNfocusSupport()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifyMultiWindowEnableChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotifySnapWindowVisibilityChanged:Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->initializePairActivityModeLocked(Lcom/android/server/am/ActivityStack;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$900()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    return v0
.end method

.method private detachSplitScreenPrimaryStackIfNeededLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachSplitScreenPrimaryStack:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_1d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachSplitScreenPrimaryStack:Z

    :cond_20
    return-void
.end method

.method private forAllRemoteListeners(Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1d

    :try_start_d
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowEventConsumer;->accept(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_24

    goto :goto_1a

    :catch_19
    move-exception v2

    :goto_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw v1
.end method

.method private getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_c

    const-string v1, "MultiWindowManager"

    const-string/jumbo v2, "getLabelForTask, Task is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_29

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    return-object v0
.end method

.method private getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .registers 9

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_10

    goto :goto_13

    :cond_10
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto :goto_2b

    :cond_13
    :goto_13
    const-string v3, "MultiWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchActivityForTask, can\'t get ComponentName from Task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-interface {v2, v0, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_58

    const-string v3, "MultiWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchActivityForTask, can\'t get ActivityInfo from ComponentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_58
    iget-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_74

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v3, :cond_74

    const-string v3, "android.intent.action.MAIN"

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    goto :goto_74

    :cond_6f
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_74
    :goto_74
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchIntentForPackageAsUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_91

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_91

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_91
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLaunchActivityForTask, can\'t find Activity by getLaunchIntentForPackage Task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_a8} :catch_a9

    return-object v1

    :catch_a9
    move-exception v2

    const-string v3, "MultiWindowManager"

    const-string/jumbo v4, "getLaunchActivityForTask, RemoteException occurred"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getLaunchIntentForPackageAsUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.INFO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3f

    :cond_25
    const-string v4, "android.intent.category.INFO"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    :cond_3f
    if-eqz v2, :cond_97

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_48

    goto :goto_97

    :cond_48
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_56
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v7, :cond_7e

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v4

    :cond_7e
    goto :goto_56

    :cond_7f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_96} :catch_98

    return-object v4

    :cond_97
    :goto_97
    return-object v0

    :catch_98
    move-exception v1

    return-object v0
.end method

.method public static getService()Lcom/android/server/am/MultiWindowManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mInstance:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method

.method private initializePairActivityModeLocked(Lcom/android/server/am/ActivityStack;Z)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_1c

    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/MultiWindowManagerService;->initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_1c
    goto :goto_b

    :cond_1d
    return-void
.end method

.method private isLaunchedFromOtherWorkspace(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_11

    const-string v2, "MultiWindowManager"

    const-string v3, "CurrentUser does not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v2, :cond_1f

    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_1f
    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v2, :cond_3c

    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0xd3

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x4

    return v3

    :cond_3c
    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v2, :cond_48

    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_48
    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, v2, :cond_64

    iget v3, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_54
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v4, 0xd4

    invoke-virtual {v3, v4}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return v1

    :cond_64
    const/4 v1, 0x0

    return v1
.end method

.method private isSwitchable(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_61

    if-nez p2, :cond_6

    goto :goto_61

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_18

    const-string v1, "MultiWindowManager"

    const-string v2, "Cannot swapWindowingMode due to windowing mode are same."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_18
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_59

    :cond_25
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_32

    goto :goto_51

    :cond_32
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    if-eqz v1, :cond_49

    if-nez v2, :cond_47

    goto :goto_49

    :cond_47
    const/4 v0, 0x1

    return v0

    :cond_49
    :goto_49
    const-string v3, "MultiWindowManager"

    const-string v4, "Cannot swapWindowingMode due to task\'s display is null."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_51
    :goto_51
    const-string v1, "MultiWindowManager"

    const-string v2, "Cannot swapWindowingMode due to task\'s satck is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_59
    :goto_59
    const-string v1, "MultiWindowManager"

    const-string v2, "Cannot swapWindowingMode due to task is in Pinned."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_61
    :goto_61
    const-string v1, "MultiWindowManager"

    const-string v2, "Cannot swapWindowingMode due to task is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$StackInfo;

    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    move v0, v1

    invoke-interface {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowEnableChanged(Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    move v0, v1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onSnapWindowVisibilityChanged(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onCoreStateChanged$3(Lcom/android/server/am/MultiWindowManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->dismissMultiWindowMode()V

    return-void
.end method

.method public static synthetic lambda$swapWindowingModeLocked$4(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingModeLockedInSurfaceTransaction(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method private loadResources()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->loadResources()V

    return-void
.end method

.method private logCreateAppPairShortcut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    if-eqz p1, :cond_42

    if-nez p2, :cond_5

    goto :goto_42

    :cond_5
    const-string v0, "SPAC"

    const-string v1, "APSC"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AddPair"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-void

    :cond_42
    :goto_42
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logCreateAppPairShortcut() param is null. primaryStackActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " secondaryStackActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private retrieveMultiWindowSettings()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.freeform_window_management"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_26

    const-string/jumbo v1, "enable_freeform_support"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    move v1, v3

    goto :goto_27

    :cond_26
    :goto_26
    move v1, v2

    :goto_27
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.software.picture_in_picture"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    move v5, v2

    goto :goto_44

    :cond_43
    move v5, v3

    :goto_44
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/ActivityManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.software.activities_on_secondary_displays"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v8, "force_resizable_activities"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_65

    move v8, v2

    goto :goto_66

    :cond_65
    move v8, v3

    :goto_66
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_69
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v10, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v1, :cond_7b

    if-nez v6, :cond_7b

    if-nez v5, :cond_7b

    if-eqz v7, :cond_79

    goto :goto_7b

    :cond_79
    move v10, v3

    goto :goto_7c

    :cond_7b
    :goto_7b
    move v10, v2

    :goto_7c
    if-nez v4, :cond_80

    if-eqz v8, :cond_97

    :cond_80
    if-eqz v10, :cond_97

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v2, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v6, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v5, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v7, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    goto :goto_ab

    :cond_97
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    :goto_ab
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setForceResizableTasks(Z)V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setSupportsPictureInPicture(Z)V

    monitor-exit v9
    :try_end_be
    .catchall {:try_start_69 .. :try_end_be} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_c2
    move-exception v2

    :try_start_c3
    monitor-exit v9
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private swapWindowingModeLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService;->isSwitchable(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$jt0QaNex0SX92y7kK6Xx4c3ifhQ;-><init>(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private swapWindowingModeLockedInSurfaceTransaction(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 25

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v0, p2

    move-object/from16 v2, p1

    nop

    move-object v3, v2

    move-object v2, v0

    goto :goto_14

    :cond_10
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :goto_14
    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Lcom/android/server/am/TaskRecord;

    new-array v6, v0, [Z

    new-array v7, v0, [Lcom/android/server/am/ActivityDisplay;

    new-array v8, v0, [I

    const/4 v9, 0x0

    aput-object v2, v5, v9

    const/4 v10, 0x1

    aput-object v3, v5, v10

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-ne v11, v4, :cond_31

    move v11, v10

    goto :goto_32

    :cond_31
    move v11, v9

    :goto_32
    aput-boolean v11, v6, v9

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-ne v11, v4, :cond_3c

    move v11, v10

    goto :goto_3d

    :cond_3c
    move v11, v9

    :goto_3d
    aput-boolean v11, v6, v10

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v11

    aput v11, v8, v9

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v11

    aput v11, v8, v10

    move-object v11, v4

    iget-object v12, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    move-object v12, v11

    move v11, v9

    :goto_69
    :try_start_69
    array-length v13, v5

    if-ge v11, v13, :cond_a2

    aget-object v13, v5, v11

    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandard()Z

    move-result v14

    if-eqz v14, :cond_9e

    aget-object v14, v7, v11

    aget v15, v8, v11

    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {v14, v15, v0, v10}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    const/16 v16, 0x1

    aget-boolean v0, v6, v11

    if-eqz v0, :cond_89

    move/from16 v17, v9

    goto :goto_8b

    :cond_89
    const/16 v17, 0x2

    :goto_8b
    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string/jumbo v20, "swapWindowingMode"

    move-object v14, v13

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    if-eqz v12, :cond_9c

    aget-boolean v0, v6, v11

    if-eqz v0, :cond_9e

    :cond_9c
    move-object v0, v15

    move-object v12, v0

    :cond_9e
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x2

    goto :goto_69

    :cond_a2
    const-string/jumbo v0, "swapWindowingMode"

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_69 .. :try_end_a8} :catchall_c0

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void

    :catchall_c0
    move-exception v0

    iget-object v9, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private toggleCornerGestureSupport()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    goto :goto_17

    :cond_11
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    :goto_17
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "corner gesture activate."

    invoke-static {v1, v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    goto :goto_3c

    :cond_2c
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "corner gesture deactivate."

    invoke-static {v1, v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_44

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private toggleNfocusSupport()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowEnableController;->setStayFocusActivityEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_21

    const-string/jumbo v3, "n focus activate."

    goto :goto_24

    :cond_21
    const-string/jumbo v3, "n focus deactivate."

    :goto_24
    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private toggleNresumeSupport()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowEnableController;->setMultiResumeEnabled(Z)V

    goto :goto_17

    :cond_11
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowEnableController;->setMultiResumeEnabled(Z)V

    :goto_17
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string/jumbo v4, "n resume activate."

    invoke-static {v1, v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    goto :goto_3e

    :cond_2d
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/am/MultiWindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string/jumbo v4, "n resume deactivate."

    invoke-static {v1, v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 11

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    if-eqz p1, :cond_e7

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_e7

    :cond_12
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const v4, 0x3f99999a    # 1.2f

    if-ne v1, v2, :cond_85

    if-nez v0, :cond_85

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v2, v1, v4

    if-gez v2, :cond_84

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustAspectRatioIfNeeded: task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " resizeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bounds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " adjusted(bottom)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    :cond_84
    goto :goto_e6

    :cond_85
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e6

    if-eqz v0, :cond_e6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v2, v1, v4

    if-gez v2, :cond_e6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adjustAspectRatioIfNeeded: task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " resizeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bounds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " adjusted(right)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p2, Landroid/graphics/Rect;->right:I

    :cond_e6
    :goto_e6
    return-void

    :cond_e7
    :goto_e7
    return-void
.end method

.method public final createAppPairShortcut()I
    .registers 14

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    move-object v5, v7

    :cond_1f
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    move-object v6, v7

    :cond_26
    if-eqz v5, :cond_122

    if-eqz v6, :cond_122

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->isLaunchedFromOtherWorkspace(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v7

    if-eqz v7, :cond_35

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_151

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v7

    :cond_35
    :try_start_35
    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLaunchActivityForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_af

    if-nez v9, :cond_42

    goto :goto_af

    :cond_42
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x11000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v10, "component_first"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "component_second"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "userId_first"

    iget v11, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v10, "userId_second"

    iget v11, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v12, "com.samsung.android.permission.ADD_PAIR_APP_SHORTCUT"

    invoke-virtual {v10, v4, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    sget-boolean v10, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v10, :cond_a2

    const-string v10, "MultiWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createAppPairShortcut() splitScreenPrimaryActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " splitScreenSecondaryActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v10, :cond_a9

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->logCreateAppPairShortcut(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    const/4 v10, 0x0

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_35 .. :try_end_ab} :catchall_151

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :cond_af
    :goto_af
    :try_start_af
    const-string v10, "MultiWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createAppPairShortcut: Can\'t find AppPair Activity. splitScreenPrimaryActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " splitScreenSecondaryActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_101

    if-nez v9, :cond_101

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v10, 0xd2

    invoke-virtual {v4, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "splitScreenPrimaryAppLabel"

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "splitScreenSecondaryAppLabel"

    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v11, v4}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v11, 0x2

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_af .. :try_end_fd} :catchall_151

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v11

    :cond_101
    :try_start_101
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v11, 0xd1

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    if-nez v8, :cond_112

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v11

    goto :goto_116

    :cond_112
    invoke-direct {p0, v6}, Lcom/android/server/am/MultiWindowManagerService;->getLabelForTask(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v11

    :goto_116
    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v11, v10}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0
    :try_end_11e
    .catchall {:try_start_101 .. :try_end_11e} :catchall_151

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_122
    :try_start_122
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createAppPairShortcut: Can\'t find AppPair Stack/Task. splitScreenPrimaryStack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " splitScreenPrimaryTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " splitScreenSecondaryStack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " splitScreenSecondaryTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_151
    move-exception v1

    monitor-exit v0
    :try_end_153
    .catchall {:try_start_122 .. :try_end_153} :catchall_151

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public deferDetachSplitScreenPrimaryStackLocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDeferredDetachSplitScreenPrimaryStack:Z

    return-void
.end method

.method dismissMultiWindowMode()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_12
    if-ltz v2, :cond_41

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v5, v4, :cond_20

    move v5, v3

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    :goto_21
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityManagerService;->dismissSplitScreenMode(Z)V

    goto :goto_3e

    :cond_2d
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v6

    if-nez v6, :cond_39

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_3e

    :cond_39
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dismissSideScreen(I)V
    .registers 2

    return-void
.end method

.method public dockSideScreen()V
    .registers 1

    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Z)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p2, :cond_a

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    const-string v0, "MULTI WINDOW MANAGER SERVICE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "    MultiWindowEnabled"

    goto :goto_21

    :cond_1f
    const-string v0, "    MultiWindowDisabled"

    :goto_21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/MultiWindowEnableController;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreeformController;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_34

    array-length v1, p1

    if-lez v1, :cond_34

    if-eqz v0, :cond_34

    array-length v1, v0

    if-lez v1, :cond_34

    const/4 v1, 0x0

    move v2, v1

    :goto_18
    array-length v3, v0

    if-ge v2, v3, :cond_34

    move v3, v1

    :goto_1c
    array-length v4, p1

    if-ge v3, v4, :cond_31

    aget-object v4, p1, v3

    if-eqz v4, :cond_2e

    aget-object v4, p1, v3

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_35

    if-eqz v4, :cond_2e

    return-void

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_34
    goto :goto_36

    :catch_35
    move-exception v0

    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/EnsureDockedViewManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "exitMultiWindow"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    const/4 v3, 0x0

    if-nez v2, :cond_3b

    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exitMultiWindow: cannot find stack, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :cond_3b
    :try_start_3b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_93

    :try_start_3f
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x1

    packed-switch v6, :pswitch_data_9a

    const-string v6, "MultiWindowManager"

    goto :goto_5c

    :pswitch_4a
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityManagerService;->exitFreeformMode(Landroid/os/IBinder;)V

    goto :goto_7d

    :pswitch_50
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->dismissSplitScreenMode(Z)V

    goto :goto_7d

    :pswitch_56
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->dismissSplitScreenMode(Z)V

    goto :goto_7d

    :goto_5c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "exitMultiWindow: invalid windowing mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_3f .. :try_end_7d} :catchall_8e

    :goto_7d
    :try_start_7d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v6

    if-ne v6, v7, :cond_89

    move v3, v7

    nop

    :cond_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_8e
    move-exception v3

    :try_start_8f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_9a
    .packed-switch 0x3
        :pswitch_56
        :pswitch_50
        :pswitch_4a
    .end packed-switch
.end method

.method finishBooting()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->registerBroadcastReceiver()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishBooting: mLastGlobalDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    return-void
.end method

.method getBaseDisplaySize()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method getEnableController()Lcom/android/server/am/MultiWindowEnableController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    return-object v0
.end method

.method public getFreeformAlpha(Landroid/os/IBinder;)F
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformWindowController()Lcom/android/server/wm/FreeformWindowController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v0

    return v0
.end method

.method getFreeformController()Lcom/android/server/am/FreeformController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    return-object v0
.end method

.method public getFreeformTasks(I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.REAL_GET_TASKS"

    const-string/jumbo v2, "getFreeformTasks()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_6e

    :try_start_19
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_28
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const/4 v11, 0x1

    move-object v7, v5

    move v12, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->getRunningTasks(Ljava/util/List;IIIZI)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_47
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9, v8}, Lcom/android/server/am/ActivityStackSupervisor;->createRunningTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catchall {:try_start_19 .. :try_end_5e} :catchall_69

    goto :goto_47

    :cond_5f
    goto :goto_28

    :cond_60
    :try_start_60
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_6e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_69
    move-exception v4

    :try_start_6a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_6e
    move-exception v2

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_6e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getFrontStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .registers 7

    if-eqz p1, :cond_2f

    if-nez p2, :cond_5

    goto :goto_2f

    :cond_5
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget v1, p2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    return-object v2

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    if-ltz v1, :cond_2e

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, p1, :cond_24

    return-object p1

    :cond_24
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, p2, :cond_2b

    return-object p2

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_2e
    return-object v2

    :cond_2f
    :goto_2f
    if-eqz p1, :cond_33

    move-object v0, p1

    goto :goto_34

    :cond_33
    move-object v0, p2

    :goto_34
    return-object v0
.end method

.method public getMultiResumePrefVal()Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowEnableController;->getMultiResumePrefVal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    return v2

    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getMultiWindowModeStates(I)I
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_13
    if-ltz v3, :cond_3d

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_37

    const/16 v6, 0x64

    if-eq v5, v6, :cond_36

    packed-switch v5, :pswitch_data_48

    goto :goto_3a

    :pswitch_30
    or-int/lit8 v0, v0, 0x2

    goto :goto_3a

    :pswitch_33
    or-int/lit8 v0, v0, 0x4

    goto :goto_3a

    :cond_36
    goto :goto_3a

    :cond_37
    or-int/lit8 v0, v0, 0x1

    nop

    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_33
        :pswitch_30
    .end packed-switch
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .registers 2

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0}, Lcom/android/server/am/SnapWindowManager;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapWindowManager()Lcom/android/server/am/SnapWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    return-object v0
.end method

.method public getStayFocusActivityPrefVal()Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowEnableController;->getStayFocusActivityPrefVal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    return v2

    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTargetStackRect(I)Landroid/graphics/Rect;
    .registers 3

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SnapWindowManager;->getTargetStackRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskIdFromPackageName(Ljava/lang/String;)I
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, -0x1

    if-nez v2, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget-object v4, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v0, "MultiWindowManager_Bixby"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTaskIdFromPackageName, packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_2d
    if-ge v5, v0, :cond_a9

    iget-object v6, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_3b
    if-ltz v7, :cond_a4

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_5d
    if-ltz v13, :cond_9c

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    if-eqz v14, :cond_95

    iget-object v15, v14, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_95

    iget-object v15, v14, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_95

    const-string v10, "MultiWindowManager_Bixby"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string/jumbo v0, "getTaskIdFromPackageName, taskId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    monitor-exit v4
    :try_end_91
    .catchall {:try_start_c .. :try_end_91} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :cond_95
    move/from16 v16, v0

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v16

    goto :goto_5d

    :cond_9c
    move/from16 v16, v0

    goto :goto_49

    :cond_9f
    move/from16 v16, v0

    add-int/lit8 v7, v7, -0x1

    goto :goto_3b

    :cond_a4
    move/from16 v16, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_a9
    :try_start_a9
    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_ae
    move-exception v0

    :try_start_af
    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getTopRecentTaskInfo(I)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "getTopRecentTaskInfo()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_5a

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_29

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_29
    :try_start_29
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_4c

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_36

    goto :goto_4c

    :cond_36
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/am/RecentTasks;->createRecentTaskInfo(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_4c
    :goto_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_54

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_54
    move-exception v3

    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTopTaskSnapshot(I)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v2, "getTopTaskSnapshot()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_67

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_29

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_29
    :try_start_29
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_59

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_36

    goto :goto_59

    :cond_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_61

    :try_start_37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->getSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_67

    if-ne v3, v4, :cond_54

    nop

    move-object v5, v2

    goto :goto_55

    :cond_54
    nop

    :goto_55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_59
    :goto_59
    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_61
    move-exception v3

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getVisibleTasks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getVisibleTasks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideSideScreen()V
    .registers 1

    return-void
.end method

.method public initializePairActivityModeLocked(Lcom/android/server/am/TaskRecord;Z)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iput-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    :cond_5
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_d
    if-ltz v2, :cond_28

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_25

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1c

    goto :goto_25

    :cond_1c
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_25

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPairWindowingMode(I)V

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_28
    return-void
.end method

.method public isCornerGestureEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isFrontStack(Lcom/android/server/am/TaskRecord;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_e

    return v2

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    if-ne v1, v3, :cond_1a

    const/4 v2, 0x1

    nop

    :cond_1a
    return v2
.end method

.method public isFullscreenResizable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFullscreenSupportsSplitScreenWindowingMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isLaunchingPairActivitiesLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    return v0
.end method

.method public isMultiResumeEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isSnapTargetHideStatusbar()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSnapWindowInternal()Lcom/android/server/wm/SnapWindowInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SnapWindowInternal;->isSnapTargetHideStatusbar()Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapWindowEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isSnapWindowRunning()Z
    .registers 2

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0}, Lcom/android/server/am/SnapWindowManager;->isSnapWindowRunning()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isStayFocusActivityEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public maximizeSideScreen()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "maximizeSideScreen()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_61

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_32

    const-string v4, "MultiWindowManager"

    const-string/jumbo v5, "maximizeSideScreen: primary split-screen stack not found."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_32
    :try_start_32
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/am/SideScreenManagerService;->setMaximizing(Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    const-string/jumbo v4, "maximizeSideScreen"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/SideScreenManagerService;->setMaximizing(Z)V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mSideScreenService:Lcom/android/server/am/SideScreenManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/am/SideScreenManagerService;->hideSideScreen(Z)V

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_5b

    :try_start_53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_5b
    move-exception v3

    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public minimizeAllFreeformTasks(IZI)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "minimizeAllFreeformTasks"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_26

    :try_start_12
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/server/am/FreeformController;->minimizeAllTasksInFreeformLocked(IZIZ)Z

    move-result v3
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_21

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v3

    :catchall_21
    move-exception v3

    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public minimizeFreeformTask(I)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "minimizeFreeformTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_5d

    :try_start_12
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2f

    :cond_2d
    const-string v3, ""

    :goto_2f
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minimizeFreeformTask: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/FreeformController;->moveTaskToBackLocked(IZ)Z
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_58

    :try_start_4f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_5d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_58
    move-exception v3

    :try_start_59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "moveActivityTaskToBack"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_2b

    xor-int/lit8 v3, p2, 0x1

    :try_start_14
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v4, v3, p3}, Lcom/android/server/am/FreeformController;->moveTaskToBackLocked(IZ)Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_26

    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_26
    move-exception v3

    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAlreadyRunningOnDockedStack()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/DividerCloseNotificationController;->notifyAlreadyRunningOnDockedStack()V

    return-void
.end method

.method public notifyApplyFreeformMinimizePolicy(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyApplyFreeformMinimizePolicy ::  taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method notifyFocusStackChangeLocked(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;III)V
    .registers 11

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFreefromWindowAnimationEnd(IIILandroid/graphics/Rect;)V
    .registers 9

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLidStateChanged(Z)V
    .registers 2

    return-void
.end method

.method notifyMultiWindowEnableChangeLocked(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifySideScreenDockSideChanged(I)V
    .registers 2

    return-void
.end method

.method public notifySideScreenImeVisibilityChanged(ILandroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public notifySideScreenMenuVisibilityChanged(IZ)V
    .registers 3

    return-void
.end method

.method public notifySideScreenMinimizedChanged(Z)V
    .registers 2

    return-void
.end method

.method public notifySideScreenModeChanged(I)V
    .registers 2

    return-void
.end method

.method public notifySideScreenTaskSwitched(I)V
    .registers 2

    return-void
.end method

.method notifySnapWindowVisibilityChangeLocked(ZLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConfigurationChangedLocked(I)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_99

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadResources()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_21
    if-ltz v3, :cond_8f

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->updateMinMaxSizeIfNeeded()V

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_8b

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v8, :cond_69

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_69

    :cond_52
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->scale(F)V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v1, v1, v1}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    goto :goto_8b

    :cond_69
    :goto_69
    const-string v8, "MultiWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onConfigurationChangedLocked: Skip to scale bounds by densityChange, mLastNonFullscreenBounds="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_8b
    :goto_8b
    goto :goto_2f

    :cond_8c
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_8f
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastGlobalDensity:I

    :cond_99
    and-int/lit16 v1, p1, 0x1c80

    if-eqz v1, :cond_a4

    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_a4
    return-void
.end method

.method public onCoreStateChanged(I)V
    .registers 10

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->retrieveMultiWindowSettings()V

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v0

    const-string/jumbo v1, "mw_on"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_34

    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/am/FreeformController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v0

    const-string/jumbo v1, "mw_off"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$9-wlgO18folOHSZHYcGitX6LMJo;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$MultiWindowManagerService$9-wlgO18folOHSZHYcGitX6LMJo;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    :cond_34
    :goto_34
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_9b

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_57

    :try_start_4c
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleLetActivityStayFocus(Landroid/os/IBinder;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v1

    :cond_57
    :goto_57
    goto :goto_9b

    :cond_58
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_60
    if-ltz v0, :cond_9b

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6e
    if-ltz v2, :cond_98

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-nez v4, :cond_95

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_95

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_95

    :try_start_8a
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->scheduleReleaseActivityFocus(Landroid/os/IBinder;)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_93} :catch_94

    goto :goto_95

    :catch_94
    move-exception v5

    :cond_95
    :goto_95
    add-int/lit8 v2, v2, -0x1

    goto :goto_6e

    :cond_98
    add-int/lit8 v0, v0, -0x1

    goto :goto_60

    :cond_9b
    :goto_9b
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_ed

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_b2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeNonFocusedStackTaskIfNeededLocked(I)Z

    :cond_b2
    goto :goto_ed

    :cond_b3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_bc
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v1, :cond_e8

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_cc
    if-ltz v5, :cond_e5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-nez v7, :cond_e2

    iget-object v7, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v7, :cond_df

    goto :goto_e2

    :cond_df
    invoke-virtual {v6, v3, v3, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    :cond_e2
    :goto_e2
    add-int/lit8 v5, v5, -0x1

    goto :goto_cc

    :cond_e5
    add-int/lit8 v1, v1, -0x1

    goto :goto_bc

    :cond_e8
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    :cond_ed
    :goto_ed
    return-void
.end method

.method public onPostCoreStateChanged(I)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiWindowEnableChangeLocked(Z)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShellCommand:Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public postStartPairActivities(Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->detachSplitScreenPrimaryStackIfNeededLocked()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    move-object v2, v4

    :goto_2b
    if-eqz v2, :cond_30

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_31

    :cond_30
    move-object v5, v4

    :goto_31
    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    goto :goto_40

    :cond_3f
    move-object v6, v4

    :goto_40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_52

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    nop

    :cond_52
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "1004"

    const-string v8, "Split view _app pair"

    invoke-static {v5, v7, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public preStartPairActivities()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLaunchingPairActivities:Z

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public putSideScreenMenuTouchableRegion(Landroid/graphics/Rect;I)V
    .registers 3

    return-void
.end method

.method public registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "registerDividerCloseEventListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/DividerCloseNotificationController;->registerEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "registerMultiWindowEventListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

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

.method public registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

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

.method public registerSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .registers 2

    return-void
.end method

.method public removeFocusedTask()Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    move-object v2, v3

    goto :goto_2b

    :cond_17
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    move-object v2, v4

    :cond_2b
    :goto_2b
    if-eqz v1, :cond_b5

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_b5

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_92

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const-string v6, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeFocusedTask, freeformStack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_91

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_91

    const-string v6, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeFocusedTask, topTask="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_91
    goto :goto_bd

    :cond_92
    :try_start_92
    const-string v3, "MultiWindowManager_Bixby"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeFocusedTask, focusedTask="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_92 .. :try_end_b1} :catchall_c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :cond_b5
    :try_start_b5
    const-string v3, "MultiWindowManager_Bixby"

    const-string/jumbo v4, "removeFocusedTask, There is no FocesedTask!! "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bd
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_c3
    move-exception v1

    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeFreeformTasks(I)Z
    .registers 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.REMOVE_TASKS"

    const-string/jumbo v3, "removeFreeformTasks()"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_7d

    :try_start_17
    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    and-int/lit8 v11, p1, 0x2

    if-eqz v11, :cond_4c

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFreeformStackMinimized()Z

    move-result v11

    if-nez v11, :cond_4c

    goto :goto_35

    :cond_4c
    and-int/lit8 v11, p1, 0x1

    if-eqz v11, :cond_5b

    iget-object v11, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v12, v10, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v11

    if-nez v11, :cond_5b

    goto :goto_35

    :cond_5b
    iget-object v11, v1, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v12, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v13, 0x0

    const-string/jumbo v14, "removeFreeformTasks()"

    move-object v15, v0

    const/4 v0, 0x1

    invoke-virtual {v11, v12, v0, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v0
    :try_end_69
    .catchall {:try_start_17 .. :try_end_69} :catchall_78

    or-int/2addr v2, v0

    nop

    move-object v0, v15

    goto :goto_35

    :cond_6d
    move-object v15, v0

    goto :goto_21

    :cond_6f
    :try_start_6f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_7d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_78
    move-exception v0

    :try_start_79
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_7d
    move-exception v0

    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_7d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .registers 15

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v1, "MultiWindowManager_Bixby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSearchedTask, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/android/server/am/ActivityDisplay;->getStacks(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v2

    :goto_60
    if-ltz v10, :cond_9c

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_99

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_99

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_99

    const-string v4, "MultiWindowManager_Bixby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removeSearchedTask, task="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_a4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_99
    add-int/lit8 v10, v10, -0x1

    goto :goto_60

    :cond_9c
    goto :goto_4d

    :cond_9d
    goto :goto_39

    :cond_9e
    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_a4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    :catchall_a4
    move-exception v1

    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    iget-object v0, v0, Lcom/android/server/am/FreeformController;->mWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformWindowController;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resizeDockedStack(I)V
    .registers 10

    if-ltz p1, :cond_39

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    goto :goto_39

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/MultiWindowManagerInternal;->getSpecificTargetDockedBounds(ILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_2e

    :cond_1f
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_39
    :goto_39
    return-void
.end method

.method public resizeSideScreen(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public resizeSideScreenStack(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public resizeSideScreenStackWithScale(IZ)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public resizeSideScreenWithOtherSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method scheduleBindMinimizeContainerService(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method scheduleUnbindMinimizeContainerService(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCornerGestureEnabled(Z)V
    .registers 7

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setCornerGestureEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setCornerGestureEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_42

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->CORNER_GESTURE_DYNAMIC_ENABLED:Z

    if-ne v4, p1, :cond_2e

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_3c

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setFreeformAlpha(Landroid/os/IBinder;F)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformWindowController()Lcom/android/server/wm/FreeformWindowController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/FreeformWindowController;->setFreeformAlpha(Landroid/os/IBinder;F)V

    return-void
.end method

.method public setMaxVisibleFreeformCount(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "setMaxVisibleFreeformCount"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_27

    :try_start_14
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v3, p1}, Lcom/android/server/am/FreeformController;->setMaxVisibleFreeformCountLocked(I)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_22

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_22
    move-exception v3

    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setMaxVisibleFreeformCountForDex(II)V
    .registers 3

    return-void
.end method

.method public setMultiResumeEnabled(Z)V
    .registers 7

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setMultiResumeEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setMultiResumeEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_42

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MULTI_RESUME_DYNAMIC_ENABLED:Z

    if-ne v4, p1, :cond_2e

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MultiWindowEnableController;->setMultiResumeEnabled(Z)V

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_3c

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "setMultiWindowEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v2, "setMultiWindowEnabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1e
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_38

    :try_start_21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/MultiWindowEnableController;->setEnableForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_32

    :try_start_2a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_38

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_32
    move-exception v3

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSideScreenMenuMode(II)V
    .registers 3

    return-void
.end method

.method public setSideScreenMode(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    return-void
.end method

.method public setSideScreenModeAndResizeStacks(Landroid/graphics/Rect;I)V
    .registers 3
    .param p2    # I
        .annotation build Lcom/samsung/android/internal/policy/SideScreenModeUtils$SideScreenMode;
        .end annotation
    .end param

    return-void
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/SnapWindowManager;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public setSnapWindowEnabled(Z)V
    .registers 7

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setSnapWindowEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setSnapWindowEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_42

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-ne v4, p1, :cond_2e

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MultiWindowEnableController;->setSnapWindowEnabled(Z)V

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_3c

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setStayFocusActivityEnabled(Z)V
    .registers 7

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setStayFocusActivityEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v3, "setStayFocusActivityEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_42

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-ne v4, p1, :cond_2e

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnableController:Lcom/android/server/am/MultiWindowEnableController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/MultiWindowEnableController;->setStayFocusActivityEnabled(Z)V

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_3c

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_42

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/MultiWindowManagerInternal;->setMultiWindowManagerService(Lcom/samsung/android/multiwindow/IMultiWindowManager;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/FreeformController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mEnsureDockedViewManager:Lcom/android/server/am/EnsureDockedViewManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/EnsureDockedViewManager;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SnapWindowManager;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method showNotSupportMultiWindowToast(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotSupportMultiWindowToast: r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showSideScreen()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public showSideScreenRecentsActivity(IZ)V
    .registers 3

    return-void
.end method

.method public showSideScreenRecentsActivityInPlace(I)V
    .registers 2

    return-void
.end method

.method public showSideScreenTasks()V
    .registers 1

    return-void
.end method

.method public showSnapWindowGuideView(I)V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSnapWindowManager:Lcom/android/server/am/SnapWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/SnapWindowManager;->showSnapWindowGuideView(I)V

    :cond_9
    return-void
.end method

.method public startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreeformController;->startFreeformAtCornerGesture(ILandroid/graphics/Rect;)V

    return-void
.end method

.method public startMovingSideScreen(II)V
    .registers 3

    return-void
.end method

.method public startMovingTopTask(IIII)V
    .registers 5

    return-void
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_9d

    :try_start_a
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    :goto_16
    if-eqz v3, :cond_79

    if-nez v4, :cond_1b

    goto :goto_79

    :cond_1b
    sget-boolean v5, Lcom/android/server/am/MultiWindowManagerService;->DEBUG:Z

    if-eqz v5, :cond_4e

    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startResizingFreeformTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", pos=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), isPointerInput="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    iget-object v5, v5, Lcom/android/server/am/FreeformController;->mWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, p2, p3, p4, v6}, Lcom/android/server/wm/FreeformWindowController;->startResizingFreeformTask(IIZI)Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v7, "startResizingFreeformTask"

    invoke-virtual {v6, v5, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_70

    iget-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_70
    .catchall {:try_start_a .. :try_end_70} :catchall_98

    :cond_70
    :try_start_70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_9d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_79
    :goto_79
    :try_start_79
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startResizingFreeformTask: failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_79 .. :try_end_90} :catchall_98

    :try_start_90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_9d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_98
    move-exception v3

    :try_start_99
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_9d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public swapTaskWindowingModeFromSubWindowHandler(II)V
    .registers 3

    return-void
.end method

.method public swapTasksInSplitScreenMode()V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "swapTasksInSplitScreenMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_73

    :try_start_14
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v4, :cond_50

    if-eqz v5, :cond_50

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v6

    if-nez v6, :cond_35

    goto :goto_50

    :cond_35
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingModeLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v8, :cond_66

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v9, "SPAC"

    const-string v10, "Switch"

    invoke-static {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :cond_50
    :goto_50
    const-string v6, "MultiWindowManager"

    const-string/jumbo v7, "swapTasksInSplitScreenMode. Unable to swap."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_58} :catch_62
    .catchall {:try_start_14 .. :try_end_58} :catchall_60

    :try_start_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_73

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_60
    move-exception v3

    goto :goto_6f

    :catch_62
    move-exception v3

    :try_start_63
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    :cond_66
    :goto_66
    :try_start_66
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_73

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_6f
    :try_start_6f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public swapWindowingMode(II)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "swapWindowingMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_35

    :try_start_14
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->swapWindowingModeLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_30

    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_30
    move-exception v3

    :try_start_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toggleSideScreen()V
    .registers 1

    return-void
.end method

.method public undockSideScreen()V
    .registers 1

    return-void
.end method

.method public unregisterDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "unregisterDividerCloseEventListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mDividerCloseNotificationController:Lcom/android/server/am/DividerCloseNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/DividerCloseNotificationController;->unregisterEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return-void
.end method

.method public unregisterMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string/jumbo v2, "unregisterMultiWindowEventListener()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mRemoteMultiWindowEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method

.method public unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

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

.method public unregisterSideScreenEventListener(Lcom/samsung/android/multiwindow/ISideScreenEventListener;)V
    .registers 2

    return-void
.end method
