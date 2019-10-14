.class public Lcom/android/systemui/servicebox/pages/music/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;,
        Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;,
        Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/servicebox/pages/music/MusicController;


# instance fields
.field private mAppLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDBSaveHandler:Landroid/os/Handler;

.field private mIsListeningStarted:Z

.field private mIsMusicClosedText:Z

.field private mIsOOBETextNeed:Z

.field private mIsSessionEnabled:Z

.field private mLastDBSavedTime:J

.field private mLastMediaMetadata:Landroid/media/MediaMetadata;

.field private mLastMusicAppName:Ljava/lang/String;

.field private mLastMusicLyrics:Ljava/lang/String;

.field private mLastPackageName:Ljava/lang/String;

.field private mLastPlaybackState:Landroid/media/session/PlaybackState;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlaybackStateChangeListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

.field private mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSettingsValueCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/servicebox/pages/music/MusicController;->sInstance:Lcom/android/systemui/servicebox/pages/music/MusicController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mSettingsValueCacheMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsMusicClosedText:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastDBSavedTime:J

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/MusicController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController$1;-><init>(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController$2;-><init>(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController$3;-><init>(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {v0, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->loadLastInformation()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/servicebox/pages/music/MusicController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastDBSavedTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/servicebox/pages/music/MusicController;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->loadLastInformation()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->resetDataAndClear()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->saveCurrentDataToDB()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method private clearData()V
    .locals 2

    const-string v0, "MusicController_LOCK"

    const-string v1, "clearData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "servicebox_music_last_title"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "servicebox_music_last_artist"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "servicebox_music_last_pkg"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;
    .locals 2

    sget-object v0, Lcom/android/systemui/servicebox/pages/music/MusicController;->sInstance:Lcom/android/systemui/servicebox/pages/music/MusicController;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/systemui/servicebox/pages/music/MusicController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/servicebox/pages/music/MusicController;->sInstance:Lcom/android/systemui/servicebox/pages/music/MusicController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/servicebox/pages/music/MusicController;->sInstance:Lcom/android/systemui/servicebox/pages/music/MusicController;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/servicebox/pages/music/MusicController;->sInstance:Lcom/android/systemui/servicebox/pages/music/MusicController;

    return-object v0
.end method

.method private getMusicActivityLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "MusicController_LOCK"

    const-string v2, "launch session intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "MusicController_LOCK"

    const-string v3, "launch package intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    :cond_2
    const-string v3, "MusicController_LOCK"

    const-string/jumbo v4, "there is no launch intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :goto_0
    return-object v2
.end method

.method private loadLastInformation()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "servicebox_music_last_pkg"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "servicebox_show_music_oobe_text"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLastInformation() oobe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "servicebox_music_last_title"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "servicebox_music_last_artist"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    const-string v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadLastInformation() ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MusicController_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMusicAppLabel() packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method private resetDataAndClear()V
    .locals 2

    const-string v0, "MusicController_LOCK"

    const-string/jumbo v1, "resetDataAndClear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string/jumbo v0, "servicebox_music_last_title"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "servicebox_music_last_artist"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "servicebox_music_last_pkg"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->loadLastInformation()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

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
    return-void
.end method

.method private saveCurrentDataToDB()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "MusicController_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCurrentDataToDB() mbr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/16 v4, 0xc8

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_2

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_3

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastDBSavedTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xbb8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    const-string v1, "MusicController_LOCK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveCurrentDataToDB() instantly, pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", title = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", artist = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "servicebox_music_last_title"

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "servicebox_music_last_artist"

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "servicebox_music_last_pkg"

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v6}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastDBSavedTime:J

    goto :goto_2

    :cond_5
    const-string v6, "MusicController_LOCK"

    const-string/jumbo v7, "saveCurrentDataToDB() pending"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-static {v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;

    invoke-direct {v6}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;-><init>()V

    iput-object v2, v6, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->title:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->artist:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicInfo;->pkgName:Ljava/lang/String;

    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    goto :goto_3

    :cond_6
    const-string v2, "MusicController_LOCK"

    const-string/jumbo v3, "saveCurrentDataToDB() set Last music package as null as Media button receiver is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    const-string/jumbo v1, "servicebox_music_last_title"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "servicebox_music_last_artist"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "servicebox_music_last_pkg"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private setSettingsStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mSettingsValueCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mSettingsValueCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mSettingsValueCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private startMusicStateListening()V
    .locals 3

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMusicStateListening() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopMusicStateListening()V
    .locals 3

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMusicStateListening() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->removeOnPlaybackStateChangedListener()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 3

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-ne v1, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->startMusicStateListening()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clearListeners()V
    .locals 2

    const-string v0, "MusicController_LOCK"

    const-string v1, "clearListeners()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mDBSaveHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lastPlaybackState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lastMediaMetaData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lastMusicApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    lastMusicLyrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isSessionEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isMusicClosedText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsMusicClosedText:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getLastSavedSessionPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isMusicClosedTextNeed()Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->isUnsupportedApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    const-string v5, "MusicController_LOCK"

    const-string v6, "isMusicClosedTextNeed returns %s / %s %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    aput-object v3, v7, v1

    invoke-static {v5, v6, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsMusicClosedText:Z

    if-eq v1, v4, :cond_3

    iput-boolean v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsMusicClosedText:Z

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsMusicClosedText:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->clearData()V

    :cond_3
    return v4
.end method

.method public isMusicPlaying()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isOOBETextNeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return v0
.end method

.method launchMusicApp(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)Z
    .locals 3

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchMusicApp() pk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getMusicActivityLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->startActivity(Landroid/app/PendingIntent;)V

    return v1

    :cond_0
    return v2

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getMusicActivityLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/app/PendingIntent;)V

    return v1

    :cond_2
    return v2

    :cond_3
    return v2
.end method

.method public pushMediaKeyEvent(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->sendKeyToPlayer(I)V

    return-void
.end method

.method public removeAllCacheData()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 3

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallback() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->stopMusicStateListening()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->removeAllCacheData()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestCacheData(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 3

    const-string v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCacheData() callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isOOBETextNeed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicClosedTextNeed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {p1, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setAppName(Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getNotificationManager()Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->updateServiceBoxMusicNotificationPkg(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setSessionEnabled(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public requestLyrics()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->requestLyrics(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public sendKeyToPlayer(I)V
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iget-object v13, v0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x101

    move-object v1, v12

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-wide/from16 v19, v14

    move-object v14, v13

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v18

    invoke-virtual {v14, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    iget-object v14, v0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-object v1, v15

    move-wide/from16 v2, v19

    move-wide/from16 v4, v19

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v14, v15}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public updateSessions()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateSessions()V

    :cond_0
    return-void
.end method
