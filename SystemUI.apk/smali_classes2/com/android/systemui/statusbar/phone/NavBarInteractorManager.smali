.class public Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;
.super Ljava/lang/Object;
.source "NavBarInteractorManager.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mListener:Lcom/samsung/systemui/splugins/SPluginListener;

.field mNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;

.field mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;-><init>(Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->start()V

    return-void
.end method

.method private start()V
    .locals 4

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    const-class v2, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 2

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    return-void
.end method
