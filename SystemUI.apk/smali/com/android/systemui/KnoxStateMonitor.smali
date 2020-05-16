.class public final Lcom/android/systemui/KnoxStateMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/KnoxStateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

.field private mContext:Landroid/content/Context;

.field private mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

.field private mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

.field private mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

.field private mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor;->DEBUG:Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$1;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$2;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/KnoxStateMonitor$2;-><init>(Lcom/android/systemui/KnoxStateMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->setUpKnoxClass()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/-$$Lambda$KnoxStateMonitor$ArmpDHuGLD07_DGAEQ46k2ENkj0;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$KnoxStateMonitor$ArmpDHuGLD07_DGAEQ46k2ENkj0;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/KnoxStateMonitor;)Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateLockTypeOverride()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelButtons()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelEdit()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelItems()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarText()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarIcons()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarBatteryColour()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarHidden()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateNavigationBarHidden()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateContainerKioskmode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/KnoxStateMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateKnoxKeyguardState(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleDisableDeviceWhenReachMaxFailed()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelButtonUsers()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleEnableMDMWallpaper()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/KnoxStateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handleDoKeyguard(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleDPMPasswordChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleEnableUCMLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handlePersonaStateChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/KnoxStateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handlePersonaLaunch(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleRCPPolicyChange()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateLockscreenHiddenItems()V

    return-void
.end method

.method private handleDPMPasswordChanged()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleDPMPasswordChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDPMPasswordChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDisableDeviceWhenReachMaxFailed()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleDisableDeviceWhenReachMaxFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDisableDeviceWhenReachMaxFailed()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDoKeyguard(I)V
    .locals 3

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoKeyguard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDoKeyguard(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnableMDMWallpaper()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleEnableMDMWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onEnableMDMWallpaper()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnableUCMLock()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleEnableUCMLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onEnableUCMLock()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePersonaLaunch(I)V
    .locals 3

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePersonaLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onPersonaLaunch(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePersonaStateChange()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handlePersonaStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onPersonaStateChange()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRCPPolicyChange()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleRCPPolicyChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onRCPPolicyChange()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateContainerKioskmode()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateContainerKioskmode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateContainerKioskmode()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateKnoxKeyguardState(Z)V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateKnoxKeyguardState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateKnoxKeyguardState(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateLockTypeOverride()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateLockTypeOverride"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateLockTypeOverride()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateLockscreenHiddenItems()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateLockscreenHiddenItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateLockscreenHiddenItems()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateNavigationBarHidden()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateNavigationBarHidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateNavigationBarHidden()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtonUsers()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelButtonUsers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelButtonUsers()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtons()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelButtons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelButtons()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelEdit()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelEdit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelEdit()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelItems()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelItems()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarBatteryColour()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateStatusBarBatteryColour"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarBatteryColour()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarHidden()V
    .locals 5

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateStatusBarHidden() - mCallbacks.size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarHidden()V

    const-string v2, "KnoxStateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "         -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarIcons()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateStatusBarIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarIcons()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarText()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateStatusBarText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarText()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->setUpKnoxClass()V

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->setUpIntentReceiver()V

    return-void
.end method

.method private setUpIntentReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.keyguard.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setUpKnoxClass()V
    .locals 1

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    return-void
.end method


# virtual methods
.method public checkSdpCondition(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;->isSdpSupported()Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "CustomSdkMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-mKnoxCustomLockScreenHiddenItems="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mKnoxCustomLockScreenOverrideMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2400(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mKnoxCustomUnlockSimOnBootState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2500(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mUnlockSimPin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-mKnoxCustomQuickPanelButtons="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mKnoxCustomQuickPanelButtonUsers="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mKnoxCustomQuickPanelEditMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2900(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mQuickPanelItems="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3000(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-mKnoxCustomDoubleTapState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3100(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mStatusBarText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-mStatusBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mStatusBarTextStyle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3400(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mStatusBarTextSize="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3500(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mStatusBarTextWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mStatusBarIconsState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "-mBatteryLevelColourItem="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "-mBatteryLevelColourItem=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, "-mHideNotificationMessages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3900(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mStatusBarNotificationsState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4000(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mChargerConnectionSoundEnabledState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4100(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mVolumePanelEnabledState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mIsCustomSdkStatusBarHidden="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "ContainerMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-mIsContainerKioskMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$4400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "EdmMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-mIsStatusBarHidden="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$4500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mIsNavigationBarHidden="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$4600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mIsMDMKioskMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$4700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mWipeExcludeExternalStorage="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$4800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mLockDelay="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$4900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mMaxNumFailedAttemptForDisable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mIsDeviceDisableForMaxFailedAttempt="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mPwdChangeRequest="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "-mSettingsChangesAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mStatusBarExpandAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mAirplaneModeAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mCellularDataAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mNFCAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mWifiTetheringAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mBluetoothAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mNFCStateChangeAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mWifiStateChangeAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mWifiAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mLocationProviderAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "-mGPSStateChangeAllowed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mIsLockscreenInvisibleOverlayConfigured="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mIsLockscreenWallpaperConfigured="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mMultiFactorAuthEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mIsCameraDisabledByMdm="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "-mIsFaceRecognitionAllowedEvenCameraBlocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "SharedDeviceMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-getSharedDeviceStatus()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mCallback size="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v0

    return-object v0
.end method

.method public getKnoxName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8600(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockDelay()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getLockDelay()I

    move-result v0

    return v0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarTextSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextSize()I

    move-result v0

    return v0
.end method

.method public getStatusBarTextStyle()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextStyle()I

    move-result v0

    return v0
.end method

.method public getStatusBarTextWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextWidth()I

    move-result v0

    return v0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getUnlockSimPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBatteryNotificationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isBatteryNotificationEnabled()Z

    move-result v0

    return v0
.end method

.method public isBlockedEdmSettingsChange()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlueLightFilterTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBluetoothTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isBrightnessBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBrightnessBlocked()Z

    move-result v0

    return v0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isBrightnessControllerEnabled()Z

    move-result v0

    return v0
.end method

.method public isCarrierTextEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isCarrierTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isCellularDataAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isCellularDataAllowed()Z

    move-result v0

    return v0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isChargerConnectionSoundEnabledState()Z

    move-result v0

    return v0
.end method

.method public isContainerKioskMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8200(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v0

    return v0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method public isDisableDeviceByMultifactor()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisableDeviceByMultifactor( = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricsOptionEnabledforMultiFactor()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricsOptionEnabledforMultiFactor()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDndTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isDndTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isFaceRecognitionDisabledByMdm()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isCameraDisabledByMdm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isFaceRecognitionAllowedEvenCameraBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isFlashlightTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public isLegacyContainer(Landroid/content/pm/UserInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

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

.method public isLocationTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockScreenDisabledbyKNOXForBoot()Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/SystemManager;->getLockScreenOverrideMode()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    move v2, v6

    if-eqz v2, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "shared_device_status"

    invoke-static {v3, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public isLockscreenAllDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenAllDisabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenClockEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenDateEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenHelpTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMWallpaperEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isMultiUserSwitchBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMultiUserSwitchBlocked()Z

    move-result v0

    return v0
.end method

.method public isMultifactorAuthEnforced()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLock2StepVerificationEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNavigationBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isNavigationBarHidden()Z

    move-result v0

    return v0
.end method

.method public isNeedtoSetupAirplaneModeTileDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPanelExpandEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isStatusBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isPasswordVisibilityEnabled()Z

    move-result v0

    return v0
.end method

.method public isPersona(I)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7100(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isPwdChangeRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getPwdChangeRequest()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQuickConnectEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isQuickConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isQuickConnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isQuickSettingEditEnabled()Z

    move-result v0

    return v0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isRotationLockTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isSetToSwipeLock()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isSetToSwipeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSharedDeviceEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isSoundModeTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isStatusBarHidden()Z

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

.method public isStatusBarIconsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarIconsEnabled()Z

    move-result v0

    return v0
.end method

.method public isSubIdLockedByMDM()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isSubIdLockedByAdmin()Z

    move-result v0

    return v0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isUnlockSimOnBootState()Z

    move-result v0

    return v0
.end method

.method public isUsersEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isUsersEnabled()Z

    move-result v0

    return v0
.end method

.method public isVoLteTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isVoLteTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isVolumeDialogEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isVolumePanelEnabledState()Z

    move-result v0

    return v0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    return v0
.end method

.method public isWifiTileBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isWifiTileBlocked()Z

    move-result v0

    return v0
.end method

.method public knoxContainerInSuperLockMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8300(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v0

    return v0
.end method

.method public lockSdp()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KnoxStateMonitor"

    const-string v2, "lockSdp :: Device Owner has been locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onDeviceOwnerLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockSdp :: Maybe keyguard shown as user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V
    .locals 3

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback() callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string v1, "KnoxStateMonitor"

    const-string/jumbo v2, "removeCallback() mCallbacks has same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V
    .locals 3

    const-string v0, "KnoxStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallback() callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string v1, "KnoxStateMonitor"

    const-string/jumbo v2, "removeCallback() mCallbacks has same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unlockSdp(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "KnoxStateMonitor"

    const-string/jumbo v2, "unlockSdp :: Device Owner has been authenticated with biometrics"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onBiometricsAuthenticated(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_0
    const-string v1, "KnoxStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlockSdp :: Maybe keyguard hidden as user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    return-void
.end method
