.class Lcom/android/systemui/servicebox/pages/music/MusicController$3;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/music/MusicController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$900(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$900(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0, p2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1002(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$500(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1000(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 4

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMetadataChanged() metadata = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$902(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1002(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$600(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "servicebox_music_last_pkg"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1100(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$800(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$500(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1000(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPendingIntentChanged(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1502(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$302(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_2

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaybackStateChanged() / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$800(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$500(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_1
    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSessionChanged(Ljava/lang/String;)V
    .locals 5

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionChanged() session is changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$500(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-interface {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->isMusicControllerDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1100(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1200(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$600(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "servicebox_show_music_oobe_text"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1202(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1102(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1100(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1400(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1302(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$400(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$400(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$500(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    :cond_5
    goto :goto_1

    :cond_6
    return-void
.end method

.method public declared-synchronized onSessionDestroyed(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionDestroyed() sessionPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLastPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1100(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$200(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$302(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$400(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$400(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$500(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSessionEnabled(Z)V
    .locals 3

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionEnabled() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1600(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lastSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1100(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", activeSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1700(Lcom/android/systemui/servicebox/pages/music/MusicController;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1100(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1100(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1700(Lcom/android/systemui/servicebox/pages/music/MusicController;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MusicController_LOCK"

    const-string/jumbo v1, "onSessionEnabled() Set enabled to true because LastSession and TopSession are same"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1600(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$1602(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$500(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setSessionEnabled(Z)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method
