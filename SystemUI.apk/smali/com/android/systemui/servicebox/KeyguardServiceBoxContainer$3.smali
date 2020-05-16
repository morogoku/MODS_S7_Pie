.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onBootCompleted$0(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendRequestRemoteViewsBroadcast()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$3$SPvHegEKE878eVaZ2IX1ivhc6YY;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/-$$Lambda$KeyguardServiceBoxContainer$3$SPvHegEKE878eVaZ2IX1ivhc6YY;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->loadAllMetaData(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1600(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateFaceWidgetInSettingMenu()V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1700(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setBouncerShowing(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1700(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setKeyguardShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1802(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1600(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2002(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onLockModeChanged()V

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onOpenThemeChanged()V

    return-void
.end method

.method public onOpenThemeReApply()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onOpenThemeReApply()V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onRefreshCarrierInfo()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1400(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V

    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1302(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)I

    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1100(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2102(Z)Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1700(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2100()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setCoverShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2100()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    const-string/jumbo v1, "servicebox_clock"

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2200(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpdateServiceBoxRemoteViews(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isRemoteViewsEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isShowingInServiceBoxOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 4

    const-string v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitchComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$800(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$600(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setSwipeLocked(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->setIsSystemUser(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$1000(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->resetPageKeyOrder()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$900(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateFaceWidgetInSettingMenu()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2300(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2400(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2402(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$800(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2400(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$700()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setSwipeLocked(Z)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2500(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxOwnerInfoView;->updateTextView()V

    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->invalidCachedClockType()V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->access$2002(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z

    :cond_5
    :goto_2
    return-void
.end method
