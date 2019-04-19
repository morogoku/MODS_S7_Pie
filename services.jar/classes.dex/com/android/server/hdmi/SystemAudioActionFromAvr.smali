.class final Lcom/android/server/hdmi/SystemAudioActionFromAvr;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "SystemAudioActionFromAvr.java"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    return-void
.end method

.method private handleSystemAudioActionFromAvr()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->mTargetAudioStatus:Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->finishWithCallback(I)V

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isProhibitMode()Z

    move-result v0

    if-eqz v0, :cond_32

    nop

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->mAvrLogicalAddress:I

    const/16 v3, 0x72

    const/4 v4, 0x4

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    iput-boolean v2, p0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->mTargetAudioStatus:Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->sendSystemAudioModeRequest()V

    return-void

    :cond_32
    const-class v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->removeAction(Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->mTargetAudioStatus:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->setSystemAudioMode(Z)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->startAudioStatusAction()V

    goto :goto_49

    :cond_43
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->setSystemAudioMode(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->finishWithCallback(I)V

    :goto_49
    return-void
.end method


# virtual methods
.method start()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->removeSystemAudioActionInProgress()V

    invoke-direct {p0}, Lcom/android/server/hdmi/SystemAudioActionFromAvr;->handleSystemAudioActionFromAvr()V

    const/4 v0, 0x1

    return v0
.end method