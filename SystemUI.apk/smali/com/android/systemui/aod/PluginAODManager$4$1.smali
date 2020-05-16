.class Lcom/android/systemui/aod/PluginAODManager$4$1;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/aod/PluginAODManager$4;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/aod/PluginAODManager$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/aod/PluginAODManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->clear()V

    goto :goto_0

    :cond_1
    const-string v0, "PluginAODManager"

    const-string v1, "clear() but no plugin instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isMusicControllerDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->isMusicControllerDisabled()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->isMusicControllerDisabled()Z

    goto :goto_0

    :cond_1
    const-string v0, "PluginAODManager"

    const-string v1, "isMusicControllerDisabled() but no plugin instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setAppName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "setAppName() but no plugin instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "setLyrics() but no plugin instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    :cond_1
    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "setMetadata() but no plugin instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    :cond_1
    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "setPlaybackState() but no plugin instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSessionEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$200(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/aod/PluginAOD;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/aod/PluginAOD;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setSessionEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/aod/PluginAODManager$4$1;->this$1:Lcom/android/systemui/aod/PluginAODManager$4;

    iget-object v0, v0, Lcom/android/systemui/aod/PluginAODManager$4;->this$0:Lcom/android/systemui/aod/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/aod/PluginAODManager;->access$500(Lcom/android/systemui/aod/PluginAODManager;)Lcom/samsung/systemui/splugins/cover/PluginViewCover;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/cover/PluginViewCover;->getMusicContentManager()Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;->setSessionEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "setSessionEnabled() but no plugin instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
