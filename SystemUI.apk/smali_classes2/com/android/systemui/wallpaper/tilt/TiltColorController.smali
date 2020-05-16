.class public Lcom/android/systemui/wallpaper/tilt/TiltColorController;
.super Ljava/lang/Object;
.source "TiltColorController.java"


# static fields
.field private static final BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

.field private mAnimateHandler:Landroid/os/Handler;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mContext:Landroid/content/Context;

.field private mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

.field private mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

.field private mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

.field private mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

.field private mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mHueLimit:F

.field private mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsEnable:Z

.field private mIsGyroAllowed:Z

.field private mMaxRotation:F

.field private mNeedUpdateColorFilter:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevCommand:Ljava/lang/String;

.field private mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mSaturationLimit:F

.field private mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mTiltHandler:Landroid/os/Handler;

.field private mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mTiltSettingObserver:Landroid/database/ContentObserver;

.field private mTotalRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/Drawer;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevCommand:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    new-instance v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const-string v2, "hue"

    const/high16 v3, -0x3e100000    # -30.0f

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const-string v2, "saturation"

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const-string v2, "alpha"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const-string v2, "scale"

    const v4, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v4, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturationLimit:F

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    iput v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    iput v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-direct {v0, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimationInner(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->requestDraw()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    return p1
.end method

.method static synthetic access$716(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startTiltAnimation(F)V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    return-void
.end method

.method private refreshTiltSettings()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_tilt_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dymlock_suspend_multiwallpaper_switching"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setEnable(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_tilt_effect_hue_limit"

    const/16 v4, 0x1e

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setHueLimit(F)V

    sget-object v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshTiltSettings: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isTiltEnabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isSuspendByDynamicLockScreen: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hueLimit:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->getHueLimit()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestDraw()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/tilt/Drawer;->requestDraw()V

    :cond_0
    return-void
.end method

.method private setTiltSettingObserver(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_tilt_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_tilt_effect_hue_limit"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dymlock_suspend_multiwallpaper_switching"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    :cond_1
    :goto_0
    return-void
.end method

.method private startAlphaAnimation(FJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    sget-object v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Alpha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAlphaAnimation()V

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAlphaAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->start()V

    return-void
.end method

.method private startEnterAnimation(Z)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimationInner(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private startEnterAnimationInner(Z)V
    .locals 6

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    const-string v1, "startEnterAnimation: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    const-string v1, "startEnterAnimation: create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    sget-object v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAllAnimations()V

    const-wide/16 v0, 0x15e

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v3, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v3, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v3, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    invoke-direct {p0, v4, v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startAlphaAnimation(FJ)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v4, -0x3e100000    # -30.0f

    invoke-virtual {v3, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v3, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v3, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startAlphaAnimation(FJ)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->start()V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->requestDraw()V

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    const-string v1, "startEnterAnimation: done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startTiltAnimation(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopAllAnimations()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopTilt()V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopEnterAnimation()V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAlphaAnimation()V

    return-void
.end method

.method private stopAlphaAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private stopEnterAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private stopTilt()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->pauseSensor()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    return-void
.end method

.method private updateColorFilter()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->getHue()F

    move-result v0

    const/high16 v1, -0x3ccc0000    # -180.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3e5a1cac    # 0.213f

    const v5, 0x3f370a3d    # 0.715f

    const v6, 0x3d9374bc    # 0.072f

    const/16 v7, 0x19

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v4

    mul-float/2addr v10, v2

    add-float/2addr v10, v4

    neg-float v11, v4

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/4 v8, 0x1

    neg-float v10, v5

    mul-float/2addr v10, v2

    add-float/2addr v10, v5

    neg-float v11, v5

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/4 v8, 0x2

    neg-float v10, v6

    mul-float/2addr v10, v2

    add-float/2addr v10, v6

    sub-float v11, v9, v6

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/4 v8, 0x3

    aput v1, v7, v8

    const/4 v8, 0x4

    aput v1, v7, v8

    const/4 v8, 0x5

    neg-float v10, v4

    mul-float/2addr v10, v2

    add-float/2addr v10, v4

    const v11, 0x3e126e98    # 0.143f

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/4 v8, 0x6

    sub-float v10, v9, v5

    mul-float/2addr v10, v2

    add-float/2addr v10, v5

    const v11, 0x3e0f5c29    # 0.14f

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/4 v8, 0x7

    neg-float v10, v6

    mul-float/2addr v10, v2

    add-float/2addr v10, v6

    const v11, -0x416f1aa0    # -0.283f

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/16 v8, 0x8

    aput v1, v7, v8

    const/16 v8, 0x9

    aput v1, v7, v8

    const/16 v8, 0xa

    neg-float v10, v4

    mul-float/2addr v10, v2

    add-float/2addr v10, v4

    sub-float v11, v9, v4

    neg-float v11, v11

    mul-float/2addr v11, v3

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/16 v8, 0xb

    neg-float v10, v5

    mul-float/2addr v10, v2

    add-float/2addr v10, v5

    mul-float v11, v3, v5

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/16 v8, 0xc

    sub-float v10, v9, v6

    mul-float/2addr v10, v2

    add-float/2addr v10, v6

    mul-float v11, v3, v6

    add-float/2addr v10, v11

    aput v10, v7, v8

    const/16 v8, 0xd

    aput v1, v7, v8

    const/16 v8, 0xe

    aput v1, v7, v8

    const/16 v8, 0xf

    aput v1, v7, v8

    const/16 v8, 0x10

    aput v1, v7, v8

    const/16 v8, 0x11

    aput v1, v7, v8

    const/16 v8, 0x12

    aput v9, v7, v8

    const/16 v8, 0x13

    aput v1, v7, v8

    const/16 v8, 0x14

    aput v1, v7, v8

    const/16 v8, 0x15

    aput v1, v7, v8

    const/16 v8, 0x16

    aput v1, v7, v8

    const/16 v8, 0x17

    aput v1, v7, v8

    const/16 v1, 0x18

    aput v9, v7, v1

    move-object v1, v7

    iget-object v7, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    new-instance v8, Landroid/graphics/ColorMatrix;

    invoke-direct {v8, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {v7, v8}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    :cond_0
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public getHue()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v0

    return v0
.end method

.method public getHueLimit()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    return v0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " prevCommand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4a9c6a93

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    const v3, -0x4201ad1a

    if-eq v2, v3, :cond_1

    const v3, 0x7c1d9b3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "SLEEP_LOCK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "WAKE_LOCK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v5

    goto :goto_0

    :cond_2
    const-string v2, "ACTION_UNLOCK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimation(Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimation(Z)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimation(Z)V

    nop

    :goto_1
    const/4 v0, 0x1

    :cond_4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevCommand:Ljava/lang/String;

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pauseSensor()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->pause()V

    :cond_0
    return-void
.end method

.method public prepareDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->updateColorFilter()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_2

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v0, v0, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v6

    mul-float/2addr v6, v5

    neg-float v6, v6

    div-float/2addr v6, v0

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_3
    return-void
.end method

.method public resumeSensor()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->resume()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isGyroAllowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->resume()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setHue(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setSaturation(F)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHue(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    :cond_0
    return-void
.end method

.method public setHueLimit(F)V
    .locals 4

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHueLimit: too big."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ". set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHueLimit: too small."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ". set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x41f00000    # 30.0f

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHueLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setTiltSettingObserver(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setTiltSettingObserver(Z)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAllAnimations()V

    return-void
.end method
