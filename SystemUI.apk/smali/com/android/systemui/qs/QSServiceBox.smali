.class public Lcom/android/systemui/qs/QSServiceBox;
.super Landroid/widget/FrameLayout;
.source "QSServiceBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;
.implements Lcom/android/systemui/statusbar/NotificationData$NotificationSumCallback;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mBadgeBackground:Landroid/widget/LinearLayout;

.field private mBadgeText:Landroid/widget/TextView;

.field private mContactUsMenu:Landroid/view/MenuItem;

.field private mDesktopListener:Lcom/android/systemui/util/DesktopManager$Callback;

.field private mEdit:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mExpanded:Z

.field private mHeaderBadgeText:Ljava/lang/String;

.field protected mHeaderButtonsContainer:Landroid/view/View;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mInflated:Z

.field mIsDexEnabling:Z

.field private mIsSupportContactUs:Z

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mMoreButtonBadge:Landroid/widget/TextView;

.field private mMoreButtonBadgeText:Ljava/lang/String;

.field protected mMoreButtonContainer:Landroid/view/View;

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNotiSettings:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mOrientation:I

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPowerButton:Landroid/widget/ImageButton;

.field protected mPowerButtonContainer:Landroid/view/View;

.field private mQSScreenGrid:Lcom/android/systemui/qs/QSScreenGrid;

.field mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mScreenGrid:Landroid/view/MenuItem;

.field private mSearchButton:Landroid/widget/ImageButton;

.field protected mSearchButtonContainer:Landroid/view/View;

.field private mSettingsBadgeCount:I

