.class Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioFocusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoisyIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$300(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/AudioAttributesCompat;->getUsage()I

    move-result v2

    move v1, v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/16 v0, 0xe

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->getPlayer()Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/media/BaseMediaPlayer;->getPlayerVolume()F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/support/v4/media/BaseMediaPlayer;->setPlayerVolume(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$NoisyIntentReceiver;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->pause()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_4
    :goto_0
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
