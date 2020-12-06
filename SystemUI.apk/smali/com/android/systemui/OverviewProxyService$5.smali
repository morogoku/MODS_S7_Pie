.class Lcom/android/systemui/OverviewProxyService$5;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/OverviewProxyService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/recents/PluginExRecents;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService$5;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/OverviewProxyService$5;->onPluginConnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;Landroid/content/Context;)V
    .locals 3

    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginConnected : plugin.version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/recents/PluginExRecents;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/OverviewProxyService$5$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/OverviewProxyService$5$1;-><init>(Lcom/android/systemui/OverviewProxyService$5;Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V

    invoke-interface {p1, v0}, Lcom/samsung/systemui/splugins/recents/PluginExRecents;->onStart(Lcom/samsung/systemui/splugins/recents/PluginRecents;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-virtual {p0, p1}, Lcom/android/systemui/OverviewProxyService$5;->onPluginDisconnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V
    .locals 3

    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPluginDisconnected : plugin.version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/recents/PluginExRecents;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$5;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1700(Lcom/android/systemui/OverviewProxyService;)V

    return-void
.end method
