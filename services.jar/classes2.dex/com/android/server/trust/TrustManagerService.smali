.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$SettingsAttrs;,
        Lcom/android/server/trust/TrustManagerService$AgentInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_DISPATCH_UNLOCK_LOCKOUT:I = 0xd

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_FLUSH_TRUST_USUALLY_MANAGED:I = 0xa

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REFRESH_DEVICE_LOCKED_FOR_USER:I = 0xe

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_STOP_USER:I = 0xc

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNLOCK_USER:I = 0xb

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final TRUST_USUALLY_MANAGED_FLUSH_DELAY:I = 0x1d4c0


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDeviceLockedForUser"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTrustUsuallyManagedForUser"
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserIsTrusted"
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersUnlockedByFingerprint"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const-string v0, "TrustManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustManagerService;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/trust/TrustManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockLockout(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->updateDualDARStateAndUnlockIfNeeded(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustManagerService;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/trust/TrustManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p1
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    return-void

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v1, 0x1

    return v1

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2c
    return v1
.end method

.method private aggregateIsTrusted(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v1, 0x1

    return v1

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2c
    return v1
.end method

.method private dispatchDeviceLocked(IZ)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_22

    if-eqz p2, :cond_1d

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_22

    :cond_1d
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method private dispatchOnTrustChanged(ZII)V
    .registers 8

    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    if-nez p1, :cond_37

    const/4 p3, 0x0

    :cond_37
    const/4 v0, 0x0

    :goto_38
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_68

    :try_start_40
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZII)V
    :try_end_4b
    .catch Landroid/os/DeadObjectException; {:try_start_40 .. :try_end_4b} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4b} :catch_4c

    goto :goto_64

    :catch_4c
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    :catch_55
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_64
    nop

    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_68
    return-void
.end method

.method private dispatchOnTrustError(Ljava/lang/CharSequence;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    :try_start_29
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_29 .. :try_end_34} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_35

    goto :goto_4d

    :catch_35
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    :catch_3e
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_4d
    nop

    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_51
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .registers 7

    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustManagedChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    :try_start_31
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_31 .. :try_end_3c} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3d

    goto :goto_55

    :catch_3d
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :catch_46
    move-exception v1

    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_55
    nop

    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_59
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .registers 6

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->allowTrustFromUnlock(I)V

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_21

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method private dispatchUnlockLockout(II)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_1a

    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockLockout(I)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method private fetchOuterLayerKey(I)[B
    .registers 5

    const-string v0, "TrustManagerService"

    const-string v1, "fetchOuterLayerKey()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object v0

    return-object v0
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 5

    if-eqz p1, :cond_15

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_7

    goto :goto_15

    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    return-object v1

    :cond_13
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
    .registers 15

    const/4 v0, 0x0

    if-eqz p2, :cond_da

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_da

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_f

    goto/16 :goto_da

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    :try_start_13
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v6, "android.service.trust.trustagent"

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_2c

    const-string v5, "TrustManagerService"

    const-string v6, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_25} :catch_8b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_25} :catch_81
    .catchall {:try_start_13 .. :try_end_25} :catchall_7a

    nop

    if-eqz v3, :cond_2b

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2b
    return-object v0

    :cond_2c
    :try_start_2c
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    :goto_38
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v7, v9, :cond_44

    if-eq v8, v10, :cond_44

    goto :goto_38

    :cond_44
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "trust-agent"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    const-string v9, "TrustManagerService"

    const-string v10, "Meta-data does not start with trust-agent tag"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_58} :catch_8b
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_58} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_58} :catch_81
    .catchall {:try_start_2c .. :try_end_58} :catchall_7a

    nop

    if-eqz v3, :cond_5e

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5e
    return-object v0

    :cond_5f
    :try_start_5f
    sget-object v9, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v5, v6, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move v2, v10

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_74} :catch_8b
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_74} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_74} :catch_81
    .catchall {:try_start_5f .. :try_end_74} :catchall_7a

    if-eqz v3, :cond_90

    :goto_76
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_90

    :catchall_7a
    move-exception v0

    if-eqz v3, :cond_80

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_80
    throw v0

    :catch_81
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_90

    goto :goto_76

    :catch_86
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_90

    goto :goto_76

    :catch_8b
    move-exception v5

    move-object v4, v5

    if-eqz v3, :cond_90

    goto :goto_76

    :cond_90
    :goto_90
    if-eqz v4, :cond_ad

    const-string v5, "TrustManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_ad
    if-nez v1, :cond_b0

    return-object v0

    :cond_b0
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_d0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d0
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;-><init>(Landroid/content/ComponentName;Z)V

    return-object v0

    :cond_da
    :goto_da
    return-object v0
