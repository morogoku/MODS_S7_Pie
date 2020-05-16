.class Landroid/support/v4/media/MediaController2ImplBase;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaController2$SupportLibraryImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAllowedCommands:Landroid/support/v4/media/SessionCommandGroup2;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mBufferedPositionMs:J
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mBufferingState:I
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private final mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field final mControllerStub:Landroid/support/v4/media/MediaController2Stub;

.field private mCurrentMediaItem:Landroid/support/v4/media/MediaItem2;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private volatile mISession2:Landroid/support/v4/media/IMediaSession2;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private final mInstance:Landroid/support/v4/media/MediaController2;

.field private mIsReleased:Z
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mPlaybackSpeed:F
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mPlayerState:I
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mPlaylist:Ljava/util/List;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaItem2;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistMetadata:Landroid/support/v4/media/MediaMetadata2;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mPositionEventTimeMs:J
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mPositionMs:J
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mRepeatMode:I
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mServiceConnection:Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mSessionActivity:Landroid/app/PendingIntent;
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private mShuffleMode:I
    .annotation build Landroid/support/annotation/GuardedBy;
    .end annotation
.end field

.field private final mToken:Landroid/support/v4/media/SessionToken2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MC2ImplBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaController2ImplBase;->DEBUG:Z

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mInstance:Landroid/support/v4/media/MediaController2;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/SessionToken2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mToken:Landroid/support/v4/media/SessionToken2;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/IMediaSession2;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->connectToSession(Landroid/support/v4/media/IMediaSession2;)V

    return-void
.end method

