.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "SoundModeTileVolumeMixer.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;
    }
.end annotation


# static fields
.field private static final BIXBY_AUTHORITY:Ljava/lang/String; = "com.samsung.android.bixby.agent.settings"

.field private static final BIXBY_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field private static final BIXBY_VOICE_ENABLE_PATH:Ljava/lang/String; = "bixby_voice_isenable"

.field private static final BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = true

.field private static final STREAMS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_BIXBY_VOICE:I

.field public static final STREAM_MULTI_SOUND:I = 0xc

.field private static final STREAM_REMOTE_CONTROL:I = 0x64

.field public static final STREAM_SMART_VIEW:I = 0xb

.field private static final TAG:Ljava/lang/String; = "SoundModeTileVolumeMixer"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mMaxSmartViewVol:I

.field private mMinSmartViewVol:I

.field private mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSemDisplayVolumeMixerListener:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

.field private mSmartViewisMute:Z

.field private mVoiceCapable:Z

.field private final mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

.field private mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    sput v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f120ca1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f120cc9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f120cc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f120cc6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f120c90

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v4, 0x7f120cc7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f120bf4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f120bef

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f120bf5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f120bec

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120bf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    sget v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120cc5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mRows:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSemDisplayVolumeMixerListener:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMinSmartViewVol:I

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMaxSmartViewVol:I

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSmartViewisMute:Z

    new-instance v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVoiceCapable:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isVoiceCallingState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mCurrentUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMinSmartViewVol:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMinSmartViewVol:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMaxSmartViewVol:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMaxSmartViewVol:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSmartViewisMute:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSmartViewisMute:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mMixerHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->findRow(I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    move-result-object v0

    return-object v0
.end method

.method private addVolumeBar(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d018c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    new-instance v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-direct {v2, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;)V

    move-object v1, v2

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->initRow(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->getChildCount()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerBarCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setVolumeBarCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;)V

    return-void
.end method

.method private findRow(I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentUserContext()Landroid/content/Context;
    .locals 6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method private initRow(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-static {p1, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$902(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;I)I

    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$702(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    move-result-object v0

    const v1, 0x7f0a0569

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1002(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    move-result-object v0

    const v1, 0x7f0a0568

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1102(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$XBK_HOtaAoFnMJ7c1NXZHxWTmTY;

    invoke-direct {v4, p1}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$XBK_HOtaAoFnMJ7c1NXZHxWTmTY;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$22IPEse1Ly8f8qj7yHsN7BDaIWw;->INSTANCE:Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileVolumeMixer$22IPEse1Ly8f8qj7yHsN7BDaIWw;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->semSetMode(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;->isSettingAllSoundMute()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isSmartViewEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v6, "mivo"

    invoke-virtual {v4, v6}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v0, 0x0

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v4

    const/16 v6, 0xc

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v4

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :cond_6
    :goto_3
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v4

    const/4 v6, 0x6

    if-ne v4, v6, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    nop

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v5

    goto :goto_5

    :cond_9
    mul-int/lit8 v3, v0, 0x64

    :goto_5
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setMax(I)V

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto :goto_8

    :cond_a
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)I

    move-result v5

    if-ne v5, v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->isSmartViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v5, "mavo"

    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    const/4 v1, 0x0

    :goto_6
    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    move v4, v1

    :cond_c
    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_d
    :goto_8
    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setStream(I)V

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v5, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAMS:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_e
    return-void
.end method

.method private isBixbyVoiceEnable()Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "SoundModeTileVolumeMixer"

    const-string v2, "isBixbyVoiceEnable() Check Knox com mode. return FALSE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->BIXBY_VOICE_ENABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "bixby_voice_isenable"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v4, "SoundModeTileVolumeMixer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBixbyVoiceEnable() Check Settings value - columnIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",  value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move v1, v4

    nop

    :cond_2
    return v1

    :cond_3
    const-string v2, "SoundModeTileVolumeMixer"

    const-string v3, "isBixbyVoiceEnable() FALSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isSmartViewEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isVoiceCallingState()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v3

    :goto_3
    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    goto :goto_5

    :cond_5
    :goto_4
    move v2, v3

    :goto_5
    return v2
.end method

.method static synthetic lambda$initRow$0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->clearFocus()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v0
.end method

.method static synthetic lambda$initRow$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isSoundModeTileBlocked()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSemDisplayVolumeMixerListener:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVoiceCapable:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mCurrentUserContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVoiceCapable:Z

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->addVolumeBar(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mZenMode:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->updateQSColoringResources(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mSemDisplayVolumeMixerListener:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semUnregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mAudioManager:Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mNotificationManager:Landroid/app/NotificationManager;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SoundModeTileVolumeMixer"

    const-string v2, "mVolumeMixerReceiver() is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setVolumeMixerTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->mVolumeMixerTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 2

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    const v1, 0x7f0a056b

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
