.class public Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;
.super Ljava/lang/Object;
.source "NavBarGestureDetector.java"


# instance fields
.field mCallback:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

.field mContext:Landroid/content/Context;

.field mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

.field mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

.field mGestureEnabled:Z

.field private final mGestureHintAnimator:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mInputEventReceiver:Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;

.field mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field mRestoreTouchEventsSupported:Z

.field mVIEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGestureHintAnimator:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    return-void
.end method

.method private initGesture()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/DisplayUtil;->applyMMDimension(F)F

    move-result v0

    float-to-int v0, v0

    new-instance v9, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;

    new-instance v2, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;-><init>(Lcom/android/systemui/statusbar/phone/util/LogWrapper;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const v4, 0x493e0

    const/16 v5, 0x12c

    const/16 v6, 0x1f4

    move-object v1, v9

    move v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/gesture/DefaultNavBarGesture;-><init>(Lcom/android/systemui/statusbar/phone/util/BypassMotionEventInjector;Lcom/android/systemui/statusbar/phone/util/DisplayUtil;IIIILcom/android/systemui/statusbar/phone/util/LogWrapper;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    return-void
.end method

.method private initInputReceiver(Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;)V
    .locals 8

    new-instance v7, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGestureHintAnimator:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mDisplayUtil:Lcom/android/systemui/statusbar/phone/util/DisplayUtil;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/gesture/DefaultGestureFSM;-><init>(Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;Lcom/android/systemui/statusbar/phone/util/DisplayUtil;)V

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureFSM;->init()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NavBarGestureDetector.backgroundThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mContext:Landroid/content/Context;

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    new-instance v2, Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;

    const-string v3, "NavBarGestureDetector"

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureFSM;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mInputEventReceiver:Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;

    return-void
.end method


# virtual methods
.method public isGestureEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGestureEnabled:Z

    return v0
.end method

.method public isVIEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mVIEnabled:Z

    return v0
.end method

.method public restoreTouchEventsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mRestoreTouchEventsSupported:Z

    return v0
.end method

.method public setEnableRestoreTouchEvents(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnableRestoreTouchEvents - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mRestoreTouchEventsSupported:Z

    return-void
.end method

.method public setGestureEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGestureEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGestureEnabled:Z

    return-void
.end method

.method public setKeyInjectionInfos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/navigationbar/KeyInjectionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarGestureDetector"

    const-string v2, "setKeyInjectionInfos"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->setKeyInjectionInfos(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setVIEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVIEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mVIEnabled:Z

    return-void
.end method

.method public start(Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarGestureDetector"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mCallback:Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->initGesture()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->initInputReceiver(Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureListener;)V

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarGestureDetector"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mInputEventReceiver:Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mInputEventReceiver:Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mInputEventReceiver:Lcom/android/systemui/statusbar/phone/gesture/NavBarInputEventReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;->dispose()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/NavBarGestureDetector;->mGesture:Lcom/android/systemui/statusbar/phone/gesture/NavBarGesture;

    :cond_2
    return-void
.end method
