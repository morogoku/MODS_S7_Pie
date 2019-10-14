.class public Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/noticenter/NotiCenterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotiCenterPluginListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;",
        ">;"
    }
.end annotation


# instance fields
.field mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

.field mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;Lcom/android/systemui/noticenter/NotiCenterPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->onPluginConnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;Landroid/content/Context;)V
    .locals 3

    const-string v0, "hyobomi100"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v0, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$302(Lcom/android/systemui/noticenter/NotiCenterPlugin;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v0, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setIsNotiCenterConnected(Z)V

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$400(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->setCallback(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotilusSettings()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    iget-object v1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$300(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$502(Lcom/android/systemui/noticenter/NotiCenterPlugin;F)F

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V
    .locals 3

    const-string v0, "hyobomi100"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginDisconnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mNotiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setIsNotiCenterConnected(Z)V

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$400(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;->onChangedVisibilityOnKeyguard(Z)V

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->this$0:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->access$400(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;->onNotiStarPanelShowOnKeyguard(Z)V

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
