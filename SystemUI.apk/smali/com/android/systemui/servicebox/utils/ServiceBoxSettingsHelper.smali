.class public Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;
.super Ljava/lang/Object;
.source "ServiceBoxSettingsHelper.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

.field private static final DEFAULT_PAGES_ORDER:[Ljava/lang/String;

.field private static final SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

.field private static final WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;


# instance fields
.field private mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mContentObserverHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mLastPageKeyOrder:Ljava/lang/String;

.field private mLastPageOrder:Ljava/lang/String;

.field private final mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViewsSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private mServiceBoxSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string/jumbo v0, "servicebox_music"

    const-string/jumbo v1, "servicebox_calendar"

    const-string/jumbo v2, "servicebox_alarm"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v1, v0, [Landroid/net/Uri;

    const-string v2, "additional_information_val"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "add_info_music_control"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "add_info_today_schedule"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "add_info_alarm"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "lockscreen_aod_servicebox_page"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "face_widget_order"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "lockscreen_aod_staying_music_page"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "aod_lock_music_media_key_code"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sput-object v1, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    new-array v1, v8, [Landroid/net/Uri;

    const-string/jumbo v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "white_cover_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "easy_mode_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "dualclock_menu_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "homecity_timezone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "high_text_contrast_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "roaming_clock_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "face_widgets_option"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v8

    const-string/jumbo v1, "use_iris_firstlock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "face_without_swipe_to_unlock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "intelligentscan_without_swipe_to_unlock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContentObserverHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    new-instance v0, Lcom/android/systemui/servicebox/utils/-$$Lambda$ServiceBoxSettingsHelper$_yhmecyd6to5HcJ_LRdqH35zRQs;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/utils/-$$Lambda$ServiceBoxSettingsHelper$_yhmecyd6to5HcJ_LRdqH35zRQs;-><init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/servicebox/utils/-$$Lambda$ServiceBoxSettingsHelper$mKIirquSIcCSsTLsXBNtmGXZc80;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/utils/-$$Lambda$ServiceBoxSettingsHelper$mKIirquSIcCSsTLsXBNtmGXZc80;-><init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/servicebox/utils/-$$Lambda$ServiceBoxSettingsHelper$G_tx4RKOMZ1BcClMFU0suVrfV04;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/utils/-$$Lambda$ServiceBoxSettingsHelper$G_tx4RKOMZ1BcClMFU0suVrfV04;-><init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isSettingValueEnabled(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)Lcom/android/systemui/servicebox/KeyguardServiceBoxController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-object v0
.end method

.method private isSettingValueEnabled(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Landroid/net/Uri;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxSharePageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ServiceBoxSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged() shared package name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->setCurrentPage(Ljava/lang/String;)V

    :cond_1
    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxPageOrder()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ServiceBoxSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged() page order = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->reissueAllPages()V

    :cond_3
    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->resetServiceBoxMediaKeyEvent()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxMediaKeyEventFromAod()I

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    const-string v1, "ServiceBoxSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged() media key event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->pushMediaKeyEvent(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->resetServiceBoxMediaKeyEvent()V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->onSetupCompleted()V

    goto :goto_1

    :cond_8
    :goto_0
    const-string v0, "ServiceBoxSettingsHelper"

    const-string/jumbo v1, "onChanged() servicebox individual switches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->reissueAllPages()V

    :cond_9
    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "ServiceBoxSettingsHelper"

    const-string/jumbo v1, "onChanged() each mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->reissueAllPages()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "ServiceBoxSettingsHelper"

    const-string/jumbo v1, "onChanged() white wallpaper info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->reissueAllPages()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->sendRequestRemoteViewsBroadcast()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "ServiceBoxSettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChanged() uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->onSettingsChanged(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const-string v0, "ServiceBoxSettingsHelper"

    const-string v1, "addSettingsObserver() %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    new-instance v1, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;

    iget-object v6, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContentObserverHandler:Landroid/os/Handler;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p2

    move v8, p3

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper$1;-><init>(Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isSettingValueEnabled(Ljava/lang/String;I)Z

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v4, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "  ServiceBoxSettingsHelper"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "    - observed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getPagesOrder()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxPageOrder()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceBoxSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPagesOrder() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPagesOrderForCurrentUser()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_widget_order"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBoxPageOrderList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxPageOrder()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceBoxSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceBoxPageOrder() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_0
    return-object v1
.end method

.method public isNotDefinedSettingValue(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, -0x63

    const/4 v2, -0x2

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPageEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "servicebox_clock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "servicebox_calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxTodaysPage()Z

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v0, "servicebox_alarm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxAlarmPage()Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteViewsEnabled(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "ServiceBoxSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRemoteViewsEnabled() remoteKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", hashKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ServiceBoxSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRemoteViewsEnabled() there is no data, remoteKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerListener()V
    .locals 3

    const-string v0, "ServiceBoxSettingsHelper"

    const-string/jumbo v1, "registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->WHITE_WALLPAPER_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->SERVICEBOX_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->CLOCK_SETTINGS_URI_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public removeSettingsObserver(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceBoxSettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSettingsObserver() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mRemoteViewsSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->removeRemoteViews(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetPageKeyOrder()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageOrder:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    return-void
.end method

.method public saveCurrentFaceWidgetResourceIds(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceBoxSettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCurrentFaceWidgetResourceIds() ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_widget_res_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public saveCurrentFaceWidgetsOrder(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceBoxSettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCurrentFaceWidgetsOrder() order = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_widget_order"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public saveCurrentPageKeyListForAOD(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceBoxSettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCurrentPageKeyListForAOD() order = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mLastPageKeyOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mLastPageKeyOrder:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_lock_share_page_key_order"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setSettingValuedEnabled(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public unregisterListener()V
    .locals 2

    const-string v0, "ServiceBoxSettingsHelper"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mWhiteWallpaperSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mServiceBoxSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->mClockSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method
