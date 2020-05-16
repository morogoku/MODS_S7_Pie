.class Lcom/android/systemui/aod/PluginAODManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PluginAODManager.java"


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

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager$2;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$2;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$100(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager$2;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/aod/PluginAODManager;->access$100(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$2;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$2;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager$2;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/aod/PluginAODManager;->access$100(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->onSystemUIConfigurationChanged(Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;)V

    :cond_0
    return-void
.end method
