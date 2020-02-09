.class Lcom/android/systemui/aod/PluginAODManager$5;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODRemoteViewsManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/aod/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/aod/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/aod/PluginAODManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager$5;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$5;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$1000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$5;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    const-class v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->access$1002(Lcom/android/systemui/aod/PluginAODManager;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$5;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$1000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "PluginAODManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAODRemoteViews() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$5;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$1000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getAODRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "PluginAODManager"

    const-string v1, "getAODRemoteViews() no controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
