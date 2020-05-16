.class public Lcom/android/systemui/cover/SysUICoverService;
.super Lcom/samsung/android/cover/SemCoverService;
.source "SysUICoverService.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/cover/SemCoverService;",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/cover/PluginViewCover;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCoverHost:Lcom/android/systemui/cover/CoverHost;

.field private mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAttached:Z

.field private mIsCoverAppCovered:Z

.field private mPlugin:Z

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/cover/SysUICoverService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/cover/SemCoverService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsAttached:Z

    iput-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    iput-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsCoverAppCovered:Z

    new-instance v0, Lcom/android/systemui/cover/SysUICoverService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/SysUICoverService$1;-><init>(Lcom/android/systemui/cover/SysUICoverService;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cover/SysUICoverService;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/cover/SysUICoverService;Lcom/samsung/android/cover/CoverState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/SysUICoverService;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/cover/SysUICoverService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->updateSPluginListener()V

    return-void
.end method

.method private getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/cover/SysUICoverService;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/cover/CoverHost;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/cover/CoverHost;

    iput-object v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    return-object v0
.end method

.method private isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z
    .locals 3

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public static synthetic lambda$updateCoverWindowLp$0(Lcom/android/systemui/cover/SysUICoverService;Lcom/samsung/android/cover/CoverState;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCoverWindowLp: CWD is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateCoverWindowLp: lp is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v1, v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private startCover()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/CoverWindowDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    iget-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v1}, Lcom/android/systemui/cover/CoverWindowDelegate;->attach()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v0, v1, v2}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->onCoverAttached(Landroid/view/ViewGroup;Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    iget-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    :cond_1
    return-void
.end method

.method private stopCover()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->onCoverDetached()V

    iput-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->detach()V

    iput-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    :cond_1
    return-void
.end method

.method private updateCoverWindowLp(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCoverWindowLp: CS is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$NXBBsLlNm-ijo-xhomzQxL1nkzA;-><init>(Lcom/android/systemui/cover/SysUICoverService;Lcom/samsung/android/cover/CoverState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSPluginListener()V
    .locals 3

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    iget-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    iput-boolean v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    :cond_0
    if-eqz v0, :cond_1

    const-class v1, Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/cover/SemCoverService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAppCovered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsCoverAppCovered:Z

    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/CoverHost;->onCoverAppCovered(Z)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCoverAppCovered: CoverHost is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->onCoverAppCovered(Z)V

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/cover/SysUICoverService;->updateCoverWindowLp(Lcom/samsung/android/cover/CoverState;Z)V

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_3
    or-int/lit8 v0, v0, 0x20

    :goto_1
    return v0
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAttached() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/cover/SysUICoverService;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    if-eqz v0, :cond_1

    const-class v2, Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v2, v3}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsAttached:Z

    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCoverAttached: CoverHost is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->startCover()V

    return-void
.end method

.method public onCoverDetached()V
    .locals 3

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iput-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    iget-object v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v0, v2}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCoverDetached: CoverHost is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->stopCover()V

    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsAttached:Z

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    iget-boolean v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverStateUpdated() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCoverStateUpdated: CoverHost is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    iget-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsCoverAppCovered:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/cover/SysUICoverService;->updateCoverWindowLp(Lcom/samsung/android/cover/CoverState;Z)V

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onCreate()V

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate() fail to get CoverHost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/cover/SysUICoverService;->onPluginConnected(Lcom/samsung/systemui/splugins/cover/PluginViewCover;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/cover/PluginViewCover;Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPluginConnected() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->setCoverPlugin(Lcom/samsung/systemui/splugins/cover/PluginViewCover;)V

    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->startCover()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-virtual {p0, p1}, Lcom/android/systemui/cover/SysUICoverService;->onPluginDisconnected(Lcom/samsung/systemui/splugins/cover/PluginViewCover;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/cover/PluginViewCover;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPluginDisconnected() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->setCoverPlugin(Lcom/samsung/systemui/splugins/cover/PluginViewCover;)V

    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->stopCover()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onScreenTurnedOff() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->onScreenTurnedOff()V

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onScreenTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->onScreenTurningOn()V

    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onSystemReady()V

    return-void
.end method
