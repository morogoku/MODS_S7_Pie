.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.super Lcom/android/systemui/wallpaper/WallpaperViewController;
.source "KeyguardWallpaperController.java"


# static fields
.field private static sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# instance fields
.field mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

.field private mBottom:I

.field mCurrentFolderState:I

.field private mCurrentUserId:I

.field private mDisabled:Z

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFadingAway:Z

.field private mIsEnabledDCMLauncher:Z

.field private mNaturalBarHeight:I

.field private mOccluded:Z

.field private mOldTransparentType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShowing:Z

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mWallpaperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentFolderState:I

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "KeyguardWallpaperController"

    const-string v2, "setLockWallpaperCallback(this)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setWallpaperRegisterReceiver()V

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->updateIsEnabledDCMLauncher()V

    :cond_0
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const-string v3, "lockscreen_wallpaper_transparent"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "white_lockscreen_statusbar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, v2

    move-object v0, v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    invoke-static {v2}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-object v0
.end method

.method private isEnabledDCMLauncher(Z)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getDCMLauncherEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v0

    return v0
.end method

.method private setWallpaperRegisterReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected apply()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    const-string v2, "KeyguardWallpaperController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mOccluded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mFadingAway="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", match_parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    move v1, v6

    nop

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    if-eq v1, v0, :cond_5

    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    if-ne v1, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPause()V

    :cond_5
    :goto_1
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    return-void
.end method

.method public applyBlur(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setRadius(F)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->updateBlurState(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->updateBlurState(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    :goto_0
    const-string v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blurred dim Amount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getWallpaperRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected handleCleanUp()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleCleanUp()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    :cond_0
    return-void
.end method

.method protected handleWallpaperImageChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleWallpaperImageChanged()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->update()V

    :cond_2
    return-void
.end method

.method protected handleWallpaperTypeChanged()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleWallpaperTypeChanged()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardNavigationBar(I)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v4

    if-eq v4, v3, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v4, v0, v2, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->applyPowerSavingModeWallpaper(IZZ)V

    :cond_2
    const-string v4, "KeyguardWallpaperController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleWallpaperTypeChanged: currentFolderState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentFolderState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " which = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " upsm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " prev upsm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " emergency = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " prev emergency = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v1, v4, v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowingState(Z)V

    return-void

    :cond_3
    if-nez v2, :cond_f

    if-eqz v3, :cond_4

    goto/16 :goto_5

    :cond_4
    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v1, v4, v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowingState(Z)V

    return-void

    :cond_5
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_d

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/Rune;->isBeforeDreamDcmLauncher(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_4

    :cond_6
    const/4 v1, 0x0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_b

    const/16 v4, 0x8

    if-eq v0, v4, :cond_9

    packed-switch v0, :pswitch_data_0

    sget-boolean v4, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_OPERATOR_WALLPAPER:Z

    if-eqz v4, :cond_7

    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    move-object v1, v4

    goto/16 :goto_3

    :cond_7
    const-string v4, "MOTION"

    sget-object v6, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v4, v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    move-object v1, v4

    goto/16 :goto_3

    :cond_8
    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    move-object v1, v4

    goto/16 :goto_3

    :pswitch_0
    sget-boolean v4, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v4, :cond_c

    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v4, v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    move-object v1, v4

    goto/16 :goto_3

    :pswitch_1
    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    move-object v1, v4

    goto/16 :goto_3

    :cond_9
    sget-boolean v4, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_VIDEO_WALLPAPER:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    nop

    :try_start_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    const-string v7, ""

    move-object v6, v7

    goto :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-interface {v7, v8}, Landroid/app/IWallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-interface {v7, v8}, Landroid/app/IWallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v7

    const-string v8, "KeyguardWallpaperController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "System dead?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v7, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v7, v8, v4, v6, v9}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    move-object v1, v7

    goto :goto_3

    :cond_b
    move-object v4, v6

    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    goto :goto_2

    :catch_1
    move-exception v6

    const-string v7, "KeyguardWallpaperController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System dead?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v6, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v6, v7, v4, v8}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    move-object v1, v6

    nop

    :cond_c
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowingState(Z)V

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    return-void

    :cond_d
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V

    const/4 v4, -0x2

    iput v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    :cond_e
    invoke-virtual {p0, v6}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    const-string v4, "KeyguardWallpaperController"

    const-string v5, "changed live wallpaper type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowingState(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->wallpaperTypeChanged()V

    return-void

    :cond_f
    :goto_5
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v1, v4, v6, v7}, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBackdropShowingState(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnabledDCMLauncher()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public migrateOldKeyguardWallpaper()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrateOldKeyguardWallpaper path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onUnlock()V
    .locals 2

    const-string v0, "KeyguardWallpaperController"

    const-string v1, "onUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onUnlock()V

    :cond_0
    return-void
.end method

.method protected onUserSwitchComplete(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController;->onUserSwitchComplete(I)V

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_adaptive_color"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Landroid/content/Context;Z)V

    const-string v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserSwitchComplete userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " adaptive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method protected onUserSwitching(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController;->onUserSwitching(I)V

    const-string v0, "KeyguardWallpaperController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitching userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    const/16 v1, 0x259

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isBeforeDreamDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mShowing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperViewController;->setRootView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method protected updateIsEnabledDCMLauncher()V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, v0}, Landroid/app/IWallpaperManager;->setDCMLauncherEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, v0}, Landroid/app/IWallpaperManager;->setDCMLauncherEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
