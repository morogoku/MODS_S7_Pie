.class public Lcom/android/systemui/aod/AODUi;
.super Ljava/lang/Object;
.source "AODUi.java"

# interfaces
.implements Lcom/android/systemui/aod/AODMachine$Part;
.implements Lcom/android/systemui/aod/DozeWindow;


# instance fields
.field private final mAODService:Lcom/android/systemui/aod/AODMachine$Service;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHost:Lcom/android/systemui/doze/DozeHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODMachine$Service;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aod/AODUi;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    iput-object p2, p0, Lcom/android/systemui/aod/AODUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p3, p0, Lcom/android/systemui/aod/AODUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method

.method private updateAnimateWakeup(Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/aod/AODUi$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return-void
.end method


# virtual methods
.method public setAODShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/AODUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAODParameters()Lcom/android/systemui/aod/AODParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/aod/AODParameters;->isAODOn()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAODParameters()Lcom/android/systemui/aod/AODParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/aod/AODParameters;->setAODOn(Z)V

    iget-object v0, p0, Lcom/android/systemui/aod/AODUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->updateAODShowing()V

    :cond_0
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/aod/AODMachine$AODState;Lcom/android/systemui/aod/AODMachine$AODState;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/aod/AODUi$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p2}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/aod/AODUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->startDozing()V

    nop

    :goto_0
    sget-object v0, Lcom/android/systemui/aod/AODUi$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p2}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/aod/AODUi;->setAODShowing(Z)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/aod/AODUi;->setAODShowing(Z)V

    nop

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/systemui/aod/AODUi;->updateAnimateWakeup(Lcom/android/systemui/aod/AODMachine$AODState;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateWindowLayoutParams()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/Rune;->useAODWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/AODUi;->mAODService:Lcom/android/systemui/aod/AODMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/aod/AODMachine$Service;->updateAODWindowLayoutParams()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/AODUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->updateAODWindowLayoutParams()V

    :goto_0
    return-void
.end method
