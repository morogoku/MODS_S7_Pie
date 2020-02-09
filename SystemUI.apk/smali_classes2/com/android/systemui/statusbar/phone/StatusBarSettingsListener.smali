.class public Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;
.super Ljava/lang/Object;
.source "StatusBarSettingsListener.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field private final mSettingsValueList:[Landroid/net/Uri;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "lock_noticard_opacity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "lockscreen_minimizing_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "notification_text_color_inversion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "white_lockscreen_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "sem_perfomance_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "notification_freeform_menuitem"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getQSPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getQSPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getQSPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->onEmergencyModeChanged()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->onEmergencyModeChanged()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePowerSaver()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setNotiSettingsEnabled(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePowerSaver()V

    :cond_5
    :goto_0
    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPreviewController()Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPreviewController()Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateWhiteWallpaperState(Z)V

    :cond_6
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->updateWhiteWallpaperState(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationBackgroundAlpha()V

    const-class v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateInversionByKeyguard()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTypoInitializeFlag()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAllNotificationColor()V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PROPORTIONAL_DIM:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlphaForKeyguard(Z)V

    :cond_7
    const-string v0, "white_lockscreen_navigationbar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardNavigationBar()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->updateNavigationBar(Z)V

    :cond_8
    const-string v0, "lockscreen_minimizing_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->inflateNotificationPreviewIconSlotView()V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPreviewController()Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPreviewController()Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateIconContainerVisibility(Z)V

    :cond_a
    const-string v0, "lock_noticard_opacity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationBackgroundAlpha()V

    const-class v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateInversionByKeyguard()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTypoInitializeFlag()V

    :cond_b
    const-string v0, "notification_text_color_inversion"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-class v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->updateInversionByKeyguard()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTypoInitializeFlag()V

    :cond_c
    const-string v0, "sem_perfomance_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePowerSaver()V

    :cond_d
    const-string v0, "notification_freeform_menuitem"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingsListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->updateNotificationMenuRow()V

    :cond_e
    return-void
.end method
