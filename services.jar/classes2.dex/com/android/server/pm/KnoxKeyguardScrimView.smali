.class public Lcom/android/server/pm/KnoxKeyguardScrimView;
.super Landroid/widget/LinearLayout;
.source "KnoxKeyguardScrimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_COLOR_BLACK:Ljava/lang/String; = "black"

.field private static final DEFAULT_THUMB_NAME:Ljava/lang/String; = "default_thumb"

.field private static final FLAG_HOME_KEY_INPUT:I = 0x8

.field private static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final KNOX_KEYGUARD_EVENT_FLAG:Ljava/lang/String; = "KnoxKeyguardEventFlag"

.field private static final KNOX_LOCK_SCREEN_SERVICE:Ljava/lang/String; = "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxKeyguardScrimView"

.field private static final SECURE_FOLDER_LOCK_SCREEN_SERVICE:Ljava/lang/String; = "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

.field private static final SEP_PLATFORM_VERSION_9_1:I = 0x15ff4

.field private static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TOLERABLE_SCRIM_VISIBLE_TIME_MILLIS:I = 0x1388

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"

.field private static isScrimVisible:Z


# instance fields
.field private final desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

.field private mHideScrimRunnable:Ljava/lang/Runnable;

.field mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScrimVisibleLock:Ljava/lang/Object;

.field mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mShowScrimRunnable:Ljava/lang/Runnable;

.field private mShowScrimRunnableSF:Ljava/lang/Runnable;

.field mThread:Landroid/os/HandlerThread;

.field mWindowManager:Landroid/view/WindowManager;

.field mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mScrimVisibleLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardScrimView$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$1;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardScrimView$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$2;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnableSF:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/pm/KnoxKeyguardScrimView$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$3;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHideScrimRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/android/server/pm/KnoxKeyguardScrimView$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$4;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    new-instance v0, Lcom/android/server/pm/KnoxKeyguardScrimView$5;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$5;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->createScrim()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "KnoxKeyguardScrimView"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/KnoxKeyguardScrimView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->getDefaultWallpaper()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/KnoxKeyguardScrimView;)Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createScrim()V
    .registers 11

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundColor(I)V

    const v0, -0x7ffff6f8

    const/4 v7, -0x1

    const/16 v8, 0x964

    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x964

    const/4 v6, -0x3

    move-object v1, v9

    move v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, -0x1

    goto :goto_26

    :cond_25
    const/4 v2, 0x5

    :goto_26
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v2, "ContainerKeyguardScrim"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setVisibility(I)V

    return-void
.end method

.method private getBitmapWallpaper()Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "KnoxKeyguardScrimView"

    const-string v1, "getBitmapWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method private getDefaultWallpaper()V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#99000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->getBitmapWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "KnoxKeyguardScrimView"

    const-string v4, "getting wallpaper data has been completed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const v6, 0x15ff4

    if-eqz v1, :cond_63

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v8, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-lt v8, v6, :cond_46

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v8, v5, v4

    aput-object v2, v5, v3

    invoke-direct {v6, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v3, v6

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_54

    :cond_46
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_54
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v3}, Lcom/android/server/pm/KnoxKeyguardScrimView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_95

    :cond_63
    const-string v7, "KnoxKeyguardScrimView"

    const-string/jumbo v8, "something was wrong"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wallpaper"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/WallpaperManager;

    sget v8, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-lt v8, v6, :cond_8e

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v5, v4

    aput-object v2, v5, v3

    invoke-direct {v6, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v3, v6

    invoke-virtual {p0, v3}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_95

    :cond_8e
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_95
    return-void
.end method

.method private getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object v0
.end method

.method private getPersonaService()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private isDesktopMode()Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->getDesktopModeManager()Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1b

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    return v1

    :cond_1d
    return v1
.end method

.method private isTablet()Z
    .registers 3

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private openDefaultInfinityWallpaper()Ljava/io/InputStream;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    :try_start_7
    const-string v1, "com.android.systemui.infinity.InfinityWallpaper"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_16} :catch_18

    move-object v0, v1

    goto :goto_1c

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    :cond_1c
    :goto_1c
    const-string v1, "KnoxKeyguardScrimView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseInfinityColorInfo colorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private registerDesktopModeEventListener()V
    .registers 3

    const-string v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "register DesktopMode EventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    goto :goto_28

    :cond_20
    const-string v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "register DesktopMode EventListener was failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method


# virtual methods
.method public hideScrim()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mScrimVisibleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    if-nez v1, :cond_11

    const-string v1, "KnoxKeyguardScrimView"

    const-string/jumbo v2, "scrim not visible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_11
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHideScrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isKnoxKeyguardServiceRunning(I)Z
    .registers 8

    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    const-string v2, "KnoxKeyguardScrimView"

    const-string v3, "cannot get ActivityManagerService!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_13
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    goto :goto_1e

    :cond_1c
    const-string v2, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    :goto_1e
    const v3, 0x7fffffff

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->getServicesForUser(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v1, "KnoxKeyguardScrimView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKnoxKeyguardServiceRunning(user:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") true"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_5e
    goto :goto_29

    :cond_5f
    const-string v3, "KnoxKeyguardScrimView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKnoxKeyguardServiceRunning(user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public showScrim(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mScrimVisibleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    if-eqz v1, :cond_11

    const-string v1, "KnoxKeyguardScrimView"

    const-string/jumbo v2, "scrim already visible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_11
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_37

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "showScrim(), start freezing screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    :cond_29
    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnableSF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    goto :goto_36

    :cond_31
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    :goto_36
    return-void

    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public showScrimWithoutFreeze(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mScrimVisibleLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    if-eqz v1, :cond_11

    const-string v1, "KnoxKeyguardScrimView"

    const-string/jumbo v2, "scrim already visible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_11
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2b

    const-string v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "showScrim(), without freezing screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnableSF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    :cond_25
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    :goto_2a
    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method
