.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;
.super Ljava/lang/Object;
.source "SemFingerprintMaskViewManager.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final ACTION_FOD_PRESS:I

.field private final ACTION_FOD_RELEASE:I

.field private final ACTION_SINGLE_TAP:I

.field private final NEED_WAKELOCK:I

.field private final NO_NEED_WAKELOCK:I

.field private final TAG:Ljava/lang/String;

.field private final VIEW_FAILTEXT:I

.field private final VIEW_FINGERPRINT_ICON:I

.field private isScreenOn:Z

.field private mBackGroundView:Landroid/widget/RelativeLayout;

.field private mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mBgBottomView:Landroid/view/View;

.field private mBgCancelButton:Landroid/widget/Button;

.field private mBgGuideImage:Landroid/widget/ImageView;

.field private mBgGuideString:Ljava/lang/String;

.field private mBgGuideText:Landroid/widget/TextView;

.field private mBgLayout:Landroid/widget/LinearLayout;

.field private mBgTitleText:Landroid/widget/TextView;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFailTextLayout:Landroid/widget/RelativeLayout;

.field private mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mFailTextView:Landroid/widget/TextView;

.field private mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHandler:Landroid/os/Handler;

.field private mHasBackgroundLayer:Z

.field private mInternalHandler:Landroid/os/Handler;

.field private mIsAdaptiveIconEnabled:Z

.field private mIsDone:Z

.field private mIsPrompt:Z

.field private mIsResourceLoaded:Z

.field private mIsVisible:Z

.field private mMaskType:I

.field private mOrientationScreen:I

.field private mOverlayGreenView:Landroid/widget/ImageView;

.field private mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

.field private mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreOrientationScreen:I

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSensorAreaHeight:I

.field private mSensorAreaLayout:Landroid/widget/RelativeLayout;

