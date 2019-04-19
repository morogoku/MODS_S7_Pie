.class public Lcom/android/server/sepunion/ExclusiveTaskManagerService;
.super Lcom/samsung/android/sepunion/IExclusiveTaskManager$Stub;
.source "ExclusiveTaskManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$NightModePostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$EasyMutePostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$EdgeScreenPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$AirMotionPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$SoundDetectorBabyCryPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$SoundDetectorDoorBellPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$InteractionControlPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$OneHandModePostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$TurnOffAllSoundPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$GrayScalePostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$NegativePostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorLensPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorBlindPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$AssistantPostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$RemoveAnimationPreProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$PreProcess;,
        Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;
    }
.end annotation


# static fields
.field public static final BABYCRYING_START_BROADCAST:Ljava/lang/String; = "com.samsung.settings.action.sound_detector.start"

.field public static final COMPONENT_NAME_ASSISTANT_MENU:Ljava/lang/String; = "com.samsung.accessibility/.assistantmenu.serviceframework.AssistantMenuService"

.field public static final COMPONENT_NAME_INTERACTION_CONTROL:Ljava/lang/String; = "com.samsung.accessibility/.interactioncontrol.AccessControlMainService"

.field private static final DEBUG_VERBOSE:Z = false

.field public static final DOORBELL_START_BROADCAST:Ljava/lang/String; = "com.samsung.settings.action.doorbell_detector.start"

.field public static final ONE_HAND_MODE_BROADCAST:Ljava/lang/String; = "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

.field public static final SETTINGS_KEY_COLOR_ADJUSTMENT_TYPE:Ljava/lang/String; = "color_adjustment_type"

.field public static final SETTINGS_KEY_COLOR_LENS_OPACITY:Ljava/lang/String; = "color_lens_opacity"

.field public static final SETTINGS_KEY_COLOR_LENS_SWITCH:Ljava/lang/String; = "color_lens_switch"

.field public static final SETTINGS_KEY_COLOR_LENS_TYPE:Ljava/lang/String; = "color_lens_type"

.field private static final TAG:Ljava/lang/String;

.field public static final TURN_OFF_ALL_SOUND_BROADCAST:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

.field private mHasSoftNaviBar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IExclusiveTaskManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mHasSoftNaviBar:Z

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mHasSoftNaviBar:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/sepunion/ExclusiveTaskManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mHasSoftNaviBar:Z

    return p1
.end method


# virtual methods
.method public addToAffectedList(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->addToAffectedList(II)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "\n##### ExclusiveTaskManagerService #####\n##### (dumpsys sepunion exclusivetask) #####\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->destroyExclusiveTaskService()V

    :cond_9
    return-void
.end method

.method public getAffectedList(I)[I
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->getAffectedList(I)[I

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    return-object v0
.end method

.method public getId(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->getId(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 2

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public removeFromAffectedList(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->removeFromAffectedList(II)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public setAffectedList(I[IZ)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mExclusiveTaskService:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->setAffectedList(I[IZ)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method
