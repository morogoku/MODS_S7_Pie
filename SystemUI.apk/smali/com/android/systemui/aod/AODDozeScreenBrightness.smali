.class public Lcom/android/systemui/aod/AODDozeScreenBrightness;
.super Ljava/lang/Object;
.source "AODDozeScreenBrightness.java"

# interfaces
.implements Lcom/android/systemui/aod/AODMachine$Part;
.implements Lcom/android/systemui/aod/DozeBrightness;


# instance fields
.field private final mAODService:Lcom/android/systemui/aod/AODMachine$Service;

.field private mBrightnessValues:[I

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private mDozeMode:I

.field private mFrontScrimAlpha:F

.field private mLastSensorValue:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODMachine$Service;Lcom/android/systemui/doze/DozeHost;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mLastSensorValue:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mBrightnessValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mFrontScrimAlpha:F

    iput-object p1, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    iput-object p2, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-void

    :array_0
    .array-data 4
        0x1
        0x61
    .end array-data
.end method

.method private computeBrightness(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mBrightnessValues:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mBrightnessValues:[I

    aget v0, v0, p1

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private resetBrightnessToDefault()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    iget v1, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mDozeMode:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/aod/AODMachine$Service;->semSetDozeScreenBrightness(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODDozeScreenBrightness;->setFrontScrimAlpha(F)V

    return-void
.end method

.method private setFrontScrimAlpha(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mFrontScrimAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mFrontScrimAlpha:F

    iget-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget v1, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mFrontScrimAlpha:F

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    :cond_0
    return-void
.end method

.method private updateBrightnessAndReady(Z)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mLastSensorValue:I

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODDozeScreenBrightness;->computeBrightness(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    iget v3, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mDozeMode:I

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/aod/AODMachine$Service;->semSetDozeScreenBrightness(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public setAODParameter(Lcom/samsung/systemui/splugins/aod/PluginAODParameter;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mBrightnessValues:[I

    :cond_0
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/aod/AODDozeScreenBrightness$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p2}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODDozeScreenBrightness;->setFrontScrimAlpha(F)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODDozeScreenBrightness;->setFrontScrimAlpha(F)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/aod/AODDozeScreenBrightness;->resetBrightnessToDefault()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateDozeBrightness(II)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mDozeMode:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mDozeMode:I

    iput p2, p0, Lcom/android/systemui/aod/AODDozeScreenBrightness;->mLastSensorValue:I

    invoke-direct {p0, v0}, Lcom/android/systemui/aod/AODDozeScreenBrightness;->updateBrightnessAndReady(Z)V

    return-void
.end method
