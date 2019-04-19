.class Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;
.super Ljava/lang/Object;
.source "NavBarInteractorManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;->onPluginConnected(Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;Landroid/content/Context;)V
    .locals 2

    const-string v0, "NavBarInteractorManager"

    const-string v1, "Plugin connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->connect(Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;->onPluginDisconnected(Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;)V
    .locals 2

    const-string v0, "NavBarInteractorManager"

    const-string v1, "Plugin disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->disconnect()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;->this$0:Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    return-void
.end method
