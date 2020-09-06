.class public Lcom/android/server/vr/GearVrManagerService;
.super Lcom/android/server/SystemService;
.source "GearVrManagerService.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/GearVrManagerService$LocalService;,
        Lcom/android/server/vr/GearVrManagerService$GearVrHandler;
    }
.end annotation


# static fields
.field private static final ACTION_HMT_PENDING_LAUNCH:Ljava/lang/String; = "com.samsung.intent.action.HMT_PENDING_LAUNCH"

.field private static final MESSAGE_VR_OVERLAY_RESTRICTION_STATE_CHANGE:I = 0x1

.field private static final MESSAGE_VR_STATE_CHANGE:I = 0x0

.field private static final SCHED_RESET_ON_FORK:I = 0x40000000

.field private static final TAG:Ljava/lang/String; = "GearVrManagerService"


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

.field private mContext:Landroid/content/Context;

.field private mDeveloperMode:I

.field private mDeviceProvisoned:I

.field private mDeviceType:I

.field private mDocked:Z

.field private final mGearVrManager:Lcom/samsung/android/vr/IGearVrManagerService;

.field private mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

.field private mGearVrManagerServiceReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasHmtFeature:Z

.field private mHeadSetPlugged:Z

.field private mIsAwake:Z

.field private mIsHomeKeyBlocked:Z

.field private mKeyguardShowing:Z

.field private mLastRequestedVrComponent:Landroid/content/ComponentName;

.field private mLastVrActivityType:I

.field private mLaunchMode:I

.field private final mLock:Ljava/lang/Object;

.field private mMounted:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPersistentVrModeEnabled:Z

.field private mReadyForVrMode:Z

.field private mRecentsMode:I

.field private final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/vr/IGearVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSetupWizardComplete:I

.field private mSystemUiUid:I

.field private mTaState:I

.field private mUPSMEnabled:Z

.field private final mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

.field private mUserUnlocked:Z

.field private mVr2dSurfaceCallback:Lcom/samsung/android/vr/IGearVrSurfaceCallback;

.field private mVrModeEnabled:Z

.field private mVrServiceAvailable:Z