.end method

.method private handleDualDARDeviceLockedChangedForUser(IZ)V
    .registers 3

    return-void
.end method

.method private isTrustUsuallyManagedInternal(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_13

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    monitor-exit v0

    return v2

    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_1d
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2d

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    monitor-exit v2

    return v3

    :cond_2d
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2

    return v1

    :catchall_34
    move-exception v0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_34

    throw v0

    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    move v2, v4

    nop

    :cond_26
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    if-eqz v2, :cond_4c

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v6, "TrustManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enabling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because it is a default agent."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    :cond_4c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v7}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_86

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Leaving agent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " disabled because package is not a system package."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :cond_86
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_8a
    :goto_8a
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_93

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_93
    invoke-virtual {p1, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "trust_agents_initialized"

    invoke-static {v7, v8, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private onPassword2Auth(ILjava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    const-string v0, "TrustManagerService"

    const-string/jumbo v1, "onPassword2Auth()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not DualDAR eligible. so no need to verify DualDAR Passwords"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    :cond_2c
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/ddar/DualDARController;->onPassword2Auth(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v1, "TrustManagerService"

    const-string v3, "Authentication Failure by dual dar client"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    :cond_44
    const-string v1, "TrustManagerService"

    const-string/jumbo v3, "onPassword2Auth completed sucessfully"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v1, Lcom/samsung/android/knox/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-static {p1, v1}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/ddar/fsm/Event;)Z

    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method

.method private refreshDeviceLockedForUser(I)V
    .registers 15

    const/4 v0, -0x1

    if-eq p1, v0, :cond_29

    if-gez p1, :cond_29

    const-string v1, "TrustManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, -0x1

    :cond_29
    const/4 v1, 0x1

    if-ne p1, v0, :cond_33

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    goto :goto_41

    :cond_33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_41
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_a5

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_a5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_a5

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v6, :cond_a5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-nez v6, :cond_6a

    goto :goto_a5

    :cond_6a
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v11, v6, :cond_92

    iget-object v11, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    monitor-enter v11

    :try_start_7f
    iget-object v12, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v6, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    move v10, v12

    monitor-exit v11
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_8f

    :try_start_87
    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v11
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8b} :catch_8d

    move v9, v11

    goto :goto_92

    :catch_8d
    move-exception v11

    goto :goto_92

    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v11
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1

    :cond_92
    :goto_92
    if-eqz v7, :cond_9c

    if-eqz v9, :cond_9c

    if-nez v8, :cond_9c

    if-nez v10, :cond_9c

    move v11, v1

    goto :goto_9d

    :cond_9c
    move v11, v3

    :goto_9d
    invoke-direct {p0, v6, v11}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    if-eqz v11, :cond_a5

    invoke-static {v6, v1}, Lcom/android/server/trust/ContainerUtil;->onDeviceLockedChanged(IZ)V

    :cond_a5
    :goto_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_a8
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_51

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v0, 0x1

    :cond_44
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_51
    if-eqz v0, :cond_56

    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    :cond_56
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    return-void
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const v1, 0xc0080

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_27

    goto :goto_16

    :cond_27
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_2e

    goto :goto_16

    :cond_2e
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v5, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_64

    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    const-string v6, "TrustManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because package does not have permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_64
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_68
    return-object v1
.end method

.method private resolveProfileParent(I)I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_18
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setDeviceLockedForUser(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    if-eq v1, p2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1b

    if-eqz v1, :cond_1a

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleDualDARDeviceLockedChangedForUser(IZ)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    :cond_1a
    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private updateDualDARStateAndUnlockIfNeeded(I)V
    .registers 2

    return-void
.end method

.method private updateTrustAll()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    goto :goto_b

    :cond_1e
    return-void
.end method

.method private updateTrustUsuallyManaged(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method isDeviceLockedInner(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    goto :goto_42

    :cond_2a
    const/16 v0, 0x258

    if-ne p1, v0, :cond_38

    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    goto :goto_42

    :cond_38
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_42

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_42
    :goto_42
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStart()V
    .registers 3

    const-string/jumbo v0, "trust"

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStopUser(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method refreshAgentList(I)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "TrustManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshAgentList("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v2, :cond_29

    return-void

    :cond_29
    const/4 v2, -0x1

    if-eq v1, v2, :cond_52

    if-gez v1, :cond_52

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshAgentList(userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    :cond_52
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v1, v2, :cond_62

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    goto :goto_70

    :cond_62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_70
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_80
    :goto_80
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_35b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    if-eqz v9, :cond_80

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v11, :cond_80

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_80

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v11, :cond_9d

    goto :goto_80

    :cond_9d
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v11

    if-nez v11, :cond_c6

    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_80

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": switchToByUser=false"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    :cond_c6
    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v11

    if-nez v11, :cond_f3

    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_80

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": user not started"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    :cond_f3
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    if-nez v11, :cond_11f

    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_80

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": no secure credential"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    :cond_11f
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v12

    and-int/lit8 v14, v12, 0x10

    if-eqz v14, :cond_130

    move v14, v4

    goto :goto_131

    :cond_130
    const/4 v14, 0x0

    :goto_131
    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v15}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_15e

    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_80

    const-string v10, "TrustManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshAgentList: skipping user "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": no agents enabled by user"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto/16 :goto_80

    :cond_15e
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v3, v2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_168
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_351

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v4}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1c0

    sget-boolean v16, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v16, :cond_1bd

    move-object/from16 v17, v2

    const-string v2, "TrustManagerService"

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    const-string/jumbo v6, "refreshAgentList: skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": not enabled by user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b4
    :goto_1b4
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    :goto_1ba
    const/4 v4, 0x1

    :goto_1bb
    const/4 v13, 0x0

    goto :goto_168

    :cond_1bd
    const/4 v4, 0x1

    const/4 v13, 0x0

    goto :goto_168

    :cond_1c0
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    if-eqz v14, :cond_208

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v13, v2}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1d7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_208

    :cond_1d7
    sget-boolean v5, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v5, :cond_1b4

    const-string v5, "TrustManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string/jumbo v2, "refreshAgentList: skipping "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not allowed by DPM"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b4

    :cond_208
    new-instance v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$1;)V

    iput-object v13, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    iput v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22f

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_23e

    :cond_22f
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    :goto_23e
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v5, :cond_24c

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    iget-boolean v5, v5, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v5, :cond_24c

    const/4 v5, 0x1

    goto :goto_24d

    :cond_24c
    const/4 v5, 0x0

    :goto_24d
    if-eqz v5, :cond_27f

    sget-boolean v6, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v6, :cond_27f

    const-string v6, "TrustManagerService"

    move-object/from16 v21, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    const-string/jumbo v4, "refreshAgentList: trustagent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "of user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "can unlock user profile."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_283

    :cond_27f
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    :goto_283
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_2c3

    if-nez v5, :cond_2c3

    sget-boolean v3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v3, :cond_2b9

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshAgentList: skipping user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'s trust agent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": FBE still locked and  the agent cannot unlock user profile."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b9
    :goto_2b9
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    goto/16 :goto_1ba

    :cond_2c3
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v3

    if-nez v3, :cond_322

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_322

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e2

    if-nez v5, :cond_2df

    goto :goto_2e2

    :cond_2df
    move/from16 v24, v5

    goto :goto_324

    :cond_2e2
    :goto_2e2
    sget-boolean v6, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v6, :cond_318

    const-string v6, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    const-string/jumbo v3, "refreshAgentList: skipping user "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": prevented by StrongAuthTracker = 0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move/from16 v24, v5

    iget v5, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b9

    :cond_318
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    goto/16 :goto_1bb

    :cond_322
    move/from16 v24, v5

    :goto_324
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v3, :cond_33e

    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    :cond_33e
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34c

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_34f

    :cond_34c
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_34f
    goto/16 :goto_2b9

    :cond_351
    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v2, -0x1

    const/4 v4, 0x1

    goto/16 :goto_80

    :cond_35b
    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/4 v2, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_364
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_38d

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v5, -0x1

    if-eq v1, v5, :cond_377

    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, v5, :cond_38a

    :cond_377
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    if-eqz v5, :cond_380

    const/4 v3, 0x1

    :cond_380
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_38a
    add-int/lit8 v2, v2, 0x1

    goto :goto_364

    :cond_38d
    if-eqz v3, :cond_39a

    const/4 v2, -0x1

    if-ne v1, v2, :cond_396

    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_39a

    :cond_396
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_39a
    :goto_39a
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_51

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v3, :cond_4e

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v0, 0x1

    :cond_44
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_51
    if-eqz v0, :cond_57

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    :cond_57
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    return-void
.end method

.method showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserWithToken(J[BI)Z

    return-void
.end method

.method updateDevicePolicyFeatures()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    const/4 v0, 0x1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustArchive;->logDevicePolicyChanged()V

    :cond_2a
    return-void
.end method

.method public updateTrust(II)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v1

    if-eq v1, v0, :cond_18

    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_1f
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eq v3, v1, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_39

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    if-eqz v3, :cond_38

    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    :cond_38
    return-void

    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v3
.end method
