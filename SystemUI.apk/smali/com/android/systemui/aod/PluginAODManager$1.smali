.class Lcom/android/systemui/aod/PluginAODManager$1;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODServiceBoxManager$Callback;


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

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager$1;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestShowServiceBox(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$1;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$1;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$000(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/doze/DozeHost;->requestShowServiceBox(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
