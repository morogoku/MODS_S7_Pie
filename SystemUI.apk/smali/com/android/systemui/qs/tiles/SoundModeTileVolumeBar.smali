.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.super Landroid/widget/RelativeLayout;
.source "SoundModeTileVolumeBar.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;,
        Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;
    }
.end annotation


# static fields
.field private static final ALPHA_DISABLE:I = 0x66

.field private static final ALPHA_ENABLE:I = 0xff

.field private static final DEBUG:Z = true

.field private static final DEFAULT_VOLUME_URI_BIXBY:Ljava/lang/String; = "file:///system/media/audio/ui/Bixby_BOS.ogg"

.field private static final DEFAULT_VOLUME_URI_MUSIC:Ljava/lang/String; = "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

.field private static final ICONS_COLOR_EARSHORK:I = 0x2

.field private static final ICONS_COLOR_MUTE:I = 0x1

.field private static final ICONS_COLOR_NORMAL:I = 0x0

.field private static final ICONS_RES_TYPE_BLUETOOTH:I = 0x3

.field private static final ICONS_RES_TYPE_CALL:I = 0x4

.field private static final ICONS_RES_TYPE_MUTE:I = 0x2

.field private static final ICONS_RES_TYPE_SOUND:I = 0x0

.field private static final ICONS_RES_TYPE_VIBRATE:I = 0x1

.field private static final STREAM_ICONS_COLOR:[I

.field private static final STREAM_ICONS_RES:[I

.field private static final TAG:Ljava/lang/String; = "SoundModeTileVolumeBar"


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

.field private mContext:Landroid/content/Context;

.field private mEarProtectLevel:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuted:Z

.field private mRingerMode:I

.field public mSeekBar:Landroid/widget/SeekBar;

.field private final mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private mStream:I

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mThumbEnabledColor:Landroid/content/res/ColorStateList;

.field public mTitleView:Landroid/widget/TextView;

.field private mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_RES:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0807bb
        0x7f0807bf
        0x7f0807b7
        0x7f0807ad
        0x7f0807af
    .end array-data

    :array_1
    .array-data 4
        0x1060267
        0x1060269
        0x1060268
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mRingerMode:I

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$3;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$4;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->handleUpdateDualColorSeekbar()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isRingtoneStream()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->requestAudioFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mMuted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mMuted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mZenMuted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mZenMuted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->handleUpdateBarViews()V

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getDefaultVolumeUri()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    sget v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    if-ne v1, v2, :cond_1

    const-string v1, "file:///system/media/audio/ui/Bixby_BOS.ogg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getIconType(II)I
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isRingtoneStream()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_1
    if-ne p2, v3, :cond_e

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isEnableZenMode()Z

    move-result v1

    if-eqz v1, :cond_3

    move v3, v4

    nop

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_8

    if-ne p2, v3, :cond_6

    if-lez p1, :cond_5

    move v3, v4

    nop

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    if-ne p2, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    if-nez p2, :cond_e

    const/4 v0, 0x2

    goto :goto_0

    :cond_8
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    if-ne v1, v2, :cond_b

    if-ne p2, v3, :cond_a

    if-lez p1, :cond_9

    move v3, v4

    nop

    :cond_9
    move v0, v3

    goto :goto_0

    :cond_a
    const/4 v0, 0x2

    goto :goto_0

    :cond_b
    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    sget v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->STREAM_BIXBY_VOICE:I

    if-ne v1, v2, :cond_d

    if-lez p1, :cond_c

    move v3, v4

    nop

    :cond_c
    move v0, v3

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_0
    return v0
.end method

.method private handleUpdateBarViews()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarAudioManagerHelper;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mRingerMode:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mRingerMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getIconType(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_RES:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isEnableZenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    const/16 v4, 0xff

    goto :goto_1

    :cond_3
    const/16 v4, 0x66

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->updateQSColoringResources(Landroid/view/View;)V

    return-void
.end method

.method private handleUpdateDualColorSeekbar()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SoundModeTileVolumeBar"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    goto :goto_1

    :cond_6
    const-string v2, "handleUpdateDualColorSeekbar set single"

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_2

    :cond_7
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateDualColorSeekbar set dual. EarProtectLimitIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mEarProtectLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->invalidate()V

    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method private init()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    if-nez v0, :cond_1

    const-string v0, "No stream found, or Voice calling...... not binding volumizer"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->getCurrentUserContextForSample()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getDefaultVolumeUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBarVolumizerCallback:Landroid/preference/SeekBarVolumizer$Callback;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->start()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.fm.player_lock.status.on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10602ed

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mThumbEnabledColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10602ee

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 v2, 0xd9c

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isRingtoneStream()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isSettingAllSoundMute()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->stop()V

    :cond_5
    return-void
.end method

.method private isMusicStream()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRingtoneStream()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SoundModeTileVolumeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestAudioFocus()Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;->isVoiceCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "isVoIP and isVoiceCall is true so can not request audioFocus"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    move v1, v4

    nop

    :cond_3
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->init()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumizer:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$QuickTileSeekBarVolumizer;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeChangeReceiver of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->printLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0569

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a0568

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a0567

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mTitleView:Landroid/widget/TextView;

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setStream(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mStream:I

    return-void
.end method

.method public setVolumeBarCallback(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mVolumeBarCallback:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;

    return-void
.end method

.method public updateBarViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mBarHandler:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;

    const/16 v1, 0xd9c

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$BarHandler;->sendNewMessage(I)V

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mRingerMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getIconType(II)I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->isMusicStream()Z

    move-result v1

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    if-lt v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    :goto_0
    goto :goto_1

    :cond_1
    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v2, v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x102000d

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x102000f

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/high16 v8, 0x1020000

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const-class v11, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v12, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v12, v11}, Landroid/widget/SeekBar;->setFluidColor(I)V

    const-class v12, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v3, v8, v9}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_4

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mEarProtectLevel:I

    if-lt v2, v6, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    goto :goto_2

    :cond_3
    if-ne v0, v5, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    aget v3, v5, v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    :goto_2
    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->STREAM_ICONS_COLOR:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->mIconView:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_4
    return-void
.end method
