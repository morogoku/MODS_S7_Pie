.class final Lcom/android/server/am/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static ORIG_ENUMS:[I = null

.field private static PROTO_ENUMS:[I = null

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private mVrState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/VrController;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/server/am/VrController;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    new-instance v0, Lcom/android/server/am/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/VrController$1;-><init>(Lcom/android/server/am/VrController;)V

    iput-object v0, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    iput-object p1, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/VrController;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/VrController;IIZ)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/am/VrController;I)I
    .registers 3

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$276(Lcom/android/server/am/VrController;I)I
    .registers 3

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/VrController;IZ)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z
    .registers 8

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    goto :goto_11

    :cond_b
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    :goto_11
    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_17

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    if-eqz v1, :cond_2b

    if-eqz p2, :cond_28

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-lez v2, :cond_2b

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v4, p2, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_2b

    :cond_28
    invoke-direct {p0, v3}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    :cond_2b
    :goto_2b
    return v1
.end method

.method private clearVrRenderThreadLocked(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    return-void
.end method

.method private enforceThreadInProcess(II)V
    .registers 5

    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VR thread does not belong to process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasPersistentVrFlagSet()Z
    .registers 2

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private inVrMode()Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .registers 5

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p2, :cond_f

    const-string v0, "VrController"

    const-string v1, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .registers 10

    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    const/4 v2, 0x3

    if-eq p2, v2, :cond_10

    goto :goto_15

    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v2

    return v2

    :cond_15
    :goto_15
    if-nez p3, :cond_3a

    const-string v2, "caller is not the current top application."

    if-nez v0, :cond_1f

    const-string/jumbo v2, "system not in VR mode."

    goto :goto_24

    :cond_1f
    if-eqz v1, :cond_24

    const-string/jumbo v2, "system in persistent VR mode."

    :cond_24
    :goto_24
    const-string v3, "VrController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set VR thread, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v2
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .registers 4

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_7

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0

    :cond_7
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    :cond_13
    if-lez p1, :cond_1c

    iput p1, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    :cond_1c
    iget v0, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    return v0
.end method


# virtual methods
.method public onSystemReady()V
    .registers 3

    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/server/am/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    :cond_f
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_17

    :cond_e
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    if-ne v0, v2, :cond_17

    invoke-direct {p0, v1}, Lcom/android/server/am/VrController;->clearVrRenderThreadLocked(Z)V

    :cond_17
    :goto_17
    return-void
.end method

.method public onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z
    .registers 14

    const-class v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v0, :cond_19

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->vrActivityType:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/vr/GearVrManagerInternal;->notifyVrActivityFocusChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    :cond_19
    const-class v1, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/VrManagerInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_25

    return v2

    :cond_25
    const/4 v3, -0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/server/am/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2a
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    const/4 v5, 0x1

    if-nez v4, :cond_36

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->vrActivityType:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_35

    goto :goto_36

    :cond_35
    goto :goto_37

    :cond_36
    :goto_36
    move v2, v5

    :goto_37
    move v9, v2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v9, v2}, Lcom/android/server/am/VrController;->changeVrModeLocked(ZLcom/android/server/am/ProcessRecord;)Z

    move-result v2
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_63

    move v10, v2

    :try_start_49
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_53

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_60

    move v11, v2

    goto :goto_54

    :cond_53
    move v11, v3

    :goto_54
    :try_start_54
    monitor-exit v8
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_5c

    move-object v2, v1

    move v3, v9

    move v6, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return v10

    :catchall_5c
    move-exception v2

    move v6, v10

    move v3, v11

    goto :goto_64

    :catchall_60
    move-exception v2

    move v6, v10

    goto :goto_64

    :catchall_63
    move-exception v2

    :goto_64
    :try_start_64
    monitor-exit v8
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v2
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "VrController"

    const-string v1, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p3, :cond_18

    const-string v0, "VrController"

    const-string v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    if-eqz p1, :cond_1d

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    :cond_1d
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/am/ProcessRecord;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/am/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "VrController"

    const-string v1, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p3, :cond_18

    const-string v0, "VrController"

    const-string v1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    if-eqz p1, :cond_1d

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/VrController;->enforceThreadInProcess(II)V

    :cond_1d
    invoke-direct {p0}, Lcom/android/server/am/VrController;->inVrMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    const-string v0, "VrController"

    const-string v2, "VR thread cannot be set when not in VR mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2c
    iget v0, p3, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/VrController;->setVrRenderThreadLocked(IIZ)I

    :goto_31
    if-lez p1, :cond_35

    move v1, p1

    nop

    :cond_35
    iput v1, p3, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .registers 2

    iget v0, p0, Lcom/android/server/am/VrController;->mVrState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/am/VrController;->mVrState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v5, p0, Lcom/android/server/am/VrController;->mVrState:I

    sget-object v6, Lcom/android/server/am/VrController;->ORIG_ENUMS:[I

    sget-object v7, Lcom/android/server/am/VrController;->PROTO_ENUMS:[I

    const-wide v3, 0x20e00000001L

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    iget v2, p0, Lcom/android/server/am/VrController;->mVrRenderThreadTid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
