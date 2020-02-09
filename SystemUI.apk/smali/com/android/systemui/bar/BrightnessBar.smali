.class public Lcom/android/systemui/bar/BrightnessBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;
.implements Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field public static final BNR_QS_BRIGHTNESS_ON_TOP:Ljava/lang/String; = "brightness_on_top"

.field public static final BNR_QS_TAG:Ljava/lang/String; = "BrightnessOnTop"

.field public static final BRIGHTNESS_ON_TOP:Ljava/lang/String; = "brightness_on_top"

.field private static final TAG:Ljava/lang/String; = "BrightnessBar"


# instance fields
.field mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBrightnessBar:Landroid/widget/LinearLayout;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

.field private mBrightnessDetailIcon:Landroid/widget/ImageView;

.field private mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessMirrorVisible:Z

.field mBrightnessOnTopAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

.field private mContext:Landroid/content/Context;

.field private mIsBrightnessOnTop:Z

.field private mListening:Z

.field mPanelHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "enable_reserve_max_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mSettingsValueList:[Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "brightness_on_top"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/bar/BrightnessBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/BrightnessBar$1;-><init>(Lcom/android/systemui/bar/BrightnessBar;)V

    const-class v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v2, "BrightnessOnTop"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    new-instance v0, Lcom/android/systemui/bar/-$$Lambda$BrightnessBar$13bvWoc3LkaTR8q-xEMXtN_wiUc;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/-$$Lambda$BrightnessBar$13bvWoc3LkaTR8q-xEMXtN_wiUc;-><init>(Lcom/android/systemui/bar/BrightnessBar;)V

    iput-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/bar/BrightnessBar;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessDetail;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/bar/BrightnessBar;)Lcom/android/systemui/settings/BrightnessController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/bar/BrightnessBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/bar/BrightnessBar;)Lcom/android/systemui/settings/ToggleSliderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/bar/BrightnessBar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    return v0
.end method

.method private initBrightnessDetailResources()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "QS"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/settings/BrightnessDetail;

    iget-object v4, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/settings/BrightnessDetail;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    iget-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    const v4, 0x7f0a00bc

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/systemui/bar/BrightnessBar$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/BrightnessBar$2;-><init>(Lcom/android/systemui/bar/BrightnessBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    new-instance v4, Lcom/android/systemui/bar/BrightnessBar$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/bar/BrightnessBar$3;-><init>(Lcom/android/systemui/bar/BrightnessBar;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/settings/BrightnessDetail;->setBrightnessDetailCallback(Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;)V

    return-void
.end method

.method private isBarEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/bar/BrightnessBar;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/BrightnessBar;->isBarEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BrightnessBar;->updateBrightnessBarState(Z)V

    return-void
.end method

.method private refreshBrightnessBarLayout()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    const v2, 0x7f07064e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f070655

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f070654

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v8, 0x7f07064a

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v8

    const/16 v8, 0x10

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070649

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v9, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v9, 0x7f070650

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v9, 0x7f07064f

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v9

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v8, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v8, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onOrientationChanged()V

    return-void
.end method

.method private setBrightnessController(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    :cond_1
    return-void
.end method

.method private setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method private updateBrightnessBarState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setSliderEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    iput-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    iput-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    :cond_1
    const-class v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v1, "BrightnessOnTop"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSBackupRestoreManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessOnTopAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-object v0
.end method

.method public getBackupData(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAG::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "brightness_on_top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "brightness_on_top"

    invoke-virtual {v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "BrightnessOnTop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "builder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBarHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/bar/BrightnessBar;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07064e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getToggleSlider()Lcom/android/systemui/settings/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    return-object v0
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessBar:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00bd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    iput-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSliderView;->applyOpenThemeResources()V

    :cond_0
    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BrightnessBar;->setBrightnessController(Lcom/android/systemui/settings/BrightnessController;)V

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBrightnessMirror()Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BrightnessBar;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bar/BrightnessBar;->initBrightnessDetailResources()V

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessOnTopAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3f6e147b    # 0.93f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessBar:Landroid/widget/LinearLayout;

    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mPanelHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mFraction:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/bar/BrightnessBar;->setPosition(F)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/bar/BrightnessBar;->isBarEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BrightnessBar;->updateBrightnessBarState(Z)V

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/bar/BrightnessBar;->updateQSColoringResources(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isAvailable()Z
    .locals 1

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessControllerEnabled()Z

    move-result v0

    return v0
.end method

.method public isOnTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    return v0
.end method

.method public isShowingWhenExpanded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidData()Z
    .locals 5

    const/4 v0, 0x1

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "brightness_on_top"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v2, "BrightnessOnTop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightnessOnTop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " valid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onBrightnessMirrorReinflated(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onColorChanged()V

    :cond_1
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bar/BrightnessBar;->refreshBrightnessBarLayout()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "BrightnessBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTuningChanged() : key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "brightness_on_top"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onBarSpecChanged()V

    :cond_2
    const-string v0, "BrightnessBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTuningChanged() BRIGHTNESS_ON_TOP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/bar/BrightnessBar;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSliderView;->isBrightnessSliderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->checkRestrictionAndSetEnabled()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bar/BrightnessBar;->updateBrightnessMirror()V

    return-void
.end method

.method public setPosition(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/bar/QSBarItem;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/bar/BrightnessBar;->isBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSystemBrightnessEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/high16 v2, 0x60000

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    const/high16 v2, 0x40000

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setSliderEnabled(Z)V

    iget-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSliderView;->isBrightnessSliderEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mListening:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    if-nez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->checkRestrictionAndSetEnabled()V

    :cond_4
    return-void
.end method

.method public setRestoreData(Ljava/lang/String;)V
    .locals 7

    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "brightness_on_top"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "BrightnessOnTop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBrightnessOnTop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "   Integer.parseInt(sp[1]) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    if-eq v4, v3, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    const-class v4, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/tuner/TunerService;

    const-string v5, "brightness_on_top"

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public updateAlphaForAfterImages(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mPanelHeightAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public updateBrightnessMirror()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v2, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    iget-object v2, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
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

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessSlider:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateQSColoringResources(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    return-void
.end method
