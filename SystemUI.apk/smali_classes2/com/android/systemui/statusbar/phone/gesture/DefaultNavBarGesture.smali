.class public Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;
.super Ljava/lang/Object;
.source "DefaultNavBarGesture.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;


# instance fields
.field private final mBypassEventInjector:Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

.field private mCurrentOptionalGestureType:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

.field private final mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field private mDownX:F

.field private mDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHoldStartTime:J

.field private final mHoldThresholdTime:I

.field private mInjectionInfoSync:Ljava/lang/Object;

.field mKeyInjectionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private final mMoveDetectTimeOut:I

.field private mPrevX:F

.field private mPrevY:F

.field private mRestoreEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeOut:I

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;Lcom/android/systemui/statusbar/phone/util/DisplayUtil;IIIILcom/android/systemui/statusbar/phone/util/LogWrapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mKeyInjectionInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mRestoreEventList:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mInjectionInfoSync:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mBypassEventInjector:Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mTimeOut:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mMoveDetectTimeOut:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHoldThresholdTime:I

    iput p6, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mTouchSlop:I

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DefaultNavBarGesture.backgroundThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private filterUnnecessaryActionByGestureDetectingView(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$bypassEvent$1(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bypassEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$onDetecting$2(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetecting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$reset$3(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;)V
    .locals 1

    const-string v0, "reset"

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static synthetic lambda$restoreTouchData$0(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->filterUnnecessaryActionByGestureDetectingView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreTouchData - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->logDebug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mBypassEventInjector:Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;->byPassRawEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mRestoreEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "DefaultNavBarGesture"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bypassEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$6hHe4vivUQUjCq9CIzFCspZQPN8;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$6hHe4vivUQUjCq9CIzFCspZQPN8;-><init>(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->restoreTouchData()V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public getCurrentOptionalGestureType()Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mCurrentOptionalGestureType:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    return-object v0
.end method

.method public getDistance(Landroid/view/MotionEvent;)I
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownX:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    int-to-double v4, v3

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method public getStartingInjection(Landroid/view/MotionEvent;)Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mInjectionInfoSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mKeyInjectionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isDisabledByPolicy()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    monitor-exit v1

    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isForceTouchPressed(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "force touch pressed"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->logDebug(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public isHold(Landroid/view/MotionEvent;Z)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevX:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevY:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevX:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevY:F

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHoldStartTime:J

    :cond_0
    if-nez p2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    :cond_1
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHoldStartTime:J

    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevX:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHoldStartTime:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHoldThresholdTime:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    const-string v5, "hold"

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->logDebug(Ljava/lang/String;)V

    :cond_4
    return v4
.end method

.method public isLimitedStartingArea(Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isFixedOrientation()Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v3

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2

    :cond_3
    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method public isStylus(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTimedOut(Landroid/view/MotionEvent;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getTimeOut()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->getTimeOut()I

    move-result v4

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mTimeOut:I

    :goto_0
    sub-long v5, v0, v2

    int-to-long v7, v4

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    const-string v6, "timedOut"

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->logDebug(Ljava/lang/String;)V

    :cond_2
    return v5
.end method

.method public isTouchUpOrCancel(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    move v0, v1

    if-eqz v0, :cond_2

    const-string v1, "touch up"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->logDebug(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public isWrongSlope(Landroid/view/MotionEvent;Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->getRotation()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    iget v9, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownX:F

    sub-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    int-to-double v10, v9

    int-to-double v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v13

    iget v15, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mTouchSlop:I

    if-le v15, v10, :cond_3

    sub-long v15, v11, v13

    iget v2, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mMoveDetectTimeOut:I

    move/from16 v18, v4

    int-to-long v3, v2

    cmp-long v2, v15, v3

    if-lez v2, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    move/from16 v2, v17

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v4, "DefaultNavBarGesture"

    const-string v15, "move detecting timed out"

    invoke-virtual {v3, v4, v15}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    move/from16 v18, v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isVerticalGesture()Z

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mCurrentOptionalGestureType:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    sget-object v4, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    if-eq v3, v4, :cond_5

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mCurrentOptionalGestureType:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    sget-object v4, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->Vertical:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    move v2, v3

    :cond_5
    const/4 v3, 0x2

    if-eqz v2, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isFixedOrientation()Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz v1, :cond_a

    if-ne v1, v3, :cond_6

    goto :goto_6

    :cond_6
    mul-int/lit8 v3, v9, 0x2

    if-le v8, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eqz v18, :cond_9

    iget v4, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    cmpl-float v4, v7, v4

    if-lez v4, :cond_8

    :goto_4
    const/16 v17, 0x1

    goto :goto_5

    :cond_8
    const/16 v17, 0x0

    goto :goto_5

    :cond_9
    iget v4, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownY:F

    cmpg-float v4, v7, v4

    if-gez v4, :cond_8

    goto :goto_4

    :goto_5
    move/from16 v5, v17

    goto :goto_b

    :cond_a
    :goto_6
    mul-int/lit8 v3, v8, 0x2

    if-le v9, v3, :cond_b

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    iget v4, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mDownX:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_c

    const/16 v17, 0x1

    goto :goto_8

    :cond_c
    const/16 v17, 0x0

    :goto_8
    move/from16 v5, v17

    goto :goto_b

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isFixedOrientation()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v1, :cond_10

    if-ne v1, v3, :cond_e

    goto :goto_9

    :cond_e
    mul-int/lit8 v3, v8, 0x2

    if-le v9, v3, :cond_f

    const/4 v3, 0x1

    goto :goto_b

    :cond_f
    const/4 v3, 0x0

    goto :goto_b

    :cond_10
    :goto_9
    mul-int/lit8 v3, v9, 0x2

    if-le v8, v3, :cond_11

    const/16 v17, 0x1

    goto :goto_a

    :cond_11
    const/16 v17, 0x0

    :goto_a
    move/from16 v3, v17

    :goto_b
    nop

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isMultiGestureSupport()Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v3, :cond_13

    if-eqz v5, :cond_13

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mCurrentOptionalGestureType:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    sget-object v15, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    if-ne v4, v15, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;->isVerticalGesture()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->Horizontal:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    goto :goto_c

    :cond_12
    sget-object v4, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->Vertical:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    :goto_c
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mCurrentOptionalGestureType:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    const/4 v3, 0x0

    :cond_13
    if-eqz v3, :cond_14

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v15, "DefaultNavBarGesture"

    const-string v0, "wrong slope"

    invoke-virtual {v4, v15, v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return v3
.end method

.method public onDetecting(Landroid/view/MotionEvent;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$xKA0cKUOUk0xoWMcOEoLsVK2YnI;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$xKA0cKUOUk0xoWMcOEoLsVK2YnI;-><init>(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mPrevY:F

    sget-object v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;->None:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mCurrentOptionalGestureType:Lcom/android/systemui/statusbar/phone/gesture/GestureValues$GestureType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$fUQvIFy0y6zWappA_jYvNrl84X8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$fUQvIFy0y6zWappA_jYvNrl84X8;-><init>(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public restoreTouchData()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$NRppIlTreIHHs1BpOypJxlJCMik;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$DefaultNavBarGesture$NRppIlTreIHHs1BpOypJxlJCMik;-><init>(Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setKeyInjectionInfos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mInjectionInfoSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;->mKeyInjectionInfos:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
