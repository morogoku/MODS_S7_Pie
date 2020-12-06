.class Lcom/android/server/desktopmode/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Lcom/android/server/desktopmode/IStateManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/StateManager$StateListener;,
        Lcom/android/server/desktopmode/StateManager$InternalState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private volatile mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

.field private final mLock:Ljava/lang/Object;

.field private volatile mState:Lcom/android/server/desktopmode/State;

.field private mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/desktopmode/StateManager$StateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {v0}, Lcom/android/server/desktopmode/StateManager$InternalState;-><init>()V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;
    .registers 5

    # operator++ for: Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I
    invoke-static {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$2208(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    new-instance v0, Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {v0, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;-><init>(Lcom/android/server/desktopmode/StateManager$InternalState;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-object v0
.end method

.method public static synthetic lambda$setCoverState$10(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onCoverSupportStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setCurrentUserId$11(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onUserChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setDesktopDisplayId$2(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDesktopDisplayIdChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setDesktopModeState$14(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDesktopModeStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setDockFastChargingState$9(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockFastChargingStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setDockLowChargerState$8(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockLowChargerPowerChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setDockState$7(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDockStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setEmergencyModeEnabled$13(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onEmergencyModeChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setExternalDisplayConnected$0(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onExternalDisplayConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setExternalDisplayUpdated$1(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onExternalDisplayUpdated(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setMouseConnected$3(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onMouseConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setOverheated$17(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onOverheatStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setPackageState$12(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onPackageStateChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setPogoKeyboardConnected$4(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onPogoKeyboardConnectionChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setTouchpadAvailable$15(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onTouchpadAvailabilityChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setTouchpadEnabled$16(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onTouchpadEnabled(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setWiredCharging$5(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onWiredChargingChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic lambda$setWiredFastCharging$6(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onWiredFastChargingChanged(Lcom/android/server/desktopmode/State;)V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/server/desktopmode/StateManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "mState"

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mStateListeners"

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getState()Lcom/android/server/desktopmode/State;
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mState:Lcom/android/server/desktopmode/State;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public notifyDualModeOnConfigurationChanged(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualOnConfigurationChanged(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeConfigurationChanged(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualSetDesktopMode(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeSetDesktopModeInternal(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualModeSetDesktopModeInternal(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeSetDesktopModeInternal(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeStartLoadingScreen(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualStartLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeStartLoadingScreen(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyDualModeStopLoadingScreen(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDualStopLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onDualModeStopLoadingScreen(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyInitialSPenDetected(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyInitialSPenDetected(detected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onInitialSPenDetected(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyLauncherPackageReplaced(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLauncherPackageReplaced(dataCleared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onLauncherPackageReplaced(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyOnConfigurationChanged(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOnConfigurationChanged(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onConfigurationChanged(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifySPenEnabled(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySPenEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSPenEnabled(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifySetDesktopMode(Lcom/android/server/desktopmode/State;Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySetDesktopMode(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSetDesktopMode(Lcom/android/server/desktopmode/State;Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifySetDesktopModeInternal(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySetDesktopModeInternal(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onSetDesktopModeInternal(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyStartLoadingScreen(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStartLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onStartLoadingScreen(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public notifyStopLoadingScreen(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStopLoadingScreen(enter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-virtual {v1, p1}, Lcom/android/server/desktopmode/StateManager$StateListener;->onStopLoadingScreen(Z)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener(StateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCoverState(Lcom/samsung/android/cover/CoverState;I)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverState(coverState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", coverSupportState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I
    invoke-static {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1200(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v2

    if-eq v2, p2, :cond_3a

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I
    invoke-static {v2, p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1202(Lcom/android/server/desktopmode/StateManager$InternalState;I)I

    const/4 v0, 0x1

    :cond_3a
    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;
    invoke-static {v2, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1302(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v2

    if-eqz v0, :cond_51

    iget-object v3, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/desktopmode/-$$Lambda$StateManager$q3aHuEEKx71exXIeXuIx_96qXu8;

    invoke-direct {v4, p0, v2}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$q3aHuEEKx71exXIeXuIx_96qXu8;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_51
    monitor-exit v1

    return-void

    :catchall_53
    move-exception v2

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_53

    throw v2
.end method

.method public setCurrentUserId(I)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserId(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1400(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1402(Lcom/android/server/desktopmode/StateManager$InternalState;I)I

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$Zbw4crQsXQZklYkUT9xMwKkCrLs;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$Zbw4crQsXQZklYkUT9xMwKkCrLs;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setDesktopDisplayId(I)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopDisplayId(displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$200(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$202(Lcom/android/server/desktopmode/StateManager$InternalState;I)I

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$Z_u65hdj4OfLlYrIPALB4ZYcgWo;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$Z_u65hdj4OfLlYrIPALB4ZYcgWo;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setDesktopModeState(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDesktopModeState(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1702(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/samsung/android/desktopmode/SemDesktopModeState;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5rfm4TDZ8sbMY1kzkfLlRGlL1R0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5rfm4TDZ8sbMY1kzkfLlRGlL1R0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setDockFastChargingState(I)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockFastChargingState(fastChargingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1100(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDockFastChargingState:I
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1102(Lcom/android/server/desktopmode/StateManager$InternalState;I)I

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$sqcOKUUA-nBbIiIbKmppYpLPUmI;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$sqcOKUUA-nBbIiIbKmppYpLPUmI;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setDockLowChargerState(I)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockLowChargerState(dockLowChargerState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1000(Lcom/android/server/desktopmode/StateManager$InternalState;)I

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1002(Lcom/android/server/desktopmode/StateManager$InternalState;I)I

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$mgvRy0eAB7-zzk16Kr4KIgzBZo8;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$mgvRy0eAB7-zzk16Kr4KIgzBZo8;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setDockState(Lcom/android/server/desktopmode/HardwareManager$DockState;)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockState(dockState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;
    invoke-static {v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$800(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/HardwareManager$DockState;

    move-result-object v2

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;
    invoke-static {v1, v2}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$702(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$802(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/HardwareManager$DockState;)Lcom/android/server/desktopmode/HardwareManager$DockState;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5tCKZpptbTZqosUlHBZRcarUmHs;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5tCKZpptbTZqosUlHBZRcarUmHs;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public setEmergencyModeEnabled(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEmergencyModeEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1600(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1602(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$zoPHCaGOoh8G-Rv6vaixH5Guk1Y;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$zoPHCaGOoh8G-Rv6vaixH5Guk1Y;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setExternalDisplayConnected(ZLcom/android/server/desktopmode/DisplayInfo;)V
    .registers 7

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalDisplayConnected(connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2b
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$000(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_4d

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$002(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;
    invoke-static {v1, p2}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$102(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5guWm2Qi6BRsthtzK4Y-e-QSvaM;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$5guWm2Qi6BRsthtzK4Y-e-QSvaM;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public setExternalDisplayUpdated(Lcom/android/server/desktopmode/DisplayInfo;)V
    .registers 7

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExternalDisplayUpdated(display="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$100(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    if-nez v1, :cond_2d

    const/4 v1, -0x1

    goto :goto_37

    :cond_2d
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$100(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v1

    :goto_37
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getDisplayId()I

    move-result v2

    if-eq v1, v2, :cond_52

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;
    invoke-static {v2, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$102(Lcom/android/server/desktopmode/StateManager$InternalState;Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/desktopmode/-$$Lambda$StateManager$KjytMPcnxJxeK9yD-H2yV6_pqkE;

    invoke-direct {v4, p0, v2}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$KjytMPcnxJxeK9yD-H2yV6_pqkE;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public setForcedInternalScreenModeEnabled(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcedInternalScreenModeEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$900(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_35

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$902(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public setModeChangeLocked(Z)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeChangeLocked(locked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1800(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_35

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1802(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public setMouseConnected(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMouseConnected(connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$300(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$302(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$1ogdMYt-5H0p_0Vg5Z6oIVjDKg0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$1ogdMYt-5H0p_0Vg5Z6oIVjDKg0;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setOverheated(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOverheated(overheated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$2100(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mOverheated:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$2102(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$2FfP_Y5crVCylJ45IuMC0lnbf7A;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$2FfP_Y5crVCylJ45IuMC0lnbf7A;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setPackageState(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageState(packageState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1502(Lcom/android/server/desktopmode/StateManager$InternalState;Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$Wgqwncate73OxJjszXLSAnFFxgg;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$Wgqwncate73OxJjszXLSAnFFxgg;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setPogoKeyboardConnected(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPogoKeyboardConnected(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$400(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$402(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$KfPeKQz5-0u6ddTUgXt6afMXK3Q;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$KfPeKQz5-0u6ddTUgXt6afMXK3Q;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setTouchpadAvailable(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchpadAvailable(available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1900(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$1902(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$k64HiYhSm_U9UKlW3NAVS6nML-I;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$k64HiYhSm_U9UKlW3NAVS6nML-I;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setTouchpadEnabled(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTouchpadEnabled(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$2000(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$2002(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$6y2ypggZuav1wCyVvS-o2wKkseg;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$6y2ypggZuav1wCyVvS-o2wKkseg;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setWiredCharging(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredCharging(isWiredCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$500(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$502(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$bDSUUa8vokTGZf1zBRjn9ZhcQKg;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$bDSUUa8vokTGZf1zBRjn9ZhcQKg;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setWiredFastCharging(Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredFastCharging(isWiredFastCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # getter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z
    invoke-static {v1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$600(Lcom/android/server/desktopmode/StateManager$InternalState;)Z

    move-result v1

    if-eq v1, p1, :cond_40

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    # setter for: Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredFastCharging:Z
    invoke-static {v1, p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->access$602(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager;->mInternalState:Lcom/android/server/desktopmode/StateManager$InternalState;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/StateManager;->copyInternalStateLocked(Lcom/android/server/desktopmode/StateManager$InternalState;)Lcom/android/server/desktopmode/State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/StateManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/desktopmode/-$$Lambda$StateManager$Z2ZMp1-JdKwma68Qalbs2rjLL24;

    invoke-direct {v3, p0, v1}, Lcom/android/server/desktopmode/-$$Lambda$StateManager$Z2ZMp1-JdKwma68Qalbs2rjLL24;-><init>(Lcom/android/server/desktopmode/StateManager;Lcom/android/server/desktopmode/State;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public unregisterListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/StateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener(StateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
