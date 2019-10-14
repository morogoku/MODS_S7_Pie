.class public Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;
.super Ljava/lang/Object;
.source "StatusBarOneClickJumpCallScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBadQsTouchFlag:Z

.field private mIsInCallStateOnBroadcast:Z

.field private mIsTouchOnIndicatorFlag:Z

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mReceivedScreenOffSignalFlag:Z

.field private mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

.field private mStartToJumpAleadyFlag:Z

.field private mTouchDownX:F

.field private mTouchDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStartToJumpAleadyFlag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnBroadcast:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnBroadcast:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isCallStateIndicator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnBroadcast:Z

    return v0
.end method

.method private isColorfulIndicator()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getIndicatorBgColor()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isKeyguardState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isKeyguardState(I)Z

    move-result v1

    return v1
.end method

.method private isShadeState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isShadeState(I)Z

    move-result v1

    return v1
.end method

.method public static synthetic lambda$handleQsTouch$0(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V
    .locals 3

    const-string v0, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** NotificationPanelView.handleQsTouch() showInCallScreen() ScreenFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", badTouchFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStartToJumpAleadyFlag:Z

    return-void
.end method

.method public static synthetic lambda$handleQsTouch$1(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarOneClickJumpCallScreenManager$gwDPib9Wq2iiEmTfI5sEWt7mRrE;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarOneClickJumpCallScreenManager$gwDPib9Wq2iiEmTfI5sEWt7mRrE;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public checkCallStateToBlockPeekAnimation()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isCallStateIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    const-string v2, "Block to run peekanimation to jump call screen."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->unregisterReceiver()V

    return-void
.end method

.method public handleQsTouch(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isColorfulIndicator()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(ACTION_POINTER_DOWN) getRawX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", getRawY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", touchFlag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", but it will be false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    goto/16 :goto_5

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isColorfulIndicator()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(ACTION_CANCEL or ACTION_POINTER_UP) SystemUI block to jump to call screen in multi touch. action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownX:F

    sub-float v5, v3, v5

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownY:F

    sub-float v6, v4, v6

    float-to-int v6, v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    if-gt v5, v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    if-le v6, v7, :cond_b

    :cond_2
    const-string v7, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(ACTION_MOVE) getRawX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", getRawY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isTouchOnIndicatorArea(F)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isCallStateIndicator()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStartToJumpAleadyFlag:Z

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mContext:Landroid/content/Context;

    const-string v7, "telecom"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v7, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    const-string v8, "(ACTION_UP) postDelayed to jump after 500"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStartToJumpAleadyFlag:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v7, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarOneClickJumpCallScreenManager$aLGY1wzPwp4sgaQmHI6YbzLX9Bk;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarOneClickJumpCallScreenManager$aLGY1wzPwp4sgaQmHI6YbzLX9Bk;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V

    invoke-virtual {v1, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isColorfulIndicator()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(ACTION_UP) no jump to callscreen - touchFlag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ScreenFlag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isTouchOnTimeSide:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    goto/16 :goto_5

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownY:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isTouchOnIndicatorArea(F)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isColorfulIndicator()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isKeyguardState()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isExpanding()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isShadeState()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContentHeight()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    :cond_a
    :goto_4
    const-string v1, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(ACTION_DOWN) mTouchDownX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mTouchDownY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", touchFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->registerReceiver()V

    return-void
.end method

.method public isTouchOnIndicatorArea(F)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isKeyguardState()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isShadeState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    return v2
.end method
