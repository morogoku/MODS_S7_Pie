.class public Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "StatusBarKnoxMediator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# static fields
.field private static final DEBUG:Z

.field private static sInstance:Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;


# instance fields
.field private mDoubleTapCount:I

.field private mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKnoxMediator$-o24-xTmjqkmO9WuFN69qtpZvMc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKnoxMediator$-o24-xTmjqkmO9WuFN69qtpZvMc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private animateHide(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private animateShow(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private executeKnoxCustomDoubleTapScreenOff(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "setKnoxCustomDoubleTapScreenOff: posting delayed message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "setKnoxCustomDoubleTapScreenOff: going to sleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    :cond_1
    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "setKnoxCustomDoubleTapScreenOff: not tapped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->sInstance:Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    return-object v0
.end method

.method private isFirstTimeDoubleTapCount()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$init$0(Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onUpdateStatusBarText()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    return-void
.end method

.method private updateNotifications()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    return-void
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 3

    const-string v0, "StatusBarKnoxMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() DEBUG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKnoxMediator$7Wbp6ymJU-7YsFSWkytVTIlQr-o;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKnoxMediator$7Wbp6ymJU-7YsFSWkytVTIlQr-o;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBarInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onBarInterceptTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->isFirstTimeDoubleTapCount()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->isExpandedVisible()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    const-string v1, "StatusBarKnoxMediator"

    const-string v2, "setKnoxCustomDoubleTapScreenOff: ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->executeKnoxCustomDoubleTapScreenOff(Z)V

    return-void
.end method

.method public onNPVInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onNPVInterceptTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->isFirstTimeDoubleTapCount()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->executeKnoxCustomDoubleTapScreenOff(Z)V

    :cond_7
    return-void
.end method

.method public onPersonaLaunch(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPersonaLaunch(userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->updateNotifications()V

    return-void
.end method

.method public onPersonaStateChange()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onPersonaStateChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->updateNotifications()V

    return-void
.end method

.method public onRCPPolicyChange()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onRCPPolicyChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->updateNotifications()V

    return-void
.end method

.method public onUpdateNavigationBarHidden()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onUpdateNavigationBarHidden()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUpdateQuickPanelButtonUsers()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onUpdateQuickPanelButtonUsers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    const v1, 0x7f0a0420

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const v1, 0x7f0a0200

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v2, 0x7f0a042a

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSServiceBox;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateEverything()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSServiceBox;->updateEverything()V

    :cond_2
    return-void
.end method

.method public onUpdateQuickPanelButtons()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onUpdateQuickPanelButtons()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getBarController()Lcom/android/systemui/bar/BarController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getBarController()Lcom/android/systemui/bar/BarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bar/BarController;->refreshBarList()V

    :cond_1
    return-void
.end method

.method public onUpdateStatusBarHidden()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_7

    :try_start_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->isExpandedVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->isShadeLockedState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->animateCollapsePanels()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->makeExpandedInvisibleForKnox()V

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "StatusBarKnoxMediator"

    const-string v2, "onUpdateStatusBarHidden() Visibilities of StatusBarViews for home,lock are GONE by Knox and Collapsed panel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "StatusBarKnoxMediator"

    const-string v2, "onUpdateStatusBarHidden() Visibilities of StatusBarViews for home,lock are GONE by Knox..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "StatusBarKnoxMediator"

    const-string v2, "onUpdateStatusBarHidden() Visibility of StatusBarView is VISIBLE by Knox."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v1

    if-eqz v0, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    if-eqz v0, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "StatusBarKnoxMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed Applying policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    goto :goto_3

    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onUpdateStatusBarHidden() but, mStatusBar is null.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method public onUpdateStatusBarIcons()V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "StatusBarKnoxMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateStatusBarIcons() mStatusBar is null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarIconsEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v1

    const v2, 0x7f0a059b

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "StatusBarKnoxMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateStatusBarIcons() show:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", phoneSystemIcons:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->animateShow(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->animateHide(Landroid/view/View;)V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "StatusBarKnoxMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdateStatusBarIcons() show:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", lockSystemIcons:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->animateShow(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->animateHide(Landroid/view/View;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onUpdateStatusBarText()V
    .locals 7

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onUpdateStatusBarText()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    const v3, 0x7f0a0424

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    const v3, 0x7f0a0423

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextStyle()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextSize()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x0

    const-class v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextWidth()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_5

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextWidth()I

    move-result v2

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x6c

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    const-string v3, "StatusBarKnoxMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpdateStatusBarText(VISIBLE) barTextString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", barTextView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const-string v2, "StatusBarKnoxMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdateStatusBarText(GONE) barTextString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", barTextView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
