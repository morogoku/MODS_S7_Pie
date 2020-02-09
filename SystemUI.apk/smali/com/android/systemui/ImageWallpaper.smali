.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    }
.end annotation


# static fields
.field private static mIsSupportHomeWallpaperTiltEffect:Z


# instance fields
.field private mCurrentWhich:I

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

.field private mFolderStateChanged:Z

.field private mIsSupportLandWallpaper:Z

.field private mLastKeyboard:I

.field private mNewKeyboard:I

.field private mPrevMirrorLinkEnabled:Z

.field private mTiltChanged:Z

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperTiltSettingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/ImageWallpaper;->mIsSupportHomeWallpaperTiltEffect:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mPrevMirrorLinkEnabled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper;->mCurrentWhich:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mCurrentWhich:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mCurrentWhich:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsSupportLandWallpaper:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mFolderStateChanged:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/ImageWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper;->mFolderStateChanged:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/ImageWallpaper;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/ImageWallpaper;Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsSupportInconsistencyWallpaper:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsSupportInconsistencyWallpaper:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->mIsSupportHomeWallpaperTiltEffect:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mPrevMirrorLinkEnabled:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/ImageWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper;->mPrevMirrorLinkEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/ImageWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/ImageWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper;->getCurrentWhich()I

    move-result v0

    return v0
.end method

.method private getCurrentWhich()I
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    return v0
.end method

.method public static isInterruptGyroSensorSupported(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public isDexConfigChanged()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x32

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    return v1
.end method

.method public isDexDualViewMode()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper;->isDexEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isDexEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isDexModeChanged()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper;->isDexEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper;->isDexConfigChanged()Z

    move-result v1

    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDexModeChanged: isDexEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , isDexConfigChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public isDexStandAloneMode()Z
    .locals 1

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->isInterruptGyroSensorSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ImageWallpaper;->mIsSupportHomeWallpaperTiltEffect:Z

    invoke-static {p0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsSupportLandWallpaper:Z

    const-string v0, "desktopmode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    return-object v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->trimMemory(I)V

    :cond_0
    return-void
.end method
