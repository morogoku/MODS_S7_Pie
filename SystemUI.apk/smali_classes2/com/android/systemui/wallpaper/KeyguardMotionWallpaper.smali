.class public Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAngularSum:F

.field private mAnimatedAngularSum:F

.field private mAsyncTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapListInitFinished:Z

.field private mBlendingPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mDeltaOfAngularSum:F

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mInterruptedGyro:Landroid/hardware/Sensor;

.field private mIsPreview:Z

.field private mIsSensorRegistered:Z

.field private mLastBottom:I

.field private mLastParsedPackage:Ljava/lang/String;

.field private mLastParsedXml:I

.field private mLastRight:I

.field private mMotionBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgContext:Landroid/content/Context;

.field private mPkgName:Ljava/lang/String;

.field private mPrevAngularSum:F

.field private mPrevAnimatedAngularSum:F

.field private mPrevStartAngularSum:F

.field private mRangeOfRotation:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimestamp:F

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsPreview:Z

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->handleInvalidate([F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedXml:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastParsedPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private applyPortraitRotation()V
    .locals 10

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "KeyguardMotionWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", isRtl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-nez v1, :cond_2

    move v4, v5

    nop

    :cond_2
    or-int/2addr v4, v6

    if-eqz v4, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getDisplayRotation()I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v4, v5, :cond_4

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_4
    if-ne v4, v6, :cond_5

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {p0, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setRotation(F)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setRotation(F)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_c

    if-eq v4, v5, :cond_9

    if-ne v4, v6, :cond_7

    goto :goto_3

    :cond_7
    if-le v2, v1, :cond_8

    move v5, v1

    move v1, v2

    move v2, v5

    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setTranslationX(F)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setTranslationY(F)V

    const-string v5, "KeyguardMotionWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#2 port w = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->requestLayout()V

    goto :goto_5

    :cond_9
    :goto_3
    if-le v1, v2, :cond_a

    move v5, v1

    move v1, v2

    move v2, v5

    :cond_a
    sub-int v5, v2, v1

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    if-eqz v3, :cond_b

    neg-float v7, v5

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setTranslationX(F)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setTranslationX(F)V

    :goto_4
    sub-int v7, v1, v2

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p0, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->setTranslationY(F)V

    const-string v6, "KeyguardMotionWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#2 land w = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", h = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->requestLayout()V

    nop

    :cond_c
    :goto_5
    return-void
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "cropBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v7, v2

    div-float/2addr v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    mul-int/2addr v10, v1

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    mul-int/2addr v11, v2

    const/high16 v12, 0x3f800000    # 1.0f

    if-le v10, v11, :cond_1

    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    int-to-float v10, v10

    int-to-float v11, v2

    div-float/2addr v10, v11

    mul-float/2addr v10, v12

    goto :goto_0

    :cond_1
    iget v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    int-to-float v10, v10

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v10, v12

    :goto_0
    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mCroppedScale:F

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v12

    div-float/2addr v11, v10

    iget v8, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v12

    div-float/2addr v8, v10

    div-float v9, v11, v6

    sub-float v3, v5, v9

    const/4 v9, 0x0

    cmpg-float v12, v3, v9

    if-gez v12, :cond_2

    const/4 v3, 0x0

    :cond_2
    div-float v6, v8, v6

    sub-float v4, v7, v6

    cmpg-float v6, v4, v9

    if-gez v6, :cond_3

    const/4 v4, 0x0

    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-ne v1, v6, :cond_4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-ne v2, v6, :cond_4

    const-string v6, "KeyguardMotionWallpaper"

    const-string v9, "It doesn\'t need to crop bitmap"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v9, 0x1

    if-lt v6, v9, :cond_8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lt v6, v9, :cond_8

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsWidth:I

    if-lt v6, v9, :cond_8

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMetricsHeight:I

    if-ge v6, v9, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v6, v9

    if-gt v6, v1, :cond_7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v6, v9

    if-le v6, v2, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "KeyguardMotionWallpaper"

    const-string v6, "Cropping..."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {p1, v0, v6, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_1
    const-string v6, "KeyguardMotionWallpaper"

    const-string v9, "Calculated crop size error"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_8
    :goto_2
    const-string v6, "KeyguardMotionWallpaper"

    const-string v9, "Math.round(width) < 1 || Math.round(height) < 1 || mMetricsWidth < 1 || mMetricsHeight < 1"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    :goto_3
    return-object v0
.end method

.method private getDisplayRotation()I
    .locals 3

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    return v1
.end method

.method private handleInvalidate([F)V
    .locals 5

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    invoke-direct {p0, v1, v3, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v3, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 12

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "KeyguardMotionWallpaper"

    const-string v3, "bitmapLoaded == false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mStatusBarHeight:I

    if-ne v0, v2, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPaddingLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPaddingRight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPaddingTop:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPaddingBottom:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v0, 0x1e

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    const-string v0, "KeyguardMotionWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRangeOfRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mRangeOfRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    mul-int/2addr v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    if-le v5, v6, :cond_5

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    mul-float/2addr v5, v7

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    mul-float/2addr v5, v7

    :goto_2
    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewWidth:I

    int-to-float v6, v6

    int-to-float v7, v1

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mViewHeight:I

    int-to-float v3, v3

    int-to-float v8, v2

    mul-float/2addr v8, v5

    sub-float/2addr v3, v8

    mul-float/2addr v3, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    move v8, v5

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    int-to-float v10, v4

    int-to-float v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v9}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->init()V

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->invalidate()V

    return-void

    :cond_7
    :goto_3
    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_4
    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "mMotionBitmapList == null || mMotionBitmapList.size() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-direct {v4, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    move-object v2, v4

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setType(I)V

    goto :goto_1

    :cond_1
    const-string v4, "id_path_image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setPath(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    nop

    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerSensor()V
    .locals 3

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "registerSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return-void
.end method

.method private startAlphaAnimator(FFZ)V
    .locals 4

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "mAlphaAnimator starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private unregisterSensor()V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "unregisterSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return-void
.end method

.method private updateWallpaper()V
    .locals 3

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "KeyguardMotionWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAsyncTaskList size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAsyncTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->recycleBitmap()V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->applyPortraitRotation()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "onDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "KeyguardMotionWallpaper"

    const-string v3, "bitmapLoaded == false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    nop

    :goto_2
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_7
    :goto_3
    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_1

    :cond_0
    const-string v0, "KeyguardMotionWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout called init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    iput p4, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastRight:I

    iput p5, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mLastBottom:I

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onPause()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onResume()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->registerSensor()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1002b

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    new-array v5, v5, [F

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    aput v6, v5, v1

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    aput v6, v5, v3

    nop

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setPrevAlpha(I)V

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iget v8, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAngularSum:F

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getPrevAlpha()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v8

    if-eq v7, v8, :cond_4

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    const/high16 v8, 0x40400000    # 3.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "KeyguardMotionWallpaper"

    const-string v8, "mAlphaAnimator isRunning"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->invalidate()V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const-string v1, "KeyguardMotionWallpaper"

    const-string v3, "axisY is not biggest, stop animation"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mTimestamp:F

    nop

    :goto_3
    return-void
.end method

.method public onUnlock()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->onUnlock()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "onUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_0
    return-void
.end method

.method public recycleBitmap()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mBitmapListInitFinished:Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;->reset()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->registerSensor()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->updateWallpaper()V

    return-void
.end method
