.class Lcom/android/server/audio/AudioService$PreventOverheatState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreventOverheatState"
.end annotation


# instance fields
.field private mCurDevice:I

.field private mLimitedVolumeForOverheat:F

.field private mState:Z

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;IZI)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mLimitedVolumeForOverheat:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mCurDevice:I

    iput p2, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    iput-boolean p3, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mState:Z

    iput p4, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mCurDevice:I

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService$PreventOverheatState;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mState:Z

    return v0
.end method

.method private isSameUid(I)Z
    .registers 5

    const v0, 0x186a0

    rem-int v1, p1, v0

    iget v2, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    rem-int/2addr v2, v0

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isSpeaker()Z
    .registers 7

    iget v0, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mCurDevice:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iget-object v4, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v4

    if-nez v4, :cond_14

    return v0

    :cond_14
    iget-object v4, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/android/server/audio/AudioService$MultiSoundManager;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$MultiSoundManager;->getAppDevice(I)I

    move-result v4

    if-nez v4, :cond_23

    return v0

    :cond_23
    if-ne v4, v1, :cond_27

    move v2, v3

    nop

    :cond_27
    return v2
.end method


# virtual methods
.method public getLimitedVolumeForOverheat(I)F
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mState:Z

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$PreventOverheatState;->isSameUid(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$PreventOverheatState;->isSpeaker()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_14

    :cond_11
    iget v0, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mLimitedVolumeForOverheat:F

    return v0

    :cond_14
    :goto_14
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public setDevice(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mCurDevice:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_e

    iput p1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mCurDevice:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$PreventOverheatState;->setLimitedVolumeForOverheat()V

    :cond_e
    return-void
.end method

.method public setLimitedVolumeForOverheat()V
    .registers 5

    const-string/jumbo v0, "volume_for_overheat"

    invoke-static {v0}, Landroid/media/AudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_9
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_d} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_f

    move v1, v2

    goto :goto_10

    :catch_f
    move-exception v2

    :goto_10
    iput v1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mLimitedVolumeForOverheat:F

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/android/server/audio/AudioService$MultiSoundManager;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setAppVolumeToNative(I)V

    :cond_21
    return-void
.end method

.method setState(IZI)V
    .registers 7

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    if-eq v1, p1, :cond_c

    iget v0, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    :cond_c
    iput p1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mState:Z

    iput p3, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mCurDevice:I

    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND:Z

    if-eqz v1, :cond_21

    if-eq v0, v2, :cond_21

    iget-object v1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/android/server/audio/AudioService$MultiSoundManager;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$14900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$MultiSoundManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$MultiSoundManager;->setAppVolumeToNative(I)V

    :cond_21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mLimitedVolumeForOverheat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCureDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$PreventOverheatState;->mCurDevice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
