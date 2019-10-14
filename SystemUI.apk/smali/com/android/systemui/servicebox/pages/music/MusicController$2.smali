.class Lcom/android/systemui/servicebox/pages/music/MusicController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MusicController.java"


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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->updateSessions()V

    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageRemoved() pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$600(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "servicebox_music_last_pkg"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$700(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->updateSessions()V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$200(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$302(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$400(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->access$400(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

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

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