.method private connectToSession(Landroid/support/v4/media/IMediaSession2;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mControllerStub:Landroid/support/v4/media/MediaController2Stub;

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/support/v4/media/IMediaSession2;->connect(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MC2ImplBase"

    const-string v2, "Failed to call connection request. Framework will retry automatically"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    sget-boolean v0, Landroid/support/v4/media/MediaController2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MC2ImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplBase;->mToken:Landroid/support/v4/media/SessionToken2;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaController2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v3, p0, Landroid/support/v4/media/MediaController2ImplBase;->mIsReleased:Z

    if-eqz v3, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/media/MediaController2ImplBase;->mIsReleased:Z

    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplBase;->mServiceConnection:Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v4/media/MediaController2ImplBase;->mServiceConnection:Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mServiceConnection:Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;

    :cond_2
    iput-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mControllerStub:Landroid/support/v4/media/MediaController2Stub;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaController2Stub;->destroy()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/support/v4/media/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mControllerStub:Landroid/support/v4/media/MediaController2Stub;

    invoke-interface {v2, v0}, Landroid/support/v4/media/IMediaSession2;->release(Landroid/support/v4/media/IMediaController2;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$2;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaController2ImplBase$2;-><init>(Landroid/support/v4/media/MediaController2ImplBase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getCallback()Landroid/support/v4/media/MediaController2$ControllerCallback;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallback:Landroid/support/v4/media/MediaController2$ControllerCallback;

    return-object v0
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getInstance()Landroid/support/v4/media/MediaController2;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mInstance:Landroid/support/v4/media/MediaController2;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyBufferingStateChanged(Landroid/support/v4/media/MediaItem2;IJ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p2, p0, Landroid/support/v4/media/MediaController2ImplBase;->mBufferingState:I

    iput-wide p3, p0, Landroid/support/v4/media/MediaController2ImplBase;->mBufferedPositionMs:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaController2ImplBase$6;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/MediaItem2;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyCurrentMediaItemChanged(Landroid/support/v4/media/MediaItem2;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCurrentMediaItem:Landroid/support/v4/media/MediaItem2;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$3;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/MediaItem2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyError(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$13;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaController2ImplBase$13;-><init>(Landroid/support/v4/media/MediaController2ImplBase;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyPlaybackInfoChanges(Landroid/support/v4/media/MediaController2$PlaybackInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$9;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$9;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/MediaController2$PlaybackInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlaybackSpeedChanges(JJF)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPositionEventTimeMs:J

    iput-wide p3, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPositionMs:J

    iput p5, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPlaybackSpeed:F

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$5;

    invoke-direct {v1, p0, p5}, Landroid/support/v4/media/MediaController2ImplBase$5;-><init>(Landroid/support/v4/media/MediaController2ImplBase;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlayerStateChanges(JJI)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPositionEventTimeMs:J

    iput-wide p3, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPositionMs:J

    iput p5, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPlayerState:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$4;

    invoke-direct {v1, p0, p5}, Landroid/support/v4/media/MediaController2ImplBase$4;-><init>(Landroid/support/v4/media/MediaController2ImplBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlaylistChanges(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaItem2;",
            ">;",
            "Landroid/support/v4/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPlaylist:Ljava/util/List;

    iput-object p2, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPlaylistMetadata:Landroid/support/v4/media/MediaMetadata2;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaController2ImplBase$7;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyPlaylistMetadataChanges(Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPlaylistMetadata:Landroid/support/v4/media/MediaMetadata2;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$8;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$8;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyRepeatModeChanges(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mRepeatMode:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$10;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$10;-><init>(Landroid/support/v4/media/MediaController2ImplBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyRoutesInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$14;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$14;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifySeekCompleted(JJJ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPositionEventTimeMs:J

    iput-wide p3, p0, Landroid/support/v4/media/MediaController2ImplBase;->mPositionMs:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$12;

    invoke-direct {v1, p0, p5, p6}, Landroid/support/v4/media/MediaController2ImplBase$12;-><init>(Landroid/support/v4/media/MediaController2ImplBase;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method notifyShuffleModeChanges(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/support/v4/media/MediaController2ImplBase;->mShuffleMode:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$11;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$11;-><init>(Landroid/support/v4/media/MediaController2ImplBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onAllowedCommandsChanged(Landroid/support/v4/media/SessionCommandGroup2;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$17;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$17;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/SessionCommandGroup2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onConnectedNotLocked(Landroid/support/v4/media/IMediaSession2;Landroid/support/v4/media/SessionCommandGroup2;ILandroid/support/v4/media/MediaItem2;JJFJLandroid/support/v4/media/MediaController2$PlaybackInfo;IILjava/util/List;Landroid/app/PendingIntent;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/IMediaSession2;",
            "Landroid/support/v4/media/SessionCommandGroup2;",
            "I",
            "Landroid/support/v4/media/MediaItem2;",
            "JJFJ",
            "Landroid/support/v4/media/MediaController2$PlaybackInfo;",
            "II",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaItem2;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Landroid/support/v4/media/MediaController2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MC2ImplBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConnectedNotLocked sessionBinder="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", allowedCommands="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_a

    if-nez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    :try_start_0
    iget-object v5, v1, Landroid/support/v4/media/MediaController2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    iget-boolean v0, v1, Landroid/support/v4/media/MediaController2ImplBase;->mIsReleased:Z

    if-eqz v0, :cond_3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v4, :cond_2

    iget-object v0, v1, Landroid/support/v4/media/MediaController2ImplBase;->mInstance:Landroid/support/v4/media/MediaController2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    iget-object v0, v1, Landroid/support/v4/media/MediaController2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    if-eqz v0, :cond_5

    const-string v0, "MC2ImplBase"

    const-string v6, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v4, :cond_4

    iget-object v0, v1, Landroid/support/v4/media/MediaController2ImplBase;->mInstance:Landroid/support/v4/media/MediaController2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    iput-object v3, v1, Landroid/support/v4/media/MediaController2ImplBase;->mAllowedCommands:Landroid/support/v4/media/SessionCommandGroup2;

    move/from16 v6, p3

    iput v6, v1, Landroid/support/v4/media/MediaController2ImplBase;->mPlayerState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object/from16 v7, p4

    :try_start_4
    iput-object v7, v1, Landroid/support/v4/media/MediaController2ImplBase;->mCurrentMediaItem:Landroid/support/v4/media/MediaItem2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-wide/from16 v8, p5

    :try_start_5
    iput-wide v8, v1, Landroid/support/v4/media/MediaController2ImplBase;->mPositionEventTimeMs:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide/from16 v10, p7

    :try_start_6
    iput-wide v10, v1, Landroid/support/v4/media/MediaController2ImplBase;->mPositionMs:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v12, p9

    :try_start_7
    iput v12, v1, Landroid/support/v4/media/MediaController2ImplBase;->mPlaybackSpeed:F
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-wide/from16 v13, p10

    :try_start_8
    iput-wide v13, v1, Landroid/support/v4/media/MediaController2ImplBase;->mBufferedPositionMs:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v15, p12

    :try_start_9
    iput-object v15, v1, Landroid/support/v4/media/MediaController2ImplBase;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move/from16 v6, p13

    iput v6, v1, Landroid/support/v4/media/MediaController2ImplBase;->mRepeatMode:I

    move/from16 v6, p14

    iput v6, v1, Landroid/support/v4/media/MediaController2ImplBase;->mShuffleMode:I

    move-object/from16 v6, p15

    iput-object v6, v1, Landroid/support/v4/media/MediaController2ImplBase;->mPlaylist:Ljava/util/List;

    move-object/from16 v6, p16

    iput-object v6, v1, Landroid/support/v4/media/MediaController2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    iput-object v2, v1, Landroid/support/v4/media/MediaController2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    iget-object v0, v1, Landroid/support/v4/media/MediaController2ImplBase;->mISession2:Landroid/support/v4/media/IMediaSession2;

    invoke-interface {v0}, Landroid/support/v4/media/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, v1, Landroid/support/v4/media/MediaController2ImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    nop

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    iget-object v0, v1, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/support/v4/media/MediaController2ImplBase$15;

    invoke-direct {v2, v1, v3}, Landroid/support/v4/media/MediaController2ImplBase$15;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/SessionCommandGroup2;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v4, :cond_6

    iget-object v0, v1, Landroid/support/v4/media/MediaController2ImplBase;->mInstance:Landroid/support/v4/media/MediaController2;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2;->close()V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    :try_start_d
    sget-boolean v2, Landroid/support/v4/media/MediaController2ImplBase;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "MC2ImplBase"

    const-string v6, "Session died too early."

    invoke-static {v2, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :cond_7
    const/4 v2, 0x1

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v2, :cond_8

    iget-object v4, v1, Landroid/support/v4/media/MediaController2ImplBase;->mInstance:Landroid/support/v4/media/MediaController2;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaController2;->close()V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    move v4, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    goto :goto_1

    :catchall_5
    move-exception v0

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object/from16 v7, p4

    :goto_0
    move-wide/from16 v8, p5

    :goto_1
    move-wide/from16 v10, p7

    :goto_2
    move/from16 v12, p9

    :goto_3
    move-wide/from16 v13, p10

    :goto_4
    move-object/from16 v15, p12

    :goto_5
    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_6

    :catchall_8
    move-exception v0

    goto :goto_5

    :catchall_9
    move-exception v0

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move-object/from16 v15, p12

    :goto_6
    if-eqz v4, :cond_9

    iget-object v2, v1, Landroid/support/v4/media/MediaController2ImplBase;->mInstance:Landroid/support/v4/media/MediaController2;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaController2;->close()V

    :cond_9
    throw v0

    :cond_a
    :goto_7
    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move-object/from16 v15, p12

    const/4 v0, 0x1

    if-eqz v0, :cond_b

    iget-object v2, v1, Landroid/support/v4/media/MediaController2ImplBase;->mInstance:Landroid/support/v4/media/MediaController2;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaController2;->close()V

    :cond_b
    return-void
.end method

.method onCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    sget-boolean v0, Landroid/support/v4/media/MediaController2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MC2ImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomCommand cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$16;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/support/v4/media/MediaController2ImplBase$16;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method onCustomLayoutChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/support/v4/media/MediaController2ImplBase$18;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$18;-><init>(Landroid/support/v4/media/MediaController2ImplBase;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
