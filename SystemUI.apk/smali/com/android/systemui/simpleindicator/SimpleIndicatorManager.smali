.class public Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;
.super Ljava/lang/Object;
.source "SimpleIndicatorManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;
    }
.end annotation


# instance fields
.field private mCarrierCrew:Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;

.field private mIsAddedTunable:Z

.field private mMediator:Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;

.field private mSettingsListener:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

.field private mSubscriberList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mIsAddedTunable:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mSubscriberList:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;-><init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mSettingsListener:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->notifyNewsToSubscribers()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;
    .locals 1

    const-class v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;

    return-object v0
.end method

.method public static synthetic lambda$onTuningChanged$1(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->notifyNewsToSubscribers()V

    return-void
.end method

.method public static synthetic lambda$setBlackListDBValue$0(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "icon_blacklist"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private notifyNewsToSubscribers()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;->updateQuickStarStyle()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isHomeCarrierDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isLockCarrierDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isPanelCarrierDisabled()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOperatorLogoIconVisibility()V

    :cond_3
    return-void
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    new-instance v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;

    invoke-direct {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mCarrierCrew:Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;

    new-instance v0, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;

    iget-object v1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;-><init>(Landroid/content/Context;Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V

    iput-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mMediator:Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mSettingsListener:Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager$SimpleIndicatorSettingsListener;->init()V

    return-void
.end method

.method public isHomeCarrierDisabled()Z
    .locals 1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNetworkInfoBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mCarrierCrew:Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->isHomeCarrierDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLockCarrierDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mCarrierCrew:Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->isLockCarrierDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPanelCarrierDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mCarrierCrew:Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->isPanelCarrierDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPluginConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mMediator:Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mMediator:Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;

    invoke-virtual {v0}, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyPluginConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public notifyPluginConnected()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mIsAddedTunable:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mIsAddedTunable:Z

    :cond_0
    return-void
.end method

.method public notifyPluginDisconnected()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mIsAddedTunable:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mIsAddedTunable:Z

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "[QuickStar]SimpleIndicatorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTuningChanged() key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mCarrierCrew:Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/simpleindicator/SimpleIndicatorCarrierCrew;->updateAllData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WBF53BpQMwPlgknhSP5gMUNi5_o;

    invoke-direct {v1, p0}, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WBF53BpQMwPlgknhSP5gMUNi5_o;-><init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerSubscriber(Ljava/lang/String;Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;)V
    .locals 3

    const-string v0, "[QuickStar]SimpleIndicatorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSubscriber() membershipKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/android/systemui/simpleindicator/SimpleIndicatorSubscriber;->updateQuickStarStyle()V

    return-void
.end method

.method public setBlackListDBValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getMainHanlder()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WUx5vjaRxwdIoSFqBG-5pI5T39Y;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/simpleindicator/-$$Lambda$SimpleIndicatorManager$WUx5vjaRxwdIoSFqBG-5pI5T39Y;-><init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterSubscriber(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorManager;->mSubscriberList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
