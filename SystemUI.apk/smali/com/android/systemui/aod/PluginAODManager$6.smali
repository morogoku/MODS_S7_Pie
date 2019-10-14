.class Lcom/android/systemui/aod/PluginAODManager$6;
.super Landroid/content/BroadcastReceiver;
.source "PluginAODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/aod/PluginAODManager;->registerBroadcast()V
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

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager$6;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/aod/PluginAODManager$6;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/aod/PluginAODManager;->access$100(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/systemui/splugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    :cond_0
    return-void
.end method
