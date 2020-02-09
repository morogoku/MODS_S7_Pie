.class public Lcom/android/systemui/aod/AODMachine;
.super Ljava/lang/Object;
.source "AODMachine.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAOD$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/aod/AODMachine$Service;,
        Lcom/android/systemui/aod/AODMachine$Part;,
        Lcom/android/systemui/aod/AODMachine$AODState;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final mAODService:Lcom/android/systemui/aod/AODMachine$Service;

.field private mDozeBrightness:Lcom/android/systemui/aod/DozeBrightness;

.field private mDozeWindow:Lcom/android/systemui/aod/DozeWindow;

.field private mMODReason:I

.field private mParts:[Lcom/android/systemui/aod/AODMachine$Part;

.field private final mQueuedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/aod/AODMachine$AODState;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/systemui/aod/AODMachine$AODState;

.field private mStateBeforeMOD:Lcom/android/systemui/aod/AODMachine$AODState;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/aod/AODService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/aod/AODMachine;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/aod/AODMachine$Service;Lcom/android/systemui/util/wakelock/WakeLock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mQueuedRequests:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->UNINITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    iput-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->UNINITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    iput-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mStateBeforeMOD:Lcom/android/systemui/aod/AODMachine$AODState;

    iput-object p1, p0, Lcom/android/systemui/aod/AODMachine;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    iput-object p2, p0, Lcom/android/systemui/aod/AODMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-void
.end method

.method private getDozeBrightness()Lcom/android/systemui/aod/DozeBrightness;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mDozeBrightness:Lcom/android/systemui/aod/DozeBrightness;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mParts:[Lcom/android/systemui/aod/AODMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lcom/android/systemui/aod/DozeBrightness;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/aod/DozeBrightness;

    iput-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mDozeBrightness:Lcom/android/systemui/aod/DozeBrightness;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mDozeBrightness:Lcom/android/systemui/aod/DozeBrightness;

    return-object v0
.end method

.method private getDozeWindow()Lcom/android/systemui/aod/DozeWindow;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mDozeWindow:Lcom/android/systemui/aod/DozeWindow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mParts:[Lcom/android/systemui/aod/AODMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Lcom/android/systemui/aod/DozeWindow;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/android/systemui/aod/DozeWindow;

    iput-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mDozeWindow:Lcom/android/systemui/aod/DozeWindow;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mDozeWindow:Lcom/android/systemui/aod/DozeWindow;

    return-object v0
.end method

.method private isExecutingTransition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private performTransitionOnComponents(Lcom/android/systemui/aod/AODMachine$AODState;Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mParts:[Lcom/android/systemui/aod/AODMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/android/systemui/aod/AODMachine$Part;->transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;Lcom/android/systemui/aod/AODMachine$AODState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/aod/AODMachine$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p2}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/aod/AODMachine$Service;->finish()V

    nop

    :goto_1
    return-void
.end method

.method private requestState(Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-boolean v0, Lcom/android/systemui/aod/AODMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AODMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request: current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/aod/AODMachine;->isExecutingTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/aod/AODMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/aod/AODMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/aod/AODMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/aod/AODMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-direct {p0, v2}, Lcom/android/systemui/aod/AODMachine;->transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/aod/AODMachine;->mQueuedRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/aod/AODMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    :cond_2
    return-void
.end method

.method private resolveIntermediateState(Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/aod/AODMachine$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODMachine;->transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;)V

    nop

    :goto_0
    return-void
.end method

.method private transitionPolicy(Lcom/android/systemui/aod/AODMachine$AODState;)Lcom/android/systemui/aod/AODMachine$AODState;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->FINISH:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->FINISH:Lcom/android/systemui/aod/AODMachine$AODState;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-virtual {v0}, Lcom/android/systemui/aod/AODMachine$AODState;->canMOD()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AODMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping MOD because current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE:Lcom/android/systemui/aod/AODMachine$AODState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_AOD_PAUSED:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/aod/AODMachine;->mMODReason:I

    if-eqz v0, :cond_3

    const-string v0, "AODMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because current state is MOD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/aod/AODMachine;->mMODReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/aod/AODMachine;->mStateBeforeMOD:Lcom/android/systemui/aod/AODMachine$AODState;

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    return-object v0

    :cond_3
    return-object p1
.end method

.method private transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/aod/AODMachine;->transitionPolicy(Lcom/android/systemui/aod/AODMachine$AODState;)Lcom/android/systemui/aod/AODMachine$AODState;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/aod/AODMachine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AODMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transition: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODMachine;->validateTransition(Lcom/android/systemui/aod/AODMachine$AODState;)V

    iget-object v1, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    iput-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    iget-object v2, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v3, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne v2, v3, :cond_2

    iput-object v1, p0, Lcom/android/systemui/aod/AODMachine;->mStateBeforeMOD:Lcom/android/systemui/aod/AODMachine$AODState;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/systemui/aod/AODMachine$AODState;->UNINITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    iput-object v2, p0, Lcom/android/systemui/aod/AODMachine;->mStateBeforeMOD:Lcom/android/systemui/aod/AODMachine$AODState;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/aod/AODMachine;->performTransitionOnComponents(Lcom/android/systemui/aod/AODMachine$AODState;Lcom/android/systemui/aod/AODMachine$AODState;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODMachine;->resolveIntermediateState(Lcom/android/systemui/aod/AODMachine$AODState;)V

    return-void
.end method

.method private validateTransition(Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/systemui/aod/AODMachine$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    iget-object v1, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-virtual {v1}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->FINISH:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne p1, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->INITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne p1, v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    :goto_2
    sget-object v0, Lcom/android/systemui/aod/AODMachine$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->UNINITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne v0, v1, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    goto :goto_5

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t transition to UNINITIALIZED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE:Lcom/android/systemui/aod/AODMachine$AODState;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_AOD_PAUSED:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne v0, v1, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_4

    :cond_7
    :goto_3
    move v2, v3

    :goto_4
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_5
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, " state="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, " mod="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/aod/AODMachine;->mMODReason:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "Parts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mParts:[Lcom/android/systemui/aod/AODMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/android/systemui/aod/AODMachine$Part;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinishMOD(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/aod/AODMachine;->mMODReason:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/aod/AODMachine;->mMODReason:I

    iget v0, p0, Lcom/android/systemui/aod/AODMachine;->mMODReason:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mState:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mStateBeforeMOD:Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->UNINITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mStateBeforeMOD:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODMachine;->requestState(Lcom/android/systemui/aod/AODMachine$AODState;)V

    :cond_0
    return-void
.end method

.method public onRequestMOD(I)V
    .locals 1

    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODMachine;->requestState(Lcom/android/systemui/aod/AODMachine$AODState;)V

    iget v0, p0, Lcom/android/systemui/aod/AODMachine;->mMODReason:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/aod/AODMachine;->mMODReason:I

    return-void
.end method

.method public onRequestState(I)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/aod/AODMachine$AODState;->get(I)Lcom/android/systemui/aod/AODMachine$AODState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->UNKNOWN:Lcom/android/systemui/aod/AODMachine$AODState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODMachine;->requestState(Lcom/android/systemui/aod/AODMachine$AODState;)V

    return-void
.end method

.method public onUpdateDozeBrightness(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/aod/AODMachine;->getDozeBrightness()Lcom/android/systemui/aod/DozeBrightness;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/aod/DozeBrightness;->updateDozeBrightness(II)V

    :cond_0
    return-void
.end method

.method public onUpdateWindowLayoutParams()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/aod/AODMachine;->getDozeWindow()Lcom/android/systemui/aod/DozeWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/aod/DozeWindow;->updateWindowLayoutParams()V

    :cond_0
    return-void
.end method

.method public setAODParameter(Lcom/samsung/systemui/splugins/aod/PluginAODParameter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mParts:[Lcom/android/systemui/aod/AODMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/android/systemui/aod/AODMachine$Part;->setAODParameter(Lcom/samsung/systemui/splugins/aod/PluginAODParameter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAODShowing(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/aod/AODMachine;->getDozeWindow()Lcom/android/systemui/aod/DozeWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/aod/DozeWindow;->setAODShowing(Z)V

    :cond_0
    return-void
.end method

.method public setParts([Lcom/android/systemui/aod/AODMachine$Part;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODMachine;->mParts:[Lcom/android/systemui/aod/AODMachine$Part;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iput-object p1, p0, Lcom/android/systemui/aod/AODMachine;->mParts:[Lcom/android/systemui/aod/AODMachine$Part;

    return-void
.end method
