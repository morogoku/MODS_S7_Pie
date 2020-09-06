.class public Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;
.super Ljava/lang/Object;
.source "PlaybackStateMonitor.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;,
        Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;,
        Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;
    }
.end annotation


# instance fields
.field private UNSUPPORTED_PKG_NAME_LIST:[Ljava/lang/String;

.field private mActiveSessionPkgName:Ljava/lang/String;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCastManager:Lcom/android/systemui/servicebox/pages/music/CastManager;

.field private mContext:Landroid/content/Context;

.field private mIsStarted:Z

.field private mIsUnsupportedAppTopController:Z

.field private mLastController:Landroid/media/session/MediaController;

.field private final mLock:Ljava/lang/Object;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mObserverCb:Landroid/media/session/MediaController$Callback;

.field private mObserverControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;-><init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    const-string v1, "com.samsung.android.app.soundpicker"

    const-string v2, "com.google.android.youtube"

    const-string v3, "com.google.android.videos"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->UNSUPPORTED_PKG_NAME_LIST:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;-><init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/CastManager;

    invoke-direct {v0, p1}, Lcom/android/systemui/servicebox/pages/music/CastManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCastManager:Lcom/android/systemui/servicebox/pages/music/CastManager;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->stop()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->start()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    return-object v0
.end method

.method private getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ButtonReceiver: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "null"

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private observeNonMetadataSessions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseAllObservers()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendCurrentState()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getCurrentSessionPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    const-string v2, "com.samsung.android.servicebox.mediasession.extra.LOCK_SCREEN_PENDING_INTENT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-interface {v1, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private sendMediaButtonEvent(Landroid/media/session/MediaController;Landroid/view/KeyEvent;)Z
    .locals 8

    const-string v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaButtonEvent controller - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "send receiver using pending intent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PlaybackStateMonitor_LOCK"

    const-string v4, "controller\'s pending intent canceled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v1, "PlaybackStateMonitor_LOCK"

    const-string v2, "3rd media app is not registered. receiver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private start()V
    .locals 4

    const-string v0, "PlaybackStateMonitor_LOCK"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "PlaybackStateMonitor_LOCK"

    const-string v1, "Start -- return : already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCastManager:Lcom/android/systemui/servicebox/pages/music/CastManager;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/music/CastManager;->register()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateSessions()V

    return-void
.end method

.method private stop()V
    .locals 2

    const-string v0, "PlaybackStateMonitor_LOCK"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCastManager:Lcom/android/systemui/servicebox/pages/music/CastManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/CastManager;->unregister()V

    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 6

    const-string v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v3, v4}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    :cond_0
    const-string v3, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v4, "updateController: no media controller"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v2, v3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    invoke-interface {v2, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionEnabled(Z)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    goto :goto_0

    :cond_5
    const-string v3, "PlaybackStateMonitor_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is supported in FaceWidgets"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    :cond_6
    :goto_0
    new-instance v1, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLastController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->sendCurrentState()V

    :cond_7
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "  PlaybackStateMonitor_LOCK"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLastController : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLastController:Landroid/media/session/MediaController;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMediaController : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsUnsupportedAppTopController : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    is Start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCastManager:Lcom/android/systemui/servicebox/pages/music/CastManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCastManager:Lcom/android/systemui/servicebox/pages/music/CastManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/music/CastManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActiveSessionPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSessionPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method isUnsupportedApp(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->UNSUPPORTED_PKG_NAME_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_0

    const-string v3, "Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    invoke-direct {v0, v4}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->releaseAllObservers()V

    const-string v3, "PlaybackStateMonitor_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActiveSessionsChanged() controllers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getLastSavedSessionPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/session/MediaController;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->isUnsupportedApp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "PlaybackStateMonitor_LOCK"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is not supported in FaceWidgets"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v7, v9

    :cond_3
    if-nez v5, :cond_4

    iget-object v11, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v12}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {v9}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v11

    invoke-virtual {v9}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v12

    if-eqz v11, :cond_a

    if-nez v12, :cond_5

    nop

    :goto_2
    move-object/from16 v19, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v13

    const-wide/16 v15, 0x2

    and-long/2addr v15, v13

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v11}, Landroid/media/session/PlaybackState;->getState()I

    move-result v15

    const/4 v3, 0x6

    if-eq v15, v3, :cond_9

    const/4 v3, 0x3

    if-ne v15, v3, :cond_7

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    move-object v3, v9

    move-object v6, v3

    :cond_8
    goto/16 :goto_1

    :cond_9
    :goto_3
    const-string v3, "PlaybackStateMonitor_LOCK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    const-string v2, "onActiveSessionsChanged() catch playing session "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_a
    move-object/from16 v19, v2

    :goto_4
    move-object/from16 v2, v19

    goto/16 :goto_1

    :cond_b
    move-object/from16 v19, v2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->observeNonMetadataSessions(Ljava/util/List;)V

    if-eqz v5, :cond_c

    const-string v2, "PlaybackStateMonitor_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActiveSessionsChanged() current session is alive "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {v0, v8}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    return-void

    :cond_c
    if-eqz v6, :cond_d

    const-string v2, "PlaybackStateMonitor_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActiveSessionsChanged() catch top session "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_d
    if-eqz v7, :cond_e

    const-string v2, "PlaybackStateMonitor_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActiveSessionsChanged() catch latest session "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_e
    nop

    const/4 v2, 0x0

    goto :goto_5

    :cond_f
    move-object/from16 v19, v2

    const-string v2, "PlaybackStateMonitor_LOCK"

    const-string v3, "onActiveSessionsChanged() no active session pkg"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    :goto_5
    invoke-direct {v0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public removeOnPlaybackStateChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->stop()V

    return-void
.end method

.method public requestLyrics(Landroid/media/MediaMetadata;)V
    .locals 4

    const-string v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLyrics() metadata = "

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

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    const-string v3, "com.samsung.android.servicebox.mediasession.action.REQUEST_LYRIC"

    invoke-virtual {v2, v3, v1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const-string v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaButtonEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v3, "sendMediaButtonEvent: KeyEvent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsUnsupportedAppTopController:Z

    if-nez v2, :cond_1

    const-string v2, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v4, "send to SessionManager"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    monitor-exit v0

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLastController:Landroid/media/session/MediaController;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/media/session/MediaController;Landroid/view/KeyEvent;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCastManager:Lcom/android/systemui/servicebox/pages/music/CastManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCastManager:Lcom/android/systemui/servicebox/pages/music/CastManager;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/music/CastManager;->getCasting()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/media/session/MediaController;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PlaybackStateMonitor_LOCK"

    const-string v2, "When casting, key event is sent by using MBR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setOnPlaybackStateChangedListener(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    .locals 2

    const-string v0, "PlaybackStateMonitor_LOCK"

    const-string v1, "addOnPlaybackStateChangedListener() : onPlaybackStateChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->start()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->sendCurrentState()V

    :cond_0
    return-void
.end method

.method public updateSessions()V
    .locals 3

    const-string v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "updateSessions()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    return-void
.end method
