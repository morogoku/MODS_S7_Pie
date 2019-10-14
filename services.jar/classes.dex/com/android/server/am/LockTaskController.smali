.class public Lcom/android/server/am/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# static fields
.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field private static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final STATUS_BAR_MASK_LOCKED:I = 0x3a60000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATUS_BAR_MASK_PINNED:I = 0x29f0000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private mLockTaskModeState:I

.field private final mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTaskPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mTelecomManager:Landroid/telecom/TelecomManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x60000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    iput-object p1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p3, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LockTaskController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/LockTaskController;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1c

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1c

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1d

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1d

    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isEmergencyCallTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 8

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    sget-object v2, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    return v3

    :cond_14
    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v3

    :cond_21
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    if-eqz v4, :cond_3e

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    return v3

    :cond_3e
    return v1
.end method

.method private isKeyguardAllowed(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isLockTaskModeViolationInternal(Lcom/android/server/am/TaskRecord;Z)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isRecentsAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_19
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->isEmergencyCallTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_28

    return v1

    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v1, 0x1

    nop

    :cond_38
    return v1
.end method

.method private isRecentsAllowed(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isRootTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isSBikeModeOn()Z
    .registers 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SBIKE_MODE_PRESENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "isBikeMode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    move v1, v2

    nop

    :cond_18
    return v1

    :cond_19
    return v1
.end method

.method public static synthetic lambda$performStopLockTask$1(Lcom/android/server/am/LockTaskController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->lockKeyguardIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$removeLockedTask$0(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V
    .registers 3

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method public static synthetic lambda$setLockTaskMode$2(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V
    .registers 6

    nop

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/am/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic lambda$updateLockTaskFeatures$3(Lcom/android/server/am/LockTaskController;I)V
    .registers 4

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    :cond_f
    return-void
.end method

.method private lockKeyguardIfNeeded()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->shouldLockKeyguard()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    :cond_19
    return-void
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1a
    const-string v0, "PINNED"

    return-object v0

    :pswitch_1d
    const-string v0, "LOCKED"

    return-object v0

    :pswitch_20
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private performStartLockTask(Ljava/lang/String;II)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_14

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->isSBikeModeOn()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    goto :goto_14

    :catch_12
    move-exception v0

    goto :goto_37

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    iput p3, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, p3, p2}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    invoke-direct {p0, p3, p2}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/am/SamsungActivityManagerService;->onLockTaskModeChanged(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_35} :catch_12

    nop

    return-void

    :goto_37
    nop

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private performStopLockTask(I)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_15
    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->isSBikeModeOn()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    :cond_27
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$LockTaskController$Zhl6tnPVZ0fqlHHpQJtB80h6FmA;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$LockTaskController$Zhl6tnPVZ0fqlHHpQJtB80h6FmA;-><init>(Lcom/android/server/am/LockTaskController;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3c} :catch_4b
    .catchall {:try_start_1 .. :try_end_3c} :catchall_49

    :cond_3c
    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/SamsungActivityManagerService;->onLockTaskModeChanged(I)V

    nop

    return-void

    :catchall_49
    move-exception v1

    goto :goto_52

    :catch_4b
    move-exception v1

    :try_start_4c
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_49

    :goto_52
    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/SamsungActivityManagerService;->onLockTaskModeChanged(I)V

    throw v1
.end method

.method private removeLockedTask(Lcom/android/server/am/TaskRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;-><init>(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method private setKeyguardState(II)V
    .registers 6

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    goto :goto_4a

    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_41

    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    goto :goto_4a

    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/LockTaskController$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/LockTaskController$1;-><init>(Lcom/android/server/am/LockTaskController;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_4a

    :cond_37
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_4a

    :cond_41
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method private setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .registers 13

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/RecentTasks;->onLockTaskModeStateChanged(II)V

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/am/-$$Lambda$LockTaskController$KXkmGxkf3cFeTsNFa3AJat8nfpQ;-><init>(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_49

    iget v1, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    :cond_49
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowManagerService;->dismissMultiWindowMode()V

    if-eqz p4, :cond_6f

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_5d

    const/4 v1, 0x1

    :goto_5b
    move v7, v1

    goto :goto_5f

    :cond_5d
    const/4 v1, 0x0

    goto :goto_5b

    :goto_5f
    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    goto :goto_7e

    :cond_6f
    if-eqz p2, :cond_7e

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method private setStatusBarState(II)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v1, "ActivityManager"

    const-string v2, "Can\'t find StatusBarService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_16

    const/high16 v1, 0x29f0000

    goto :goto_31

    :cond_16
    const/4 v3, 0x1

    if-ne p1, v3, :cond_31

    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_31
    :goto_31
    :try_start_31
    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_47} :catch_48

    goto :goto_50

    :catch_48
    move-exception v3

    const-string v4, "ActivityManager"

    const-string v5, "Failed to set status bar flags"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    return-void
.end method

.method private shouldLockKeyguard()Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_10
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_10} :catch_15

    if-eqz v3, :cond_14

    move v0, v1

    nop

    :cond_14
    return v0

    :catch_15
    move-exception v3

    const v4, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "127605586"

    aput-object v6, v5, v0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    const-string v1, ""

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method activityBlockedFromFinish(Lcom/android/server/am/ActivityRecord;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_27

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_27

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isRootTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "ActivityManager"

    const-string v2, "Not finishing task in lock task mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    const/4 v1, 0x1

    return v1

    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method canMoveTaskToBack(Lcom/android/server/am/TaskRecord;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->isRootTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    const/4 v0, 0x0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method clearLockedTask(Lcom/android/server/am/TaskRecord;)V
    .registers 4

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_41

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-lez v0, :cond_2c

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->removeLockedTask(Lcom/android/server/am/TaskRecord;)V

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    return-void

    :cond_38
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void

    :cond_41
    :goto_41
    return-void
.end method

.method clearLockedTasks(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    :cond_14
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_58
    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_88

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_9e
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_da

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    :cond_da
    return-void
.end method

.method getLockTaskModeState()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    return v0
.end method

.method getRootTask()Lcom/android/server/am/TaskRecord;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getStatusBarDisableFlags(I)Landroid/util/Pair;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3ff0000

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_36

    sget-object v3, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    sget-object v4, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_33

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v0, v4

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v1, v4

    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_36
    const/high16 v2, 0x3a60000

    and-int/2addr v0, v2

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method isPackageWhitelisted(ILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_f

    return v0

    :cond_f
    array-length v2, v1

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method isTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z
    .registers 3

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method showLockTaskToast()V
    .registers 4

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->isSBikeModeOn()Z

    move-result v0

    if-nez v0, :cond_1b

    :try_start_b
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Failed to send pinning escape toast"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_1b
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    .registers 7

    const/4 v0, 0x1

    if-nez p2, :cond_19

    iput p3, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    iget v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v1, v0, :cond_19

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_18

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(I)V

    :cond_18
    return-void

    :cond_19
    if-eqz p2, :cond_1d

    const/4 v1, 0x2

    goto :goto_1e

    :cond_1d
    move v1, v0

    :goto_1e
    const-string/jumbo v2, "startLockTask"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/am/LockTaskController;->setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    return-void
.end method

.method stopLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    .registers 7

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_1e

    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const-string/jumbo v0, "stopAppPinning"

    invoke-virtual {p0, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    goto :goto_5b

    :cond_13
    const-string v0, "ActivityManager"

    const-string v1, "Attempted to stop LockTask with isSystemCaller=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    goto :goto_5b

    :cond_1e
    if-eqz p1, :cond_5c

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-eq p3, v0, :cond_58

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-nez v0, :cond_2d

    iget v0, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-ne p3, v0, :cond_2d

    goto :goto_58

    :cond_2d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uid, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " effectiveUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    :goto_58
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    :goto_5b
    return-void

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t stop LockTask for null task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateLockTaskFeatures(II)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    if-ne p2, v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne p1, v1, :cond_32

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$LockTaskController$jU4fZEw2Jh5ZaHPi-64tM73ozZQ;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$LockTaskController$jU4fZEw2Jh5ZaHPi-64tM73ozZQ;-><init>(Lcom/android/server/am/LockTaskController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method

.method updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_e
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ltz v1, :cond_4c

    iget-object v5, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v7, 0x3

    if-eq v6, v4, :cond_26

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v6, v7, :cond_24

    goto :goto_26

    :cond_24
    move v6, v3

    goto :goto_27

    :cond_26
    :goto_26
    move v6, v2

    :goto_27
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    iget v8, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v8, v4, :cond_34

    iget v4, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v4, v7, :cond_33

    goto :goto_34

    :cond_33
    goto :goto_35

    :cond_34
    :goto_34
    move v3, v2

    :goto_35
    iget v4, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-ne v4, v2, :cond_49

    iget v4, v5, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_49

    if-eqz v6, :cond_49

    if-eqz v3, :cond_42

    goto :goto_49

    :cond_42
    invoke-direct {p0, v5}, Lcom/android/server/am/LockTaskController;->removeLockedTask(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    const/4 v0, 0x1

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_4c
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_53
    if-ltz v1, :cond_61

    iget-object v5, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->onLockTaskPackagesUpdated()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_53

    :cond_61
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_6f

    :cond_6e
    const/4 v5, 0x0

    :goto_6f
    iget-object v6, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_84

    if-eqz v5, :cond_84

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v6, v4, :cond_84

    const-string/jumbo v4, "package updated"

    invoke-direct {p0, v5, v2, v4, v3}, Lcom/android/server/am/LockTaskController;->setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_84
    if-eqz v0, :cond_8b

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_8b
    return-void
.end method
