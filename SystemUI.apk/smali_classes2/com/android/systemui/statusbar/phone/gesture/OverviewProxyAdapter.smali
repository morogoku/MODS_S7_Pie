.class public Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;
.super Ljava/lang/Object;
.source "OverviewProxyAdapter.java"


# instance fields
.field private mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

.field private final mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

.field private final mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

.field private mQuickScrubStartLister:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/util/LogWrapper;Lcom/android/systemui/OverviewProxyService;Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    return-void
.end method

.method public static synthetic lambda$onQuickScrubMotionEvent$2(Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->handleTouchEvent(Landroid/view/MotionEvent;Z)Z

    return-void
.end method

.method public static synthetic lambda$onStartQuickScrub$1(Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->handleTouchEvent(Landroid/view/MotionEvent;Z)Z

    return-void
.end method

.method public static synthetic lambda$onStartQuickStep$0(Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->notifyQuickStepStarted()V

    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/gesture/GestureValues;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "OverviewProxyAdapter"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onMotionEvent(Landroid/view/MotionEvent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send MotionEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "OverviewProxyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartQuickStep - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPreQuickStep(Landroid/view/MotionEvent;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onPreMotionEvent(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreQuickStep - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "OverviewProxyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartQuickStep - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onQuickScrubMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$OverviewProxyAdapter$TiaLg2Bl-p_jRUKuUhMPXu9fttw;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$OverviewProxyAdapter$TiaLg2Bl-p_jRUKuUhMPXu9fttw;-><init>(Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onStartQuickScrub(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mQuickScrubStartLister:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mQuickScrubStartLister:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v2, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$OverviewProxyAdapter$RHDoEssUuX5f8OrzKp-cGZwh7_4;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$OverviewProxyAdapter$RHDoEssUuX5f8OrzKp-cGZwh7_4;-><init>(Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onStartQuickStep(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mOverviewProxy:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickStep(Landroid/view/MotionEvent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartQuickStep - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "OverviewProxyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartQuickStep - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mHandlerWrapper:Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$OverviewProxyAdapter$uCBzsGLpecRUHa7drSdE5DJ3TpI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/gesture/-$$Lambda$OverviewProxyAdapter$uCBzsGLpecRUHa7drSdE5DJ3TpI;-><init>(Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGestureHelper(Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/gesture/OverviewProxyAdapter;->mQuickScrubStartLister:Ljava/lang/Runnable;

    return-void
.end method
