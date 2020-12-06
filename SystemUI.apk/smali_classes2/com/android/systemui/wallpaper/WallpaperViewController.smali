.class public Lcom/android/systemui/wallpaper/WallpaperViewController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperViewController.java"

# interfaces
.implements Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;,
        Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentWhich:I

.field protected final mHandler:Landroid/os/Handler;

.field protected mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mIsInfinityWallpaper:Z

.field private mIsMultiLockWallpaper:Z

.field mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mScreenOn:Z

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field protected mService:Landroid/app/IWallpaperManager;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field protected mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field protected mVisibility:I

.field private mWallpaperChangedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

.field mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field protected mWallpaperType:I

.field protected mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mVisibility:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mCurrentWhich:I

    new-array v0, v0, [Landroid/net/Uri;

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "ultra_powersaving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "lock_adaptive_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperViewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$1;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperViewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$2;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperViewController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$3;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperViewController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$5;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperViewController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperViewController$4;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->registerOMCWallpaperUpdatedReceiver()V

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->registerWallpaperChangedReceiver()V

    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDexMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setWallpaperUpdateCallback(Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/WallpaperViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    return p1
.end method

.method private registerOMCWallpaperUpdatedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.RSCUPDATE_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;Lcom/android/systemui/wallpaper/WallpaperViewController$1;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$OMCWallpaperUpdatedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWallpaperChangedReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;-><init>(Lcom/android/systemui/wallpaper/WallpaperViewController;Lcom/android/systemui/wallpaper/WallpaperViewController$1;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperChangedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperChangedReceiver:Lcom/android/systemui/wallpaper/WallpaperViewController$WallpaperChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected apply()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "WallpaperViewController : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsInfinityWallpaper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWallpaperType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getLockWallpaperType()I
    .locals 6

    invoke-static {}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    or-int/lit8 v1, v1, 0x10

    :cond_0
    const-string v2, "WallpaperViewController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLockWallpaperType: currentFolderState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getWallpaperType()I

    move-result v3

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3, v1}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v2

    const-string v3, "WallpaperViewController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System dead?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method protected handleCleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    :cond_1
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->handleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected handleWallpaperImageChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected handleWallpaperTypeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected onBootCompleted()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->getLockWallpaperType()I

    move-result v0

    :goto_0
    const-string v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootCompleted mWallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", wallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->handleWallpaperTypeChanged()V

    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->init()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    const-string v0, "WallpaperViewController"

    const-string v1, "mWallpaperView.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    const-string v0, "WallpaperViewController"

    const-string v1, "mSemDisplaySolutionManager is called : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    const-string v0, "WallpaperViewController"

    const-string v1, "mWallpaperView.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    const-string v0, "WallpaperViewController"

    const-string v1, "mSemDisplaySolutionManager is called : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onResume()V

    :cond_1
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string v0, "WallpaperViewController"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mScreenOn:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->sendIntentToWallpaperUpdator(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->onPause()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    const-string v0, "WallpaperViewController"

    const-string v1, "onScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mScreenOn:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mScreenOn:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->sendIntentToWallpaperUpdator(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->onResume()V

    :cond_1
    return-void
.end method

.method protected onUserSwitchComplete(I)V
    .locals 0

    return-void
.end method

.method protected onUserSwitching(I)V
    .locals 0

    return-void
.end method

.method public onWallpaperChanged()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->getLockWallpaperType()I

    move-result v0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->updateIsEnabledDCMLauncher()V

    :cond_0
    const-string v2, "WallpaperViewController"

    const-string v3, "onWallpaperChanged() called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->isEnabledMultiLockWallpaper()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    sget-boolean v3, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    :cond_1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v3

    const-string v4, "WallpaperViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWallpaperChanged() called newType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " oldType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newDeXMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " oldDeXMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isInfinityWallpaper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isMultiLockWallpaper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsMultiLockWallpaper:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x259

    if-eq v3, v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    if-eq v5, v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x25a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDexMode(Z)V

    sget-boolean v4, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V

    :cond_4
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->notifyWallpaperChanged(I)V

    :cond_5
    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onWallpaperUpdate()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->getLockWallpaperType()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicWallpaperEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mIsInfinityWallpaper:Z

    :goto_0
    :try_start_0
    const-class v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    iget v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperType:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x259

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x25a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    const-string v0, "WallpaperViewController"

    const-string v1, "mWallpaperView.reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->reset()V

    :cond_0
    return-void
.end method

.method protected sendIntentToWallpaperUpdator(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "com.samsung.intent.action.WALLPAPER_UPDATOR_SCREEN_TURNNING_ON"

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.intent.action.WALLPAPER_UPDATOR_SCREEN_TURNED_OFF"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.keyguardwallpaperupdator"

    const-string v3, "com.samsung.android.keyguardwallpaperupdator.manager.ScreenStateReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendWallpaperCommand(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/WallpaperViewController;->sendWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "WallpaperViewController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWallpaperCommand() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v1, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onCommand(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    :cond_2
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperViewController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method protected updateIsEnabledDCMLauncher()V
    .locals 0

    return-void
.end method
