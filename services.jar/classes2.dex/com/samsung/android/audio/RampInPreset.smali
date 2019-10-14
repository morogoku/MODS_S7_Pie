.class public Lcom/samsung/android/audio/RampInPreset;
.super Ljava/lang/Object;
.source "RampInPreset.java"


# static fields
.field private static final RAMP_IN_ABSOLUTE_MUTE_MS:I = 0x3e8

.field private static final RAMP_IN_DURATION_MS:I = 0xbb8

.field private static final RAMP_IN_TIMEOUT_MS:I = 0x2710


# instance fields
.field mIsCustomPreset:Z

.field mPresetName:Ljava/lang/String;

.field mRampDurationMs:I

.field mRampMuteMs:I

.field mRampTimeOutMs:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/audio/RampInPreset;->mRampDurationMs:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/audio/RampInPreset;->mRampMuteMs:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/audio/RampInPreset;->mRampTimeOutMs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/audio/RampInPreset;->mIsCustomPreset:Z

    const-string v0, "default"

    iput-object v0, p0, Lcom/samsung/android/audio/RampInPreset;->mPresetName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/audio/RampInPreset;->mRampDurationMs:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/audio/RampInPreset;->mRampMuteMs:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/audio/RampInPreset;->mRampTimeOutMs:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/audio/RampInPreset;->mIsCustomPreset:Z

    iput-object p1, p0, Lcom/samsung/android/audio/RampInPreset;->mPresetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/audio/RampInPreset;->mIsCustomPreset:Z

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRampConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/audio/RampInPreset;->mPresetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";duration_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/audio/RampInPreset;->mRampDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";abs_mute_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/audio/RampInPreset;->mRampMuteMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";timeout_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/audio/RampInPreset;->mRampTimeOutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRampConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/audio/RampInPreset;->mPresetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
