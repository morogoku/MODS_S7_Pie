.class public Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.super Ljava/lang/Object;
.source "WallpaperEventNotifier.java"


# static fields
.field private static sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;


# instance fields
.field public final BITMAP_SCALE_RATIO:F

.field private final DEBUG:Z

.field private final DOMINANT_COLOR_NUMBER:I

.field private final MSG_NOTIFY_ADAPTIVE_COLOR:I

.field private final MSG_NOTIFY_UPDATED:I

.field private final SETTINGS_LOCKSCREEN_WALLPAPER_TRANSPARENT:Ljava/lang/String;

.field private mAdaptiveColorPreSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/widget/SystemUIWidgetCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurUpdateFlag:I

.field private mFontColorUpdator:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[I>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsSkipMessage:Z

.field mIsSupportNavigationBar:Z

.field private mIsThemeApplying:Z

.field mNavigationBarHeight:I

.field private mNeedWhiteBgSettings:Z

.field private mOrgBitmap:Landroid/graphics/Bitmap;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mWM:Landroid/app/WallpaperManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    const/16 v2, 0x2bd

    iput v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->MSG_NOTIFY_UPDATED:I

    const/16 v2, 0x2be

    iput v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->MSG_NOTIFY_ADAPTIVE_COLOR:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    const-string v3, "lockscreen_wallpaper_transparent"

    iput-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->SETTINGS_LOCKSCREEN_WALLPAPER_TRANSPARENT:Ljava/lang/String;

    const/16 v3, 0xa

    iput v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DOMINANT_COLOR_NUMBER:I

    const v3, 0x3d4ccccd    # 0.05f

    iput v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->BITMAP_SCALE_RATIO:F

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mAdaptiveColorPreSet:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;-><init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$2;-><init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11200ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSupportNavigationBar:Z

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSupportNavigationBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x105018c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNavigationBarHeight:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_adaptive_color"

    const/4 v4, -0x2

    invoke-static {v1, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->updateAdaptiveColors(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->clearOrgBitmap()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->recoveryPreviousLook(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setLockType(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setWhiteBgSettings([I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->notifyUpdate()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->handleAdaptiveColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method private clearOrgBitmap()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private getAdaptiveColorPreSet()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    new-instance v10, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    add-int/lit8 v4, v2, 0x1

    aget-object v5, v0, v4

    add-int/lit8 v4, v2, 0x2

    aget-object v6, v0, v4

    add-int/lit8 v4, v2, 0x3

    aget-object v7, v0, v4

    add-int/lit8 v4, v2, 0x4

    aget-object v8, v0, v4

    add-int/lit8 v4, v2, 0x5

    aget-object v9, v0, v4

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    :cond_0
    nop

    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "WallpaperEventNotifier"

    const-string v4, "NumberFormatException!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private getAdaptiveColors(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v1, :cond_4

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    if-gtz v0, :cond_2

    move v0, v1

    :cond_2
    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v3, v4

    if-gtz v3, :cond_3

    move v3, v2

    :cond_3
    const/4 v4, 0x1

    invoke-static {p1, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->getAdaptiveColorFromBitmap(Landroid/graphics/Bitmap;IZ)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v4

    return-object v4

    :cond_4
    :goto_0
    const-string v3, "WallpaperEventNotifier"

    const-string v4, "getAdaptiveColors: bitmap is too small"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    :goto_1
    const-string v1, "WallpaperEventNotifier"

    const-string v2, "getAdaptiveColors: bitmap is null or recycled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sInstance:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    return-object v0
.end method

.method private handleAdaptiveColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 3

    const-string v0, "WallpaperEventNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAdaptiveColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    goto :goto_0

    :cond_0
    const-string v0, "WallpaperEventNotifier"

    const-string v1, "handleAdaptiveColor already handled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$updateAdaptiveColors$0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "WallpaperEventNotifier"

    const-string v1, "updateAdaptiveColors started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getAdaptiveColors(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2be

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WallpaperEventNotifier"

    const-string v2, "updateAdaptiveColors failed to sendMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "WallpaperEventNotifier"

    const-string v2, "updateAdaptiveColors color is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyUpdate()V
    .locals 3

    const-string v0, "WallpaperEventNotifier"

    const-string v1, "notify update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIWidgetCallback;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    invoke-interface {v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recoveryPreviousLook(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setInternalLiveWallpaper()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setExternalLiveWallpaper()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setLockType(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "WallpaperEventNotifier"

    const-string v1, "recovery previous update message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "WallpaperEventNotifier"

    const-string v1, "default case of recovery previous update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendUpdateMessage(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    const-string v3, "WallpaperEventNotifier"

    const-string v4, "INIT_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setInfinityWallpaperAdaptiveColor()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorMode()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "WallpaperEventNotifier"

    const-string v5, "ADAPTIVE_COLOR_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x2

    move-object v1, v3

    goto :goto_1

    :pswitch_1
    const-string v3, "WallpaperEventNotifier"

    const-string v4, "OPEN_THEME_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v3, "WallpaperEventNotifier"

    const-string v4, "ADAPTIVE_COLOR_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    if-eqz v2, :cond_2

    const-string v3, "WallpaperEventNotifier"

    const-string v4, "WHITE_WPAPER_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x4

    :cond_2
    :goto_1
    const-string v3, "WallpaperEventNotifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendUpdateMessage type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " updateFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendAdaptiveColorUpdated(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    iput v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2bd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendUpdates(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    invoke-interface {p1, v0}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(I)V

    return-void
.end method

.method private setAdaptiveColorMode()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorMode()Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveColorMode()Z

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColorMode(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v2, v2, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "WallpaperEventNotifier"

    const-string v4, "setAdaptiveColorMode: infinity wallpaper & adaptive color mode but no adaptive color"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "WallpaperEventNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set color "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "WallpaperEventNotifier"

    const-string v1, "set color null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColors([I)Z

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setAdaptiveColors(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method private setExternalLiveWallpaper()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setExternalLiveWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setInternalLiveWallpaper()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isChangedInfinityName(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setInfinityWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setLockType(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-eqz v1, :cond_2

    return-void

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setNotSupportedKWPType()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockType(I)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "WallpaperEventNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock type was wrong. kwpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setSupportedKWPType()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    :cond_5
    :goto_1
    return-void
.end method

.method private setNotSupportedType(ZZ)V
    .locals 0

    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setEmergencyMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setUltraPowerSavingMode(Z)V

    return-void
.end method

.method private setWhiteBgSettings([I)V
    .locals 14

    if-eqz p1, :cond_a

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_transparent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v6

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardNavigationBar()Z

    move-result v7

    aget v8, p1, v3

    and-int/2addr v8, v2

    if-ne v8, v2, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    aget v9, p1, v2

    and-int/2addr v9, v2

    if-ne v9, v2, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    aget v10, p1, v1

    and-int/2addr v10, v2

    if-ne v10, v2, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move v10, v3

    :goto_3
    const-string v11, "WallpaperEventNotifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkBody = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", hints = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, p1, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, p1, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p1, v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [oldValStatusBar="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newValStatusBar="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] [oldValBody="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newValBody="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] [oldValNaviBar="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newValNaviBar="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v8, :cond_5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    if-eqz v8, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move v11, v3

    :goto_4
    invoke-virtual {v1, v11}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    :cond_5
    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    goto :goto_6

    :cond_6
    if-eq v6, v9, :cond_8

    const-string v1, "WallpaperEventNotifier"

    const-string v11, "oldValBody != newValBody setWhiteKeyguardWallpaper"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    if-eqz v9, :cond_7

    move v11, v2

    goto :goto_5

    :cond_7
    move v11, v3

    :goto_5
    invoke-virtual {v1, v11}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    :cond_8
    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSupportNavigationBar:Z

    if-eqz v1, :cond_a

    if-eq v7, v10, :cond_a

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    if-eqz v10, :cond_9

    goto :goto_7

    :cond_9
    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardNavigationBar(I)V

    :cond_a
    return-void
.end method

.method private updateAdaptiveColors(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/SimpleAsyncTask;->getNewInstance()Lcom/android/systemui/util/SimpleAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$pPaP84TW0-o-NLn3WWasJIBV6ZM;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/wallpaper/-$$Lambda$WallpaperEventNotifier$pPaP84TW0-o-NLn3WWasJIBV6ZM;-><init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SimpleAsyncTask;->submit([Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateWallpaperState(IZ)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, "WallpaperEventNotifier"

    const-string v1, "Unknown type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setLockType(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setExternalLiveWallpaper()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setInternalLiveWallpaper()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setAdaptiveColorMode()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyPowerSavingModeWallpaper(IZZ)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    const-string v2, "WallpaperEventNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " lockType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " prevUpsm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " upsm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " prevEmergency = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " emergency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, p2, :cond_0

    if-eq v1, p3, :cond_2

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setNotSupportedType(ZZ)V

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->recoveryPreviousLook(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    sput-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurUpdateFlag()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurUpdateFlag:I

    return v0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setInfinityWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setExternalLiveWallpaper()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLockType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->setSupportedKWPType()Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->build(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setEmergencyMode(Z)V

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setUltraPowerSavingMode(Z)V

    :cond_4
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdateMessage(I)V

    :cond_7
    :goto_1
    const-string v0, "WallpaperEventNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " init type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", theme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", emergency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", upsm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string v1, "WallpaperEventNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object tried to add another callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdates(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setInfinityWallpaperAdaptiveColor()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mAdaptiveColorPreSet:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, "WallpaperEventNotifier"

    const-string v1, "setInfinityWallpaperAdaptiveColor mAdaptiveColorPreSet is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getAdaptiveColorPreSet()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mAdaptiveColorPreSet:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mAdaptiveColorPreSet:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-object v3

    :cond_1
    const-string v3, "WallpaperEventNotifier"

    const-string v4, "color info is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "WallpaperEventNotifier"

    const-string v2, "wi is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-object v0
.end method

.method public update(ILandroid/graphics/Bitmap;Z)V
    .locals 3

    const-string v0, "WallpaperEventNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " needWhiteBg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mOrgBitmap:Landroid/graphics/Bitmap;

    const-string v0, "WallpaperEventNotifier"

    const-string v2, "skipped update message"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsSkipMessage:Z

    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mNeedWhiteBgSettings:Z

    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->updateWallpaperState(IZ)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mFontColorUpdator:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mFontColorUpdator:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mFontColorUpdator:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mFontColorUpdator:Landroid/os/AsyncTask;

    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$3;-><init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;ZLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mFontColorUpdator:Landroid/os/AsyncTask;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mFontColorUpdator:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    const-string v0, "WallpaperEventNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update bitmap is null type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
