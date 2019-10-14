.class public Lcom/android/systemui/aod/AODDozeScreenState;
.super Ljava/lang/Object;
.source "AODDozeScreenState.java"

# interfaces
.implements Lcom/android/systemui/aod/AODMachine$Part;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAODService:Lcom/android/systemui/aod/AODMachine$Service;

.field private final mApplyPendingScreenState:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mPendingScreenState:I

.field private mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/aod/AODService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/aod/AODDozeScreenState;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/aod/AODMachine$Service;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/aod/-$$Lambda$AODDozeScreenState$U3ggSSW8kXVLzqlhGkrD4ihLk2A;

    invoke-direct {v0, p0}, Lcom/android/systemui/aod/-$$Lambda$AODDozeScreenState$U3ggSSW8kXVLzqlhGkrD4ihLk2A;-><init>(Lcom/android/systemui/aod/AODDozeScreenState;)V

    iput-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mPendingScreenState:I

    iput-object p1, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    iput-object p2, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-direct {v0, p4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;)V

    iput-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-void
.end method

.method private applyPendingScreenState()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mPendingScreenState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODDozeScreenState;->applyScreenState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mPendingScreenState:I

    return-void
.end method

.method private applyScreenState(I)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "AODDozeScreenState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDozeScreenState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/aod/AODMachine$Service;->setDozeScreenState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mPendingScreenState:I

    iget-object v1, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$U3ggSSW8kXVLzqlhGkrD4ihLk2A(Lcom/android/systemui/aod/AODDozeScreenState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/aod/AODDozeScreenState;->applyPendingScreenState()V

    return-void
.end method


# virtual methods
.method public transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 7

    invoke-virtual {p2}, Lcom/android/systemui/aod/AODMachine$AODState;->screenState()I

    move-result v0

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->FINISH:Lcom/android/systemui/aod/AODMachine$AODState;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    iput v2, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mPendingScreenState:I

    iget-object v1, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODDozeScreenState;->applyScreenState(I)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v3, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODDozeScreenState;->applyScreenState(I)V

    goto/16 :goto_2

    :cond_3
    :goto_0
    iput v0, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mPendingScreenState:I

    sget-object v3, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_REQUEST_AOD:Lcom/android/systemui/aod/AODMachine$AODState;

    const/4 v4, 0x1

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v4

    nop

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v3, v4}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_5
    if-nez v1, :cond_9

    sget-boolean v3, Lcom/android/systemui/aod/AODDozeScreenState;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "AODDozeScreenState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display state changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delayed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    const/16 v4, 0x1770

    nop

    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1770

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/aod/AODDozeScreenState;->mApplyPendingScreenState:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_9
    sget-boolean v3, Lcom/android/systemui/aod/AODDozeScreenState;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "AODDozeScreenState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending display state change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    nop

    :goto_2
    return-void
.end method
