.class public Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;
.super Ljava/lang/Object;
.source "DefaultGestureFSM.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureFSM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;,
        Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;
    }
.end annotation


# instance fields
.field mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

.field mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

.field mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

.field mDisplay:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

.field mHintVI:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

.field mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field mState:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;Lcom/android/systemui/statusbar/phone/util/DisplayUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mHintVI:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDisplay:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    return-void
.end method

.method private isDetectingOptionalGesture()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDistanceOverThreshold(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getDistanceThreshold()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private logDistance(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDisplay:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getDistance(Landroid/view/MotionEvent;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->pxToMM(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "DefaultGestureFSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "distance - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " key - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleEvent(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->TOUCH_MOTION:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->handleEvent(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;Landroid/view/MotionEvent;)V

    return-void
.end method

.method handleEvent(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;Landroid/view/MotionEvent;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDebug(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$1;->$SwitchMap$com$android$systemui$statusbar$phone$gesture$DefaultGestureFSM$State:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mState:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    if-ne p1, v0, :cond_1

    const-string v0, "onCancel"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onCancel(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->restoreTouchEventsSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->restoreTouchData()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->TOUCH_MOTION:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->restoreTouchEventsSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->bypassEvent(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isTouchUpOrCancel(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "onActionUp"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onActionUp(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->IDLE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isTouchUpOrCancel(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "onActionUp"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onActionUp(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->IDLE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :pswitch_2
    const-string v0, "onActionSwipeUpAndHold"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onActionSwipeUpAndHold(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED_WITHOUT_RESTORE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getDistance(Landroid/view/MotionEvent;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isTouchUpOrCancel(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->isDetectingOptionalGesture()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isSwipeOnRelease()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->isDistanceOverThreshold(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "onSwipe"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onSwipe(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED_WITHOUT_RESTORE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isSwipeUpAndHoldEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->isDistanceOverThreshold(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isHold(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->SWIPE_UP_AND_HOLD:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_5
    const-string v1, "onFollowingUpMove"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onFollowingUpMove(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->isDetectingOptionalGesture()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->isVIEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mHintVI:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->onActionMove(II)V

    goto/16 :goto_5

    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isSwipeOnRelease()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->isDetectingOptionalGesture()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "onSwipe"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onSwipe(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isFollowingUpEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->FOLLOWUP_DETECTING:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED_WITHOUT_RESTORE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->restoreTouchEventsSupported()Z

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->onDetecting(Landroid/view/MotionEvent;Z)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isStylus(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isLimitedStartingArea(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onActionDown(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->isVIEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mHintVI:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isFixedOrientation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->start(IZ)V

    goto/16 :goto_5

    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->TOUCH_MOTION:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mAction:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;->onActionMove(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isForceTouchPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED_WITHOUT_RESTORE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-interface {v0, p2, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isTimedOut(Landroid/view/MotionEvent;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-interface {v0, p2, v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isWrongSlope(Landroid/view/MotionEvent;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->isTouchUpOrCancel(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->isGestureEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getDistance(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->isDetectingOptionalGesture()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->needKeyAction()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getOptionalDistanceThreshold()I

    move-result v1

    if-le v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mHintVI:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->hide()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->DETECTED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->isVIEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getViewRegion()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mHintVI:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->onActionMove(II)V

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->isDistanceOverThreshold(I)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->DETECTED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    :cond_10
    :goto_2
    goto :goto_5

    :cond_11
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->logDistance(Landroid/view/MotionEvent;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto :goto_5

    :cond_12
    :goto_4
    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->CANCELED:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    goto :goto_5

    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->isVIEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mHintVI:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->reset()V

    goto :goto_5

    :cond_13
    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->TOUCH_MOTION:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mDetector:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->isGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->getStartingInjection(Landroid/view/MotionEvent;)Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mCurrentInjection:Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->DETECTING:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    :cond_14
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->IDLE:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V

    return-void
.end method

.method setState(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "DefaultGestureFSM"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->mState:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$State;

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;->ENTRY:Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;->handleEvent(Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM$Event;Landroid/view/MotionEvent;)V

    return-void
.end method
