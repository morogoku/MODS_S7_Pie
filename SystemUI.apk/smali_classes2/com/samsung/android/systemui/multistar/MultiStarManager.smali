.class public Lcom/samsung/android/systemui/multistar/MultiStarManager;
.super Ljava/lang/Object;
.source "MultiStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/multistar/PluginMultiStarManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;,
        Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;
    }
.end annotation


# static fields
.field private static MULTISTAR_VERSION_P:I

.field private static PREF_KEY_CLEAR_SETTINGS:Ljava/lang/String;

.field private static PREF_MULTISTAR:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;


# instance fields
.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockDividerVisibilityListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

.field private mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

.field private mMultiWindowEventListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;

.field private mPluginDockedStackListener:Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

.field private mPluginMultiWindowEventListener:Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MultiStarManager"

    sput-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->TAG:Ljava/lang/String;

    const-string v0, "pref_multistar"

    sput-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->PREF_MULTISTAR:Ljava/lang/String;

    const-string v0, "key_clear_settings"

    sput-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->PREF_KEY_CLEAR_SETTINGS:Ljava/lang/String;

    const/16 v0, 0x7d0

    sput v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->MULTISTAR_VERSION_P:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->TAG:Ljava/lang/String;

    const-string v1, "Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    iput-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/android/systemui/multistar/MultiStarManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDockDividerVisibilityListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDockDividerVisibilityListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/android/systemui/multistar/MultiStarManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiWindowEventListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiWindowEventListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->clearPrevAppSettings(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    new-instance v1, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V

    const-class v2, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
    .locals 1

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
    .locals 0

    sput-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    return-object p0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->MULTISTAR_VERSION_P:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginDockedStackListener:Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginDockedStackListener:Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDockDividerVisibilityListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiWindowEventListener:Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiWindowEventListener:Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    return-object p1
.end method

.method private clearPrevAppSettings(Landroid/content/Context;)V
    .locals 4

    const-string v0, "pref_multistar"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/systemui/multistar/MultiStarManager;->PREF_KEY_CLEAR_SETTINGS:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->setMultiResumeEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->setStayFocusActivityEnabled(Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/systemui/multistar/MultiStarManager;->PREF_KEY_CLEAR_SETTINGS:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDividerView()Lcom/samsung/systemui/splugins/multistar/PluginDividerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    return-object v0
.end method

.method public isSnapWindowRunning()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getVersion()I

    move-result v0

    sget v1, Lcom/samsung/android/systemui/multistar/MultiStarManager;->MULTISTAR_VERSION_P:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->isSnapWindowRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getVersion()I

    move-result v0

    sget v1, Lcom/samsung/android/systemui/multistar/MultiStarManager;->MULTISTAR_VERSION_P:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public setDividerBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->setFocusedFrameBackgroundColor(I)V

    return-void
.end method

.method public setDividerCloseController(Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/Divider;->setDividerCloseController(Lcom/samsung/systemui/splugins/multistar/PluginIDividerCloseControll;)V

    return-void
.end method

.method public showDividerPanelView(ZZZ)V
    .locals 2

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getVersion()I

    move-result v0

    sget v1, Lcom/samsung/android/systemui/multistar/MultiStarManager;->MULTISTAR_VERSION_P:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->showDividerPanelView(ZZZ)V

    :cond_0
    return-void
.end method

.method public showSnapWindowGuideView(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getVersion()I

    move-result v0

    sget v1, Lcom/samsung/android/systemui/multistar/MultiStarManager;->MULTISTAR_VERSION_P:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->showSnapWindowGuideView(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
