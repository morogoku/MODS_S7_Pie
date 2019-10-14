.class final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SendKeyAction.java"


# static fields
.field private static final AWAIT_LONGPRESS_MS:I = 0x190

.field private static final AWAIT_RELEASE_KEY_MS:I = 0x3e8

.field private static final STATE_CHECKING_LONGPRESS:I = 0x1

.field private static final STATE_PROCESSING_KEYCODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SendKeyAction"


# instance fields
.field private mLastKeycode:I

.field private mLastSendKeyTime:J

.field private final mTargetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    iput p3, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    return-void
.end method

.method private getCurrentTime()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private sendKeyDown(I)V
    .registers 5

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method private sendKeyUp()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    packed-switch v0, :pswitch_data_30

    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    goto :goto_2f

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    nop

    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_14
        :pswitch_d
    .end packed-switch
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method processKeyEvent(IZ)V
    .registers 7

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    if-eqz p2, :cond_53

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-eq p1, v0, :cond_2e

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    return-void

    :cond_2e
    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_44

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    :cond_44
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    goto :goto_5d

    :cond_53
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-ne p1, v0, :cond_5d

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public start()Z
    .registers 4

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    return v1

    :cond_1b
    iput v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v2, 0x190

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    return v1
.end method