.field private mSettingsButton:Landroid/widget/ImageButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsBadgeCount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mOrientation:I

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mInflated:Z

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    const-string/jumbo v2, "power_key_mapping"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsValueList:[Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mIsDexEnabling:Z

    new-instance v0, Lcom/android/systemui/qs/QSServiceBox$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSServiceBox$1;-><init>(Lcom/android/systemui/qs/QSServiceBox;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mDesktopListener:Lcom/android/systemui/util/DesktopManager$Callback;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadgeText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSServiceBox;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSServiceBox;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSServiceBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->showScreenGridDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSServiceBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->launchNotiSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSServiceBox;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissScreenGridDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQSScreenGrid:Lcom/android/systemui/qs/QSScreenGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQSScreenGrid:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGrid;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQSScreenGrid:Lcom/android/systemui/qs/QSScreenGrid;

    :cond_0
    return-void
.end method

.method static synthetic lambda$onClick$1()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$updateEverything$0(Lcom/android/systemui/qs/QSServiceBox;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->setClickable(Z)V

    return-void
.end method

.method private launchNotiSettings()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.STATUS_BAR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private showScreenGridDialog()V
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/QSScreenGrid;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    const v2, 0x7f13027a

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/QSScreenGrid;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQSScreenGrid:Lcom/android/systemui/qs/QSScreenGrid;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQSScreenGrid:Lcom/android/systemui/qs/QSScreenGrid;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGrid;->show()V

    return-void
.end method

.method private startSearchActivity()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateCustomTileBadgeState(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadgeText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-gtz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mHeaderBadgeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSettingsBadge()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeBackground:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsBadgeCount:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeBackground:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mHeaderBadgeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_2
    :goto_0
    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeBackground:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getCurrentBixbySettings()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "power_key_mapping"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected hideQSPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->dismissScreenGridDialog()V

    return-void
.end method

.method public isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string v0, "QSServiceBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installed - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception v1

    const-string v2, "QSServiceBox"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOT Installed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSfinderEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.app.galaxyfinder"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "QSServiceBox"

    const-string v3, "Thrown by PackageManager.getApplicationInfo if the package does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSupportContactUs(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "com.samsung.android.voc"

    const v1, 0xa220268

    const-string v2, "com.samsung.android.voc"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/qs/QSServiceBox;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mIsSupportContactUs:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mIsSupportContactUs:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.samsung.android.voc"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0xa220268

    if-ge v4, v5, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mIsSupportContactUs:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    iput-boolean v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mIsSupportContactUs:Z

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mIsSupportContactUs:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    const-string v2, "QSServiceBox"

    const-string v4, "not installed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public launchContactUsApp(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "3l25p17305"

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    const v2, 0x7f120a0b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui.quickpanel"

    const-string v3, "ask"

    const-string/jumbo v4, "voc://view/contactUs"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "appId"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "appName"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "feedbackType"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/QSServiceBox;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v7, 0x1

    invoke-interface {v6, v5, v7}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "QSServiceBox"

    const-string v8, "do not find samsung members packcage"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v6, 0x0

    return v6
.end method

.method public onAttachedToWindow()V
    .locals 11

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    const-class v1, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationEntryManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/NotificationData;->setNotificationSumCallback(Lcom/android/systemui/statusbar/NotificationData$NotificationSumCallback;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getNotificationSum()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSServiceBox;->onNotificationSumChanged(I)V

    :cond_0
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_USER:Z

    if-eqz v2, :cond_1

    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mDesktopListener:Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    :cond_1
    const v2, 0x7f0a00a3

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00a4

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0707aa

    const v5, 0x7f0705fe

    iget-object v6, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/util/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v4, 0x7f0707ab

    const v5, 0x7f0705ff

    :cond_2
    const v7, 0x3f99999a    # 1.2f

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v2, v4, v8, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v3, v5, v8, v7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSupportSFinder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->startSearchActivity()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4200"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v1, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$Z0uze8yPCevucC1layemK6IoGuE;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$Z0uze8yPCevucC1layemK6IoGuE;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->startSettingsActivity()V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1103"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->shouldShowEdit()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->showQSPopupMenu()V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2003"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;

    invoke-static {}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialog;->globalactionForceShow()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mInflated:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    const v2, 0x7f0804c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    const v3, 0x7f0602c4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0602c3

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v2, 0x7f0a00a4

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v1, 0x7f0a014a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    const v4, 0x7f060255

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->hideQSPopupMenu()V

    :cond_0
    return-void
.end method

.method public onCustomTileListChanged(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "QSServiceBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomTileListChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSServiceBox;->updateCustomTileBadgeState(Ljava/lang/String;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCustomTileListCallback(Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_USER:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mDesktopListener:Lcom/android/systemui/util/DesktopManager$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindowInternal()V

    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->setNotificationSumCallback(Lcom/android/systemui/statusbar/NotificationData$NotificationSumCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0202

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mHeaderButtonsContainer:Landroid/view/View;

    const v0, 0x7f0a049f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    const v0, 0x7f0a04a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0506

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    const v0, 0x7f0a0507

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0330

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    const v0, 0x7f0a0332

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonContainer:Landroid/view/View;

    const v0, 0x7f0a0331

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    const v0, 0x7f0a03ee

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    const v0, 0x7f0a03ef

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButtonContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1209cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mHeaderBadgeText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsContainer:Landroid/view/View;

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeBackground:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsContainer:Landroid/view/View;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/qs/QSServiceBox$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSServiceBox$2;-><init>(Lcom/android/systemui/qs/QSServiceBox;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a0354

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserAvatar:Landroid/widget/ImageView;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->updateQSColoringResources(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mInflated:Z

    return-void
.end method

.method public onNotificationSumChanged(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsBadgeCount:I

    const-string v0, "QSServiceBox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings badge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsBadgeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->updateSettingsBadge()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQsTransitionAnimator;->isDetailShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->updateVisibilities()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSServiceBox;->mExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->updateEverything()V

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSServiceBox;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->setupHost(Lcom/android/systemui/qs/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->updateVisibilities()V

    return-void
.end method

.method public setTransitionAnimator(Lcom/android/systemui/qs/SecQsTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSServiceBox;->mQSTransitionAnimator:Lcom/android/systemui/qs/SecQsTransitionAnimator;

    return-void
.end method

.method public setupHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSServiceBox;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->addCustomTileListCallback(Lcom/android/systemui/qs/QSTileHost$CustomTileListCallback;)V

    :cond_0
    return-void
.end method

.method public showQSPopupMenu()V
    .locals 5

    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    const v3, 0x7f13027e

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mHeaderButtonsContainer:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a0185

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    iput-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadgeText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadgeText:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mHeaderBadgeText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mEdit:Lcom/android/internal/view/menu/MenuItemImpl;

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isQuickSettingEditEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    nop

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a0382

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    iput-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mNotiSettings:Lcom/android/internal/view/menu/MenuItemImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a0111

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContactUsMenu:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContactUsMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a047f

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mScreenGrid:Landroid/view/MenuItem;

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mScreenGrid:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/systemui/qs/QSServiceBox$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSServiceBox$3;-><init>(Lcom/android/systemui/qs/QSServiceBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public updateEverything()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$fe9ZKqdCIVRbOMvtByhnNYJN18c;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QSServiceBox$fe9ZKqdCIVRbOMvtByhnNYJN18c;-><init>(Lcom/android/systemui/qs/QSServiceBox;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSServiceBox;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->hideQSPopupMenu()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->updateVisibilities()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->updateSettingsBadge()V

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 12

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :cond_4
    const v3, 0x7f0a0134

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const v4, 0x7f0a00a3

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const v5, 0x7f0a00a4

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const v6, 0x7f0a014a

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSServiceBox;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800da

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-class v8, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v8}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundColor()I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    if-eqz v10, :cond_a

    if-eqz v7, :cond_9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v10, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v10, p0, Lcom/android/systemui/qs/QSServiceBox;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object v10, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v10, :cond_c

    if-eqz v7, :cond_b

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v10, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v10, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    return-void
.end method

.method protected updateVisibilities()V
    .locals 10

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->getCurrentBixbySettings()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mSettingsContainer:Landroid/view/View;

    sget-boolean v6, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    const/4 v7, 0x4

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButtonContainer:Landroid/view/View;

    sget-boolean v6, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_BIXBY_ON_POWER_KEY:Z

    const/16 v8, 0x8

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSServiceBox;->mExpanded:Z

    if-eqz v6, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSServiceBox;->isSfinderEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mPowerButtonContainer:Landroid/view/View;

    sget-boolean v6, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_BIXBY_ON_POWER_KEY:Z

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v8

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const-string v5, "QSServiceBox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentBixbySettings: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    move v6, v8

    goto :goto_5

    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/qs/QSServiceBox;->mExpanded:Z

    if-eqz v6, :cond_7

    move v6, v4

    goto :goto_5

    :cond_7
    move v6, v7

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    if-nez v0, :cond_8

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadgeText:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadgeText:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v3

    goto :goto_6

    :cond_8
    move v5, v4

    :goto_6
    iget-object v6, p0, Lcom/android/systemui/qs/QSServiceBox;->mMoreButtonBadge:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    move v8, v4

    nop

    :cond_9
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v5, :cond_d

    if-nez v0, :cond_b

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/android/systemui/Rune;->QPANEL_IS_LDU_POPUP:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    const-class v5, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v5}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v5

    if-nez v5, :cond_b

    const-class v5, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v5}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v5

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mIsDexEnabling:Z

    if-nez v5, :cond_b

    const-class v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isUsersEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    move v3, v4

    :goto_7
    const-string v5, "QSServiceBox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMultiUserSwitch -> visible:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", DEX?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDualView?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v8, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v8}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mIsDexEnabling:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/systemui/qs/QSServiceBox;->mIsDexEnabling:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/QSServiceBox;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v4, v7

    :goto_8
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    :cond_d
    return-void
.end method
