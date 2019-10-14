.class public Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "SoundModeTileTemporaryMuteBoard.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SoundModeTileTemporaryMuteBoard"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

.field private mDivider:Landroid/view/View;

.field private mRemainingTime:Landroid/widget/TextView;

.field private mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsValueList:[Landroid/net/Uri;

.field private mSummaryText:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "mode_ringer_time_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "mode_ringer_time_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "mode_ringer_time_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/media/AudioManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getRemainTimeString()Ljava/lang/String;
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v1, "SoundModeTileTemporaryMuteBoard"

    const-string v2, "AudioManager.getRemainingMuteIntervalMs() is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const v1, 0x36ee80

    div-int v2, v0, v1

    const v3, 0xea60

    div-int v4, v0, v3

    rem-int/lit8 v4, v4, 0x3c

    mul-int/2addr v1, v2

    int-to-long v5, v1

    mul-int/2addr v3, v4

    int-to-long v7, v3

    const-string v1, "%s %s"

    const-string v3, "%s"

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v10

    const-string v11, "SoundModeTileTemporaryMuteBoard"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RemainTime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", refine(h/m)=("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "), str(h/m)=("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v2, :cond_1

    if-gtz v4, :cond_2

    :cond_1
    if-lez v2, :cond_4

    if-nez v4, :cond_4

    :cond_2
    if-nez v2, :cond_3

    const-string v14, "%s"

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v10, v15, v12

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_3
    if-nez v4, :cond_5

    const-string v14, "%s"

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v9, v15, v12

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    if-lez v4, :cond_5

    const-string v14, "%s %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v9, v15, v12

    aput-object v10, v15, v13

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f120a91

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v11, v13, v12

    invoke-virtual {v14, v15, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "SoundModeTileTemporaryMuteBoard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSwitch.setOnCheckedChangeListener() mSwitch.isChecked()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->updateModelValues(Z)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;Landroid/view/View;)V
    .locals 3

    const-string v0, "SoundModeTileTemporaryMuteBoard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this.setOnClickListener() mSwitch.isChecked()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateModelValues$2(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;->refreshParentDetailView()V

    return-void
.end method

.method private updateModelValues(Z)V
    .locals 4

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setTempMuteSettingValue(I)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v1

    const v2, 0xea60

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4108"

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$BFHxriMW1ze0AZ_1LM6QgzPH41U;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$BFHxriMW1ze0AZ_1LM6QgzPH41U;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private updateSummaryText()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getPrevRingerMode()I

    move-result v0

    :goto_0
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120a94

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120a93

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->refreshAllView(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0562

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0563

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mTitleText:Landroid/widget/TextView;

    const v0, 0x7f0a0561

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    const v0, 0x7f0a0560

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    const v0, 0x7f0a055f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$BamaSSSHCWXA7Y_nDBtcVzQIRXg;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$BamaSSSHCWXA7Y_nDBtcVzQIRXg;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$SrkxBaFbQemOEut5U8YqfMmF6wU;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$SoundModeTileTemporaryMuteBoard$SrkxBaFbQemOEut5U8YqfMmF6wU;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public refreshAllView(I)V
    .locals 5

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v0

    const-string v1, "SoundModeTileTemporaryMuteBoard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshAllView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") mode_ringer_time_on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->updateSummaryText()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->getRemainTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->updateQSColoringResources(Landroid/view/View;)V

    return-void
.end method

.method public setBoardToTileCallback(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mBoardToTileCallback:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$BoardToTileCallback;

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 11

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mRemainingTime:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mTitleText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mDivider:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundColor()I

    move-result v6

    invoke-virtual {v0, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    const/16 v7, 0x34

    invoke-virtual {v0, v7}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getSwitchTrackColor()I

    move-result v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :try_start_0
    const-class v8, Landroid/widget/Switch;

    const-string v9, "mIsSupportSemSwitchVI"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->mSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method