.field private mVrSystemUiMode:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field packageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mReadyForVrMode:Z

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mIsHomeKeyBlocked:Z

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerServiceReady:Z

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mUPSMEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHeadSetPlugged:Z

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:I

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrSystemUiMode:I

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRecentsMode:I

    iput v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceProvisoned:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/vr/GearVrManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/GearVrManagerService$1;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->packageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/server/vr/GearVrManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/vr/GearVrManagerService$2;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManager:Lcom/samsung/android/vr/IGearVrManagerService;

    new-instance v0, Lcom/android/server/vr/GearVrManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/vr/GearVrManagerService$5;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;-><init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/os/SemAffinityControl;

    invoke-direct {v0}, Lcom/samsung/android/os/SemAffinityControl;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/GearVrManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->handleVrStateChange(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->handleOverlayRestriction(Z[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->startVrRecents()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/vr/GearVrManagerService;Landroid/app/ApplicationErrorReport;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->notifyVrAppError(Landroid/app/ApplicationErrorReport;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/vr/GearVrManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isHomeKeyBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/vr/GearVrManagerService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getVrRecentsMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/vr/GearVrManagerService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getVrSystemUiMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/vr/GearVrManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->hasHmtFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/vr/GearVrManagerService;Landroid/content/pm/ActivityInfo;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->getVrActivityType(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;II)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->isOverlayRestrictionWindow(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/vr/GearVrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/vr/GearVrManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrServiceAvailableLocked()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/vr/GearVrManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/vr/GearVrManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;II)[I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/vr/GearVrManagerService;Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/vr/GearVrManagerService;)[I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/vr/GearVrManagerService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/vr/GearVrManagerService;IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->addStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingSystemPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/vr/GearVrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/vr/GearVrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setHomeKeyBlocked(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/vr/GearVrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setReadyForVrMode(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/vr/GearVrManagerService;I[I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->setThreadAffinity(I[I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/vr/GearVrManagerService;ILjava/lang/String;I)[I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->getThreadId(ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->readSysNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->removeStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->removeSysNode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/vr/GearVrManagerService;Ljava/lang/String;III)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/vr/GearVrManagerService;II)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->setThreadGroup(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/vr/GearVrManagerService;III)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->setThreadScheduler(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/vr/GearVrManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setSystemMouseControlType(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/vr/GearVrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setSystemMouseShowMouseEnabled(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/vr/GearVrManagerService;Landroid/view/Surface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setVr2dSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/vr/GearVrManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateSettingsLocked()V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/server/vr/GearVrManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mUserUnlocked:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/vr/GearVrManagerService;Lcom/samsung/android/vr/IGearVrSurfaceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setVr2dSurfaceCallback(Lcom/samsung/android/vr/IGearVrSurfaceCallback;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/vr/GearVrManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/vr/GearVrManagerService;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->setDockState(ZI)V

    return-void
.end method

.method static synthetic access$5302(Lcom/android/server/vr/GearVrManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mUPSMEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/vr/GearVrManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/GearVrManagerService;->readyForVrMode(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/vr/GearVrManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/GearVrManagerService;->isStartActivityAllowed(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/vr/GearVrManagerService;ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerService;->notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->startVrHome()V

    return-void
.end method

.method private acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .registers 11

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/vr/GearVrManagerExternal;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I

    move-result-object v0

    return-object v0
.end method

.method private addStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 5

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method private broadcastRemoteCallbacks(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6
    if-lez v0, :cond_18

    add-int/lit8 v0, v0, -0x1

    :try_start_a
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrStateCallbacks;->onGearVrStateChanged(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    goto :goto_6

    :cond_18
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump GearVrManagerService from pid="

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

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_31
    if-eqz p3, :cond_1da

    array-length v0, p3

    if-eqz v0, :cond_1da

    const-string v0, "-a"

    const/4 v1, 0x0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto/16 :goto_1da

    :cond_43
    array-length v0, p3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_ec

    const-string/jumbo v0, "set"

    aget-object v4, p3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    aget-object v0, p3, v2

    const-string v1, "dock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto/16 :goto_ea

    :cond_62
    const-string/jumbo v1, "undock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-direct {p0, v3}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto/16 :goto_ea

    :cond_70
    const-string v1, "abnormal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_ea

    :cond_7d
    const-string/jumbo v1, "tdock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const/16 v1, 0x1001

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_ea

    :cond_8c
    const-string/jumbo v1, "tundock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    const/16 v1, 0x1002

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_ea

    :cond_9b
    const-string/jumbo v1, "mount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_ea

    :cond_aa
    const-string/jumbo v1, "unmount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_ea

    :cond_b9
    const-string v1, "headset_plugged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    const/16 v1, 0x4000

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_ea

    :cond_c7
    const-string v1, "headset_unplugged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    const v1, 0x8000

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_ea

    :cond_d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown set option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_ea
    goto/16 :goto_560

    :cond_ec
    array-length v0, p3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_197

    const-string/jumbo v0, "set"

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    aget-object v0, p3, v2

    aget-object v1, p3, v3

    :try_start_ff
    const-string/jumbo v2, "state"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_114

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->notifyDeviceEventChanged(I)V

    goto :goto_17f

    :cond_114
    const-string/jumbo v2, "vr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V

    goto :goto_17f

    :cond_125
    const-string/jumbo v2, "persistent_vr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V

    goto :goto_17f

    :cond_136
    const-string/jumbo v2, "vr2d_display"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->setVr2dDisplayId(I)V

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setVr2dDisplayId(I)V

    goto :goto_17f

    :cond_15a
    const-string/jumbo v2, "relay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->setRelayMode(I)V

    goto :goto_17f

    :cond_16b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown set option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17f
    .catch Ljava/lang/NumberFormatException; {:try_start_ff .. :try_end_17f} :catch_180

    :goto_17f
    goto :goto_195

    :catch_180
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_195
    goto/16 :goto_560

    :cond_197
    const-string v0, "Dump current vr state, or:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set vr <true/false>"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state directly."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set state <value>"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state value directly."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set dock"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state docked."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set undock"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state undocked."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set mount"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state mount."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set unmount"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state unmount."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_560

    :cond_1da
    :goto_1da
    const-string v0, "********* Dump of GearVrManagerService *********"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "VR API Version:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    VRAPI=24"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    VRAPI_MINOR=0"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    VRAPI_PATCH=1"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    GEAR_VR_MANAGER_SERVICE_VERSION_CODE=3"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Features:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SUPPORT_HMT=true"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHasHmtFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mUPSMEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mUPSMEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mReadyForVrMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mReadyForVrMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mGearVrManagerServiceReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerServiceReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDeviceProvisoned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceProvisoned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mVrServiceAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mUserUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mUserUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isGearVrReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMounted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mTaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mPersistentVrModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHeadSetPlugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHeadSetPlugged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSetupWizardComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDeveloperMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLaunchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mVrSystemUiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrSystemUiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrSystemUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRecentsMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRecentsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRecentsMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastRequestedVrComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLastRequestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isDock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isMount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isVrMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isPersistVrMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isHomeKeyBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isHomeKeyBlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Remote Callbacks:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_521
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_53a

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-lez v2, :cond_538

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_538
    move v1, v2

    goto :goto_521

    :cond_53a
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "********* Dump of GearVrManagerExternal *********"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    if-eqz v1, :cond_55a

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v1

    if-eqz v1, :cond_55a

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerExternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_55f

    :cond_55a
    const-string v1, "mGearVrManagerExternal is not ready to dump."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_55f
    nop

    :goto_560
    return-void
.end method

.method private enforceCallingPermission(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerExternal;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method private enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/vr/GearVrManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method private enforceCallingSystemPermission(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_f

    return-void

    :cond_f
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_18

    return-void

    :cond_18
    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mSystemUiUid:I

    if-ne v1, v2, :cond_1d

    return-void

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", you need system uid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GearVrManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", you need system uid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPowerLevelState()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->getPowerLevelState()I

    move-result v0

    return v0
.end method

.method private getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerExternal;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThreadId(ILjava/lang/String;I)[I
    .registers 14

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_2b
    if-ge v6, v4, :cond_a0

    aget-object v7, v1, v6

    :try_start_2f
    new-instance v8, Ljava/io/File;

    const-string v9, "comm"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v5, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    packed-switch p3, :pswitch_data_c2

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_8e

    :pswitch_46
    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :pswitch_58
    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :pswitch_6a
    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :pswitch_7c
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :goto_8e
    if-eqz v9, :cond_9b

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_9b} :catch_9c

    :cond_9b
    :goto_9b
    goto :goto_9d

    :catch_9c
    move-exception v8

    :goto_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_a0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    nop

    :goto_ad
    move v4, v5

    array-length v5, v2

    if-ge v4, v5, :cond_c0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v5, v4, 0x1

    goto :goto_ad

    :cond_c0
    return-object v2

    :cond_c1
    return-object v2

    :pswitch_data_c2
    .packed-switch 0x2
        :pswitch_7c
        :pswitch_6a
        :pswitch_58
        :pswitch_46
    .end packed-switch
.end method

.method private getVrActivityType(Landroid/content/pm/ActivityInfo;)I
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_c

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz p1, :cond_12

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    nop

    :cond_12
    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    const-string v3, "com.samsung.android.vr.application.mode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "vr_only"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v2, 0x1

    return v2

    :cond_26
    const-string v4, "dual"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    if-eqz v0, :cond_8e

    const-string v4, "com.samsung.android.vr.activity"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    const/4 v4, 0x1

    const-string v5, "com.samsung.android.vr.activity.config"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    const-string v5, "com.samsung.android.vr.activity.config"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_4e
    if-ge v2, v7, :cond_8d

    aget-object v8, v6, v2

    const-string v9, "allow_non_vr_activity"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    or-int/lit8 v4, v4, 0x10

    goto :goto_8a

    :cond_5d
    const-string v9, "allow_bypass_setup_wizard"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    or-int/lit8 v4, v4, 0x20

    goto :goto_8a

    :cond_68
    const-string v9, "allow_skip_pending_launch"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    or-int/lit8 v4, v4, 0x40

    goto :goto_8a

    :cond_73
    const-string/jumbo v9, "not_focusable"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    or-int/lit16 v4, v4, 0x100

    goto :goto_8a

    :cond_7f
    const-string/jumbo v9, "skip_move_stack"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8a

    or-int/lit16 v4, v4, 0x2000

    :cond_8a
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_8d
    return v4

    :cond_8e
    return v2
.end method

.method private getVrRecentsMode()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mRecentsMode:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getVrSystemUiMode()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrSystemUiMode:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private handleOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 20

    move-object/from16 v1, p0

    const-string v0, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOverlayRestriction enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " exemptedPackages="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p3

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v13, v4

    :try_start_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vr/GearVrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AppOpsManager;
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_75

    if-nez p2, :cond_4c

    const/4 v0, 0x0

    :try_start_45
    new-array v0, v0, [Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_49

    move-object v8, v0

    goto :goto_4e

    :catchall_49
    move-exception v0

    move-wide v5, v13

    goto :goto_77

    :cond_4c
    move-object/from16 v8, p2

    :goto_4e
    const/16 v5, 0x18

    :try_start_50
    iget-object v7, v1, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move v6, v3

    move v9, v15

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    const/16 v10, 0x4e

    iget-object v12, v1, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_75

    move-object v9, v4

    move v11, v3

    move-wide v5, v13

    move-object v13, v8

    move v14, v15

    :try_start_60
    invoke-virtual/range {v9 .. v14}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    const/16 v10, 0x2d

    iget-object v12, v1, Lcom/android/server/vr/GearVrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move-object v9, v4

    move v11, v3

    move-object v13, v8

    move v14, v15

    invoke-virtual/range {v9 .. v14}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_73

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_73
    move-exception v0

    goto :goto_77

    :catchall_75
    move-exception v0

    move-wide v5, v13

    :goto_77
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private handleVrStateChange(II)V
    .registers 6

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleVrStateChange state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerService;->broadcastRemoteCallbacks(II)V

    return-void
.end method

.method private hasHmtFeature()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z

    return v0
.end method

.method private isAllowBypassSetupWizard(Ljava/lang/String;I)Z
    .registers 4

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->isGearVrPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isAllowNonVrActivity(Ljava/lang/String;I)Z
    .registers 4

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->isGearVrPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isAllowSkipPendingLaunch(Ljava/lang/String;I)Z
    .registers 4

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->isGearVrPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isAllowStartAcivityForSystemPackage(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.android.nfc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGearVrPackage(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "com.samsung.android.hmt.vrsystem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "com.samsung.android.app.vrsetupwizard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "com.samsung.android.app.vrsetupwizardstub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private isHomeKeyBlocked()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsHomeKeyBlocked:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isOverlayRestrictionWindow(Ljava/lang/String;II)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    if-gt v1, p3, :cond_14

    const/16 v1, 0xbb7

    if-gt p3, v1, :cond_14

    const/16 v1, 0x7ee

    if-eq p3, v1, :cond_13

    const/16 v1, 0x7f5

    if-eq p3, v1, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    return v0

    :cond_14
    return v0
.end method

.method private isStartActivityAllowed(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDeveloperMode()Z

    move-result v0

    if-nez v0, :cond_31

    if-nez p2, :cond_31

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/vr/GearVrManagerService;->isAllowNonVrActivity(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/vr/GearVrManagerService;->isAllowStartAcivityForSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, 0x1

    :goto_32
    return v0
.end method

.method private isVrServiceInstalled()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_10

    move-object v0, v2

    const/4 v2, 0x1

    return v2

    :catch_10
    move-exception v1

    return v0
.end method

.method private isVrServiceInstalledAndEnabled()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceInstalled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServicePackageEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceSystemServiceComponentEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mUserUnlocked:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private isVrServicePackageEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    nop

    :cond_14
    :goto_14
    return v1
.end method

.method private isVrServiceSystemServiceComponentEnabled()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.hmt.vrsvc"

    const-string v3, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    nop

    :cond_1b
    :goto_1b
    return v1
.end method

.method private notifyDeviceEventChanged(I)V
    .registers 5

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDeviceEventChanged event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_8e

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown device state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :sswitch_46
    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V

    goto :goto_8d

    :sswitch_4a
    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->setPersistentVrMode(Z)V

    goto :goto_8d

    :sswitch_4e
    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->setHeadSetPlugged(Z)V

    goto :goto_8d

    :sswitch_52
    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->setHeadSetPlugged(Z)V

    goto :goto_8d

    :sswitch_56
    invoke-direct {p0, v2, v0}, Lcom/android/server/vr/GearVrManagerService;->setDockState(ZI)V

    goto :goto_8d

    :sswitch_5a
    invoke-direct {p0, v2, v0}, Lcom/android/server/vr/GearVrManagerService;->setDockState(ZI)V

    goto :goto_8d

    :sswitch_5e
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/server/vr/GearVrManagerService;->setTaState(I)V

    goto :goto_8d

    :sswitch_64
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/server/vr/GearVrManagerService;->setTaState(I)V

    goto :goto_8d

    :sswitch_6a
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/vr/GearVrManagerService;->setTaState(I)V

    goto :goto_8d

    :sswitch_70
    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V

    goto :goto_8d

    :sswitch_74
    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V

    goto :goto_8d

    :sswitch_78
    invoke-direct {p0, v2}, Lcom/android/server/vr/GearVrManagerService;->setMountState(Z)V

    goto :goto_8d

    :sswitch_7c
    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->setMountState(Z)V

    goto :goto_8d

    :sswitch_80
    const/4 v0, -0x1

    invoke-direct {p0, v2, v0}, Lcom/android/server/vr/GearVrManagerService;->setDockState(ZI)V

    goto :goto_8d

    :sswitch_85
    invoke-direct {p0, v2, v1}, Lcom/android/server/vr/GearVrManagerService;->setDockState(ZI)V

    goto :goto_8d

    :sswitch_89
    invoke-direct {p0, v1, v1}, Lcom/android/server/vr/GearVrManagerService;->setDockState(ZI)V

    nop

    :goto_8d
    return-void

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_89
        0x2 -> :sswitch_85
        0x4 -> :sswitch_80
        0x10 -> :sswitch_7c
        0x20 -> :sswitch_78
        0x40 -> :sswitch_74
        0x80 -> :sswitch_70
        0x100 -> :sswitch_6a
        0x200 -> :sswitch_64
        0x400 -> :sswitch_5e
        0x1001 -> :sswitch_5a
        0x1002 -> :sswitch_56
        0x4000 -> :sswitch_52
        0x8000 -> :sswitch_4e
        0x10040 -> :sswitch_4a
        0x10080 -> :sswitch_46
    .end sparse-switch
.end method

.method private notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    :try_start_c
    iget v4, p0, Lcom/android/server/vr/GearVrManagerService;->mLastVrActivityType:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_13

    move v4, v3

    goto :goto_14

    :cond_13
    move v4, v2

    :goto_14
    if-eqz p2, :cond_18

    move v2, v3

    nop

    :cond_18
    if-eq v4, v1, :cond_1d

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->setVrMode(Z)V

    :cond_1d
    if-nez v1, :cond_3e

    if-nez v2, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_3e

    :cond_2e
    if-eqz v4, :cond_32

    if-eqz v1, :cond_38

    :cond_32
    if-nez p2, :cond_43

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mLastRequestedVrComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_43

    :cond_38
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerExternal;->notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    goto :goto_43

    :cond_3e
    :goto_3e
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerExternal;->notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    :cond_43
    :goto_43
    iput p1, p0, Lcom/android/server/vr/GearVrManagerService;->mLastVrActivityType:I

    iput-object p2, p0, Lcom/android/server/vr/GearVrManagerService;->mLastRequestedVrComponent:Landroid/content/ComponentName;

    monitor-exit v0

    return-void

    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_15
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_13
    move-exception v2

    goto :goto_55

    :catch_15
    move-exception v3

    :try_start_16
    const-string v4, "GearVrManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_13

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catch_35
    move-exception v3

    :try_start_36
    const-string v4, "GearVrManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_13

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private readyForVrMode(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z
    .registers 13

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9c

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDeveloperMode()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "GearVrManagerService"

    const-string/jumbo v4, "setupwizard completed, developer mode enabled! start launch!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_27

    const-string v3, "GearVrManagerService"

    const-string/jumbo v4, "setupwizard completed! launch mode START_IMMEDIATELY. start launch!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_27
    invoke-direct {p0, v1, p5}, Lcom/android/server/vr/GearVrManagerService;->isAllowSkipPendingLaunch(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "GearVrManagerService"

    const-string v4, "allow skip WaitActivity! start launch!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_35
    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_67

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v3

    if-nez v3, :cond_67

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v3

    if-nez v3, :cond_67

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v3

    if-nez v3, :cond_67

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.HMT_PENDING_LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    const-string v2, "GearVrManagerService"

    const-string/jumbo v3, "setupwizard completed! but not hmt not connected! vrMode disabled. start splash launch!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "splash"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_92

    :cond_67
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v3

    if-nez v3, :cond_93

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v3

    if-nez v3, :cond_93

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_93

    :cond_7a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.HMT_PENDING_LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    const-string v2, "GearVrManagerService"

    const-string/jumbo v3, "setupwizard completed! but not hmt not connected! start pending launch!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "reason"

    const-string v3, "hmt"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_92
    goto :goto_ee

    :cond_93
    :goto_93
    const-string v3, "GearVrManagerService"

    const-string/jumbo v4, "setupwizard completed, vr mode! start launch!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p5}, Lcom/android/server/vr/GearVrManagerService;->isAllowBypassSetupWizard(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c6

    const-string v3, "GearVrManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupwizard incompleted! predefined apps("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")! start launch! vrActivityType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_c6
    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupwizard incompleted! start pending launch! packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.HMT_PENDING_LAUNCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "setup_wizard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_ee
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x48000000    # 131072.0f

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v2, "restart_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, p4}, Lcom/android/server/vr/GearVrManagerExternal;->startWaitActivity(Landroid/content/Intent;I)V

    const/4 v2, 0x0

    return v2
.end method

.method private reenableVrServiceIfNecessary()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceInstalled()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServicePackageEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string v0, "GearVrManagerService"

    const-string/jumbo v3, "vr service now force enabled!"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceSystemServiceComponentEnabled()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.hmt.vrsvc"

    const-string v5, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v0, "GearVrManagerService"

    const-string/jumbo v1, "vr service system component now force enabled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void
.end method

.method private releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerExternal;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private removeStateCallback(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 5

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeStateCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private removeSysNode(Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private retrieveEnableFrequencyLevels()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->retrieveEnableFrequencyLevels()[I

    move-result-object v0

    return-object v0
.end method

.method private setDockState(ZI)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v1

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDockState prevIsDock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " docked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " deviceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    iput p2, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v2

    if-eq v1, v2, :cond_45

    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_41

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->reenableVrServiceIfNecessary()V

    :cond_41
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateDockStateLocked()V

    goto :goto_4d

    :cond_45
    const-string v2, "GearVrManagerService"

    const-string/jumbo v3, "setDockState ignored."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private setHeadSetPlugged(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isHeadSetPlugged()Z

    move-result v1

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHeadSetState prevHeadSetState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " plugged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mHeadSetPlugged:Z

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isHeadSetPlugged()Z

    move-result v2

    if-eq v1, v2, :cond_32

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateHeadSetStateLocked()V

    goto :goto_3a

    :cond_32
    const-string v2, "GearVrManagerService"

    const-string/jumbo v3, "setHeadSetState ignored."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private setHomeKeyBlocked(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsHomeKeyBlocked:Z

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setMountState(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v1

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMountState prevMounted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mounted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v2

    if-eq v1, v2, :cond_32

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMountStateLocked()V

    goto :goto_3a

    :cond_32
    const-string v2, "GearVrManagerService"

    const-string/jumbo v3, "setMountState ignored."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private setOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 7

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOverlayRestriction enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " exemptedPackages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setPermissions(Ljava/lang/String;III)I
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-static {p1, p2, p3, p4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setPersistentVrMode(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v1

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPersistentVrMode prevPersistentVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v2

    if-eq v1, v2, :cond_32

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updatePersistentVrModeLocked()V

    goto :goto_3a

    :cond_32
    const-string v2, "GearVrManagerService"

    const-string/jumbo v3, "setPersistentVrMode ignored."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private setReadyForVrMode(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mReadyForVrMode:Z

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setRelayMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/GearVrManagerExternal;->setRelayMode(I)V

    return-void
.end method

.method private setSystemMouseControlType(I)V
    .registers 3

    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseControlType(I)V

    :cond_d
    return-void
.end method

.method private setSystemMouseShowMouseEnabled(Z)V
    .registers 3

    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    :cond_d
    return-void
.end method

.method private setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/GearVrManagerExternal;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTaState(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    iput p1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V

    goto :goto_3c

    :cond_11
    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTaStateLocked ignored. state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " prevTaState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->toStringGearVrReadyState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private setThreadAffinity(I[I)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/os/SemAffinityControl;->setAffinity(I[I)I

    move-result v0

    return v0
.end method

.method private setThreadGroup(II)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_6

    const/4 v0, 0x1

    goto :goto_10

    :catch_6
    move-exception v1

    const-string v2, "GearVrManagerService"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return v0
.end method

.method private setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerExternal;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method private setThreadScheduler(III)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_6

    const/4 v0, 0x1

    goto :goto_10

    :catch_6
    move-exception v1

    const-string v2, "GearVrManagerService"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return v0
.end method

.method private setVr2dSurface(Landroid/view/Surface;)V
    .registers 5

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVr2dSurface surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVr2dSurfaceCallback:Lcom/samsung/android/vr/IGearVrSurfaceCallback;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVr2dSurfaceCallback:Lcom/samsung/android/vr/IGearVrSurfaceCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/vr/IGearVrSurfaceCallback;->onSurfaceChanged(Landroid/view/Surface;)V

    :cond_20
    return-void
.end method

.method private setVr2dSurfaceCallback(Lcom/samsung/android/vr/IGearVrSurfaceCallback;)V
    .registers 5

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVr2dSurfaceCallback cb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService;->mVr2dSurfaceCallback:Lcom/samsung/android/vr/IGearVrSurfaceCallback;

    return-void
.end method

.method private setVrMode(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v1

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVrMode prevVrModeEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v2

    if-eq v1, v2, :cond_32

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    goto :goto_3a

    :cond_32
    const-string v2, "GearVrManagerService"

    const-string/jumbo v3, "setVrMode ignored."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private startVrHome()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->startVrHome()V

    return-void
.end method

.method private startVrRecents()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerExternal;->startVrRecents()V

    return-void
.end method

.method private toStringGearVrReadyState()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGearVrManagerServiceReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerServiceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDeviceProvisoned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceProvisoned:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isVrServiceAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mUPSMEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vr/GearVrManagerService;->mUPSMEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private updateDockStateLocked()V
    .registers 6

    const-string v0, "GearVrManagerService"

    const-string/jumbo v1, "updateDockStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mHeadSetPlugged:Z

    if-eqz v0, :cond_1c

    const-string v0, "GearVrManagerService"

    const-string/jumbo v2, "set headset unplugged event at undock"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->setHeadSetPlugged(Z)V

    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    if-eqz v0, :cond_2f

    const-string v0, "GearVrManagerService"

    const-string/jumbo v2, "set unmount event at undock"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/vr/GearVrManagerService;->setMountState(Z)V

    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    if-nez v0, :cond_35

    iput v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    :cond_35
    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x2

    :goto_3c
    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateHeadSetStateLocked()V
    .registers 6

    const-string v0, "GearVrManagerService"

    const-string/jumbo v1, "updateHeadSetStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isHeadSetPlugged()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x4000

    goto :goto_14

    :cond_11
    const v0, 0x8000

    :goto_14
    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateMountStateLocked()V
    .registers 6

    const-string v0, "GearVrManagerService"

    const-string/jumbo v1, "updateMountStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    goto :goto_11

    :cond_f
    const/16 v0, 0x20

    :goto_11
    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updatePersistentVrModeLocked()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x40

    goto :goto_b

    :cond_9
    const/16 v0, 0x80

    :goto_b
    const/4 v1, 0x2

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePersistentVrModeLocked state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateSettingsLocked()V
    .registers 11

    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:I

    iget v2, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    iget v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrSystemUiMode:I

    iget v4, p0, Lcom/android/server/vr/GearVrManagerService;->mRecentsMode:I

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_setupwizard_completed"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vrmode_developer_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:I

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_launch_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_system_ui_mode"

    const/4 v8, 0x7

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/vr/GearVrManagerService;->mVrSystemUiMode:I

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_recents_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/vr/GearVrManagerService;->mRecentsMode:I

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceProvisoned:I

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/vr/GearVrManagerService;->mUPSMEnabled:Z

    iget v5, p0, Lcom/android/server/vr/GearVrManagerService;->mSetupWizardComplete:I

    const/high16 v6, 0x100000

    if-eq v0, v5, :cond_7f

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7f
    iget v5, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:I

    if-eq v1, v5, :cond_8f

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8f
    iget v5, p0, Lcom/android/server/vr/GearVrManagerService;->mLaunchMode:I

    if-eq v2, v5, :cond_9f

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9f
    iget v5, p0, Lcom/android/server/vr/GearVrManagerService;->mVrSystemUiMode:I

    if-eq v3, v5, :cond_af

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_af
    iget v5, p0, Lcom/android/server/vr/GearVrManagerService;->mRecentsMode:I

    if-eq v4, v5, :cond_bf

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v8, v7, v6, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_bf
    return-void
.end method

.method private updateTaStateLocked()V
    .registers 6

    const-string v0, "GearVrManagerService"

    const-string/jumbo v1, "updateTaStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateVrModeLocked()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x40

    goto :goto_b

    :cond_9
    const/16 v0, 0x80

    :goto_b
    const/4 v1, 0x1

    const-string v2, "GearVrManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVrModeLocked state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerExternal;->notifyHmtEventChanged(II)V

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateVrServiceAvailableLocked()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceInstalledAndEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    if-eq v1, v0, :cond_6f

    const-string v1, "GearVrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- GearVrManagerService updateVrServiceAvailableLocked mVrAvailable = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] ==> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] ----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isDock()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateDockStateLocked()V

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isMount()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateMountStateLocked()V

    :cond_47
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isHeadSetPlugged()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateHeadSetStateLocked()V

    :cond_50
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    :cond_59
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isPersistentVrMode()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updatePersistentVrModeLocked()V

    :cond_62
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mTaState:I

    if-eqz v1, :cond_6f

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateTaStateLocked()V

    :cond_6f
    return-void
.end method

.method private writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p3, :cond_25

    :try_start_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_25

    :cond_16
    const-string v4, "GearVrManagerService"

    const-string/jumbo v5, "parentDir null!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catchall_1f
    move-exception v2

    goto :goto_8d

    :catch_21
    move-exception v3

    goto :goto_2d

    :catch_23
    move-exception v3

    goto :goto_5d

    :cond_25
    :goto_25
    invoke-static {p1, p2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_28} :catch_23
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_28} :catch_21
    .catchall {:try_start_7 .. :try_end_28} :catchall_1f

    const/4 v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2d
    nop

    :try_start_2e
    const-string v4, "GearVrManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException! node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_2e .. :try_end_58} :catchall_1f

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_5d
    nop

    :try_start_5e
    const-string v4, "GearVrManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFound! node="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_5e .. :try_end_88} :catchall_1f

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_8d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method getDeviceType()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceType:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isDeveloperMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeveloperMode:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method isDock()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDocked:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public isGearVrInputDevice(Landroid/view/InputDevice;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v2

    const/16 v3, 0x4e8

    if-ne v2, v3, :cond_39

    const v3, 0xa500

    if-eq v1, v3, :cond_37

    const v3, 0xa501

    if-eq v1, v3, :cond_37

    const v3, 0xa502

    if-eq v1, v3, :cond_37

    const v3, 0xa503

    if-eq v1, v3, :cond_37

    const v3, 0xa504

    if-eq v1, v3, :cond_37

    const v3, 0xa505

    if-eq v1, v3, :cond_37

    const v3, 0xa50f

    if-eq v1, v3, :cond_37

    const v3, 0xa510

    if-ne v1, v3, :cond_39

    :cond_37
    const/4 v0, 0x1

    nop

    :cond_39
    return v0

    :cond_3a
    return v0
.end method

.method isGearVrReady()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerServiceReady:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/android/server/vr/GearVrManagerService;->mDeviceProvisoned:I

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mUPSMEnabled:Z

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    monitor-exit v0

    return v1

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method isHeadSetPlugged()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mHeadSetPlugged:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method isMount()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mMounted:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method isPersistentVrMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method isVrMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isGearVrReady()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrModeEnabled:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected isVrServiceAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mVrServiceAvailable:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setAwakeState(Z)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 12

    const-string v0, "GearVrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- GearVrManagerService onBootPhase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_110

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p0}, Landroid/app/ActivityManagerInternal;->registerScreenObserver(Landroid/app/ActivityManagerInternal$ScreenObserver;)V

    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.feature.hmt"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/vr/GearVrManagerService;->mHasHmtFeature:Z
    :try_end_4a
    .catchall {:try_start_23 .. :try_end_4a} :catchall_10d

    const/4 v3, -0x1

    :try_start_4b
    const-string v4, "com.android.systemui"

    const/high16 v5, 0x100000

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v4
    :try_end_54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_54} :catch_56
    .catchall {:try_start_4b .. :try_end_54} :catchall_10d

    move v3, v4

    goto :goto_5e

    :catch_56
    move-exception v4

    :try_start_57
    const-string v5, "GearVrManagerService"

    const-string v6, "Unable to resolve SystemUI\'s UID."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5e
    iput v3, p0, Lcom/android/server/vr/GearVrManagerService;->mSystemUiUid:I

    new-instance v4, Lcom/android/server/vr/GearVrManagerService$3;

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/vr/GearVrManagerService$3;-><init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/vr/GearVrManagerService$4;

    invoke-direct {v6, p0}, Lcom/android/server/vr/GearVrManagerService$4;-><init>(Lcom/android/server/vr/GearVrManagerService;)V

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_setupwizard_completed"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vrmode_developer_mode"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_launch_mode"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_system_ui_mode"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_recents_mode"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerService;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateSettingsLocked()V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerService;->mUpsmEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/vr/GearVrManagerService;->packageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    monitor-exit v1

    goto :goto_121

    :catchall_10d
    move-exception v0

    monitor-exit v1
    :try_end_10f
    .catchall {:try_start_57 .. :try_end_10f} :catchall_10d

    throw v0

    :cond_110
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_121

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_117
    iput-boolean v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerServiceReady:Z

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrServiceAvailableLocked()V

    monitor-exit v1

    goto :goto_121

    :catchall_11e
    move-exception v0

    monitor-exit v1
    :try_end_120
    .catchall {:try_start_117 .. :try_end_120} :catchall_11e

    throw v0

    :cond_121
    :goto_121
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/GearVrManagerService;->setKeyguardShowing(Z)V

    return-void
.end method

.method public onStart()V
    .registers 4

    const-string v0, "GearVrManagerService"

    const-string v1, "---- GearVrManagerService onStart ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/vr/GearVrManagerExternal;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/vr/GearVrManagerExternal;-><init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManagerExternal:Lcom/android/server/vr/GearVrManagerExternal;

    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    new-instance v1, Lcom/android/server/vr/GearVrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/GearVrManagerService$LocalService;-><init>(Lcom/android/server/vr/GearVrManagerService;Lcom/android/server/vr/GearVrManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "vr"

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService;->mGearVrManager:Lcom/samsung/android/vr/IGearVrManagerService;

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public setAwakeState(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsAwake:Z

    if-eq v1, p1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v1

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mIsAwake:Z

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v2

    if-eq v1, v2, :cond_16

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setKeyguardShowing(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mKeyguardShowing:Z

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mKeyguardShowing:Z

    if-eq v1, p1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v1

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mKeyguardShowing:Z

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v2

    if-eq v1, v2, :cond_18

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setScreenState(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/GearVrManagerService;->mScreenOn:Z

    if-eq v1, p1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v1

    iput-boolean p1, p0, Lcom/android/server/vr/GearVrManagerService;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerService;->isVrMode()Z

    move-result v2

    if-eq v1, v2, :cond_16

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerService;->updateVrModeLocked()V

    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
