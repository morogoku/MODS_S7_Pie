.class Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;
.super Landroid/media/session/MediaController$Callback;
.source "PlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    const-string v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMetadataChanged() metadata = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    :cond_1
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    const-string v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaybackStateChanged() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    const-string v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "onSessionDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getCurrentSessionPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "com.samsung.android.servicebox.mediasession.action.RESULT_LYRIC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.servicebox.mediasession.extra.LYRIC"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "PlaybackStateMonitor_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionEvent() ACTION_RESULT_LYRIC mediaId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEmptyLyric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
