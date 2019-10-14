.class Lcom/android/systemui/aod/PluginAODManager$4;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;


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

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$700(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$800(Lcom/android/systemui/aod/PluginAODManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$700(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    new-instance v1, Lcom/android/systemui/aod/PluginAODManager$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/aod/PluginAODManager$4$1;-><init>(Lcom/android/systemui/aod/PluginAODManager$4;)V

    invoke-static {v0, v1}, Lcom/android/systemui/aod/PluginAODManager;->access$702(Lcom/android/systemui/aod/PluginAODManager;Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$800(Lcom/android/systemui/aod/PluginAODManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$700(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->addCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$800(Lcom/android/systemui/aod/PluginAODManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$700(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    return-void
.end method

.method public requestLastMusicContent()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$700(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$800(Lcom/android/systemui/aod/PluginAODManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/aod/PluginAODManager;->access$700(Lcom/android/systemui/aod/PluginAODManager;)Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    :cond_0
    return-void
.end method

.method public sendKeyCode(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$800(Lcom/android/systemui/aod/PluginAODManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->sendKeyToPlayer(I)V

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$900(Lcom/android/systemui/aod/PluginAODManager;)V

    return-void
.end method
