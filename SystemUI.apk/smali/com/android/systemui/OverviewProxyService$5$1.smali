.class Lcom/android/systemui/OverviewProxyService$5$1;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/PluginRecents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/OverviewProxyService$5;->onPluginConnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/OverviewProxyService$5;

.field final synthetic val$plugin:Lcom/samsung/systemui/splugins/recents/PluginExRecents;


# direct methods
.method constructor <init>(Lcom/android/systemui/OverviewProxyService$5;Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService$5$1;->this$1:Lcom/android/systemui/OverviewProxyService$5;

    iput-object p2, p0, Lcom/android/systemui/OverviewProxyService$5$1;->val$plugin:Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 3

    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PluginRecents : setEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$5$1;->this$1:Lcom/android/systemui/OverviewProxyService$5;

    iget-object v0, v0, Lcom/android/systemui/OverviewProxyService$5;->this$0:Lcom/android/systemui/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService$5$1;->val$plugin:Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-static {v0, v1}, Lcom/android/systemui/OverviewProxyService;->access$1600(Lcom/android/systemui/OverviewProxyService;Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$5$1;->this$1:Lcom/android/systemui/OverviewProxyService$5;

    iget-object v0, v0, Lcom/android/systemui/OverviewProxyService$5;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$1700(Lcom/android/systemui/OverviewProxyService;)V

    :goto_0
    return-void
.end method