.field private mSensorAreaSizeInfo:[Ljava/lang/String;

.field private mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

.field private mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

.field private mSensorAreaWidth:I

.field private mSensorImageSize:I

.field private mSensorMarginBottom:I

.field private mSensorMarginLeft:I

.field private mToken:Landroid/os/IBinder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;

.field private mhasPendingRemove:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/os/Bundle;IIZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemFingerprintMaskViewManager@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const/16 v4, 0x8

    iput v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->ACTION_SINGLE_TAP:I

    const/16 v4, 0xf

    iput v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->ACTION_FOD_PRESS:I

    const/16 v4, 0x10

    iput v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->ACTION_FOD_RELEASE:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowToken:Landroid/os/IBinder;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->NO_NEED_WAKELOCK:I

    const/4 v5, 0x1

    iput v5, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->NEED_WAKELOCK:I

    iput v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    iput v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOrientationScreen:I

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideText:Landroid/widget/TextView;

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgTitleText:Landroid/widget/TextView;

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgCancelButton:Landroid/widget/Button;

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideString:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    iput-boolean v4, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->isScreenOn:Z

    iput v5, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->VIEW_FAILTEXT:I

    const/4 v6, 0x2

    iput v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->VIEW_FINGERPRINT_ICON:I

    new-instance v6, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x8b3

    const v11, 0x8000518

    const/4 v12, -0x3

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x8b3

    const v17, 0x8000518

    const/16 v18, -0x3

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0xa39

    const v17, 0x1080882

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iput-object v1, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mInternalHandler:Landroid/os/Handler;

    const-string/jumbo v8, "token"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    iget-object v8, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string v9, "display"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    iput-object v8, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v8, "DisplaySolution"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v8, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput v3, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    move/from16 v8, p7

    iput-boolean v8, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPrompt:Z

    iget v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/2addr v9, v5

    if-eqz v9, :cond_0

    move v9, v5

    goto :goto_0

    :cond_0
    move v9, v4

    :goto_0
    iput-boolean v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    const-string/jumbo v9, "sem_area"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateDisplayMetrics(Z)V

    const-string/jumbo v9, "sem_adaptive_icon"

    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsAdaptiveIconEnabled:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->loadResource()Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsResourceLoaded:Z

    new-instance v9, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;

    invoke-direct {v9, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    iput-object v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v10, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v11, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v11}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-class v10, Landroid/os/PowerManager;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    iput-object v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v9, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v10, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v5, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mInternalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->forceRemove()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mhasPendingRemove:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateFailTextView()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method private forceRemove()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRemove: start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRemove: start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v3, "forceRemove: token is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mhasPendingRemove:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v4, "forceRemove : overlay mask view :"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v3, "forceRemove: token is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mhasPendingRemove:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_3
    goto :goto_4

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v4, "forceRemove : rotation view :"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v3, "forceRemove: token is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mhasPendingRemove:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    :goto_5
    goto :goto_6

    :catch_2
    move-exception v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v4, "forceRemove : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_6
    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v1, "forceRemove: token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mhasPendingRemove:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_b
    :goto_7
    goto :goto_8

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v2, "forceRemove : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    return-void
.end method

.method private getNitBrightness(F)F
    .locals 3

    const v0, 0x3fd26e98    # 1.644f

    mul-float/2addr v0, p1

    const/high16 v1, 0x43000000    # 128.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const v1, 0x3e6b851f    # 0.23f

    mul-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1

    sub-float/2addr v1, p1

    const v2, 0x3e5c28f6    # 0.215f

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-float/2addr v0, v1

    return v0
.end method

.method private getOverlayMaskAlphaLevel()F
    .locals 9

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v1, "getOverlayMaskAlphaLevel called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    const v1, 0x44034000    # 525.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getNitBrightness(F)F

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-float v5, v2, v1

    float-to-double v5, v5

    const-wide v7, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    sget-boolean v4, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOverlayMaskAlphaLevel : brightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", nit_max="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", nit_curr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private getPxValue(D)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private loadResource()Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iput-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sem_fingerprint_sensor_area_view"

    invoke-static {v4, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getLayout(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0, v4, v6, v3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "sem_fingerprint_sensor_area_layout"

    invoke-static {v6, v7}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "sem_fingerprint_imgFingerGuide"

    invoke-static {v6, v7}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "sem_fingerprint_icon_bg"

    invoke-static {v7, v8}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "sem_fingerprint_bg"

    invoke-static {v5, v7}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPrompt:Z

    if-eqz v7, :cond_1

    const-string v7, "#CC5e5e5e"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    const-string v7, "#FF595959"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    :cond_3
    :goto_1
    sget-boolean v5, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v5, :cond_5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sem_fingerprint_overlay_mask"

    invoke-static {v1, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getLayout(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v4, v1

    if-nez v4, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "sem_fingerprint_green_sensor_view"

    invoke-static {v5, v7}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "sem_fingerprint_overlay_green_icon"

    invoke-static {v5, v7}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateLayoutSpec()V

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sem_fingerprint_failtext_view"

    invoke-static {v1, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getLayout(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v4, v1

    if-nez v4, :cond_6

    return v3

    :cond_6
    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sem_fingerprint_fail_textview"

    invoke-static {v5, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getPxValue(D)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v5, "#CC1e1e1e"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    const v1, 0x7f0d01ef

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v2, "mBackGroundView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a04ce

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a04ca

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgBottomView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a04cf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sem_fingerprint_bg_title"

    invoke-static {v2, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a04cd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a04cc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_bg_ready_description"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideString:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a04cb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sem_cancel_button_shape"

    invoke-static {v2, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgCancelButton:Landroid/widget/Button;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$3;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$4;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return v5

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v4, "loadResource : "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private onConfigurationChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOrientationScreen:I

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOrientationScreen:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v1, "change orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateRotationInfo()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateFailTextView()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x5

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateDisplayMetrics(Z)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateFailTextView()V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private semGetAcquiredString(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_image_dirty_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_partial_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    return-object v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_no_match_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_light_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_too_wet_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_too_fast_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    nop

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semGetAcquiredString : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBackgroundViewRotation(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgBottomView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgBottomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getPxValue(D)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    int-to-double v6, v1

    const-wide v8, 0x3fe02de00d1b7176L    # 0.5056

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :pswitch_1
    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-double v6, v0

    const-wide v8, 0x3fc77318fc504817L    # 0.1832

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    nop

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgBottomView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showTemporaryMessage(ILjava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTemporaryMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateIcon(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private updateDisplayMetrics(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDisplayMetrics called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaWidth:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginLeft:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateLayoutSpec()V

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateRotationInfo()V

    :cond_1
    return-void
.end method

.method private updateFailTextView()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const-wide/high16 v2, 0x403a000000000000L    # 26.0

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getPxValue(D)I

    move-result v4

    if-lt v1, v4, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getPxValue(D)I

    move-result v2

    :goto_0
    move v1, v2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateIcon(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateIcon : view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_error_wipe"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_error_move"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_error_timeout"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_no_match"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayoutSpec()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private updateRotationInfo()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-boolean v1, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRotationInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    const-wide v2, 0x4050800000000000L    # 66.0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    const/16 v4, 0x10e

    invoke-virtual {v1, v4}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x13

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRotation(F)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800053

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getPxValue(D)I

    move-result v2

    add-int/2addr v4, v2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    const/16 v4, 0x5a

    invoke-virtual {v1, v4}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x15

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRotation(F)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800055

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getPxValue(D)I

    move-result v2

    add-int/2addr v4, v2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    const/16 v4, 0x51

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setRotation(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setRotation(F)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    iget v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getPxValue(D)I

    move-result v2

    add-int/2addr v4, v2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    nop

    :goto_0
    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->setBackgroundViewRotation(I)V

    :cond_4
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method handleOverlayMaskView(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getOverlayMaskAlphaLevel()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->setFreezingScreenBrightness(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->setFreezingScreenBrightness(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method handleScreenEvent(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->isScreenOn:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_lockscreen_whitebg.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_lockscreen.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->startIconAnimation(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_lockscreen.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method handleSensorView(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayGreenView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideFingerprintGuideView(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->isScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method

.method public moveFingerIcon(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$11;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$11;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;FF)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method pauseIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method resetMessage(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBgGuideImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method resumeIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method show()Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "show : already showing"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show : start,  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    :try_start_0
    sget-boolean v2, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    const/high16 v3, 0x40000

    const v4, -0x10001

    const/16 v5, 0x1606

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v4

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "FP Maskview"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FP sensor"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateRotationInfo()V

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    and-int/lit8 v0, v0, 0x10

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$5;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show : failed to add feedback area"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsAdaptiveIconEnabled:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_7

    :cond_6
    :try_start_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_7
    :goto_1
    :try_start_5
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x1200000

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x3f4ccccd    # 0.8f

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FP BG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$6;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackGroundView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$7;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_8
    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show : failed to add background view"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_2
    :try_start_7
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    new-instance v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$8;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->setVisibility(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_8
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaView:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show : failed to add sensor area"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_3
    :try_start_9
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOverlayMaskLayout:Lcom/android/systemui/fingerprint/SemFingerprintRotationView;

    new-instance v2, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$9;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/SemFingerprintRotationView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_a
    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleOverlayMaskView(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_b
    goto :goto_4

    :catch_4
    move-exception v0

    :try_start_a
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "show : failed to add overlay mask"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :goto_4
    goto :goto_5

    :catch_5
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "show : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    :goto_5
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    return v0
.end method

.method showErrorMessage(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showTemporaryMessage(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method showHelpMessage(ILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->isScreenOn:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->semGetAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showHelpMessageOnAod(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showTemporaryMessage(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method showHelpMessageOnAod(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFailTextLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$10;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->wakeLockDuration(Landroid/content/Context;J)V

    :cond_1
    return-void
.end method

.method startDismiss()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startDismiss : start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsDone:Z

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->forceRemove()V

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setFreezingScreenBrightness(Z)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsAdaptiveIconEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startDismiss : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsVisible:Z

    return-void
.end method

.method startIconAnimation(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->isScreenOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_aod.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mFingerGuideLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_3
    return-void
.end method
