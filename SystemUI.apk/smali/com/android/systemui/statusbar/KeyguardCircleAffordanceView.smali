.class public Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;
    }
.end annotation


# static fields
.field private static mIsLockscreenRotatable:Z


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCenterX:I

.field private mCenterXOnScreen:I

.field private mCenterY:I

.field private mCenterYOnScreen:I

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleColor:I

.field private mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mCircleStartRadius:F

.field private mCircleStartValue:F

.field private mCircleWillBeHidden:Z

.field private mClipDistance:F

.field private mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mColorInterpolator:Landroid/animation/ArgbEvaluator;

.field private mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

.field private mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

.field private mDCircleAlpha:I

.field private mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleEndAlpha:I

.field private mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDCircleMaxRadius:F

.field private final mDCirclePaint:Landroid/graphics/Paint;

.field private mDCircleRadius:F

.field private mDCircleStartAlpha:I

.field private mDeviceInteractive:Z

.field private mDisplay:Landroid/view/Display;

.field private mFinishing:Z

.field private mFling:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field protected mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mHintAnimation:Z

.field private mHwCenterX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCenterY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCirclePaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mHwCircleRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mIconAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mImageScale:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mInverseColor:I

.field private mIsPainterReady:Z

.field private mIsSecure:Z

.field private mIsShortcutForPhone:Z

.field private mJustClicked:Z

.field private mLaunchingAffordance:Z

.field private mMaxCircleSize:F

.field private mMaxRadius:F

.field private final mMinBackgroundRadius:I

.field private final mNormalColor:I

.field private mOldDistance:F

.field private mPaintColor:Landroid/graphics/Paint;

.field private mPaintPreview:Landroid/graphics/Paint;

.field private mPreviewAlpha:I

.field private mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mPreviewAlphaEnd:I

.field private mPreviewAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewAlphaStart:I

.field private mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewClipRect:Landroid/graphics/RectF;

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewColor:I

.field private mPreviewScale:F

.field private mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

.field private mPreviewScaleEnd:F

.field private mPreviewScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewScaleStart:F

.field private mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewShrinker:Landroid/animation/ValueAnimator;

.field private mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

.field private mPreviewView:Landroid/view/View;

.field private mRadiusEnd:F

.field private mRadiusStart:F

.field private mRestingAlpha:F

.field private mReveal:Z

.field private mRight:Z

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShaderPreview:Z

.field private mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutForCamera:Z

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mSineInOut33:Landroid/view/animation/Interpolator;

.field private mSineOut33:Landroid/view/animation/Interpolator;

.field private mStoppingAndHiding:Z

.field private mSupportHardware:Z

.field private mTempPoint:[I

.field private mTouchBoundary:I

.field private mTouchCancelled:Z

.field private mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

.field private mTrusted:Z

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsLockscreenRotatable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRestingAlpha:F

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$29;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-string v5, "SEP"

    sget-object v6, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInverseColor:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mNormalColor:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602b3

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602b2

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f2b851f    # 0.67f

    const v7, 0x3e2e147b    # 0.17f

    invoke-direct {v5, v7, v7, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f547ae1    # 0.83f

    const v8, 0x3ea8f5c3    # 0.33f

    invoke-direct {v5, v8, v2, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v8, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineInOut33:Landroid/view/animation/Interpolator;

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    invoke-direct {v2}, Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseOut:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseOut;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07021a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    new-instance v4, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplay:Landroid/view/Display;

    const-string v4, "lockscreen.rot_override"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v0

    :goto_2
    sput-boolean v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsLockscreenRotatable:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v6, "white_lockscreen_wallpaper"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    goto :goto_3

    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mNormalColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInverseColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    :goto_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    return p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlpha:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewClipRect(F)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColor(F)V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setArrowImageAlpha(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initVelocityTracker()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->endMotion(FF)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaShrinker()V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    return p1
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAnimator(Z)V

    return-void
.end method

.method static synthetic access$5502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    return p1
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->showHidePreview(F)V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScale:F

    return p1
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->dispatchCancelEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFinishing:Z

    return p1
.end method

.method static synthetic access$6202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    return p1
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->updateIconColor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private cancelAllAnimators()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCircleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mIconAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewShrinker"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-string v0, "mCircleAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCircleAnimator:mCircleRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "mAlphaAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAlphaAnimator:mAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "mTranslateAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewAnimator:mPreviewScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "mPreviewShrinker"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviewShrinker:mPreviewClipRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private checkIfShaderReady()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsLockscreenRotatable:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    if-eqz v2, :cond_3

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v10

    const/4 v3, 0x2

    if-eq v10, v3, :cond_2

    const/4 v3, 0x3

    if-ne v10, v3, :cond_3

    :cond_2
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x0

    move-object v3, v0

    move-object v8, v2

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "KeyguardCircleAffordanceView"

    const-string v5, "OOM while creating camera preview bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private dispatchCancelEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFinishing:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFinishing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->updateCircleColor()V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawPreviewCircle(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method private endMotion(FF)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    sub-float v1, p2, v1

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDeviceInteractive:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealOrVeil(FF)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private getAnimatorToRadius(F)Landroid/animation/ValueAnimator;
    .locals 4

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartValue:F

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleWillBeHidden:Z

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$32;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$32;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getCurrentVelocity(FF)F
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    sub-float v3, p2, v3

    float-to-double v4, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v5, v0, v2

    mul-float v6, v1, v3

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    return v5
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 7

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLocationInWindow([I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v2, v0, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTempPoint:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method private getRtAnimatorToRadius(F)Landroid/animation/Animator;
    .locals 2

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    invoke-direct {v0, v1, p1}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    return-object v0
.end method

.method private initAnimatedValues()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScale:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initHwProperties()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCenterX:Landroid/graphics/CanvasProperty;

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCircleRadius:Landroid/graphics/CanvasProperty;

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isInCallForOnlyTablet()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private revealOrVeil(FF)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getCurrentVelocity(FF)F

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    const-string v2, "KeyguardCircleAffordanceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "revealOrVeil currentVelocity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0x3a860000    # -4000.0f

    cmpl-float v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isInCallForOnlyTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealWithCurrentVelocity(F)V

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    neg-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->veilWithCurrentVelocity(F)V

    :goto_0
    return-void
.end method

.method private revealWithCurrentVelocity(F)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColorRevealer(FF)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimatorInSecured()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->startPhoneLaunchAnimationInSecured()V

    :goto_0
    return-void
.end method

.method private setArrowImageAlpha(I)V
    .locals 0

    return-void
.end method

.method private setCircleRadius(FZZ)V
    .locals 11

    const-string v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleWillBeHidden:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    cmpl-float v4, p1, v1

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eq v0, v4, :cond_4

    if-nez p3, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    if-nez v5, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_5

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->updateIconColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    if-eqz v4, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleWillBeHidden:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aget-object v7, v6, v3

    const/4 v8, 0x2

    new-array v8, v8, [F

    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartValue:F

    add-float/2addr v9, v1

    aput v9, v8, v3

    aput p1, v8, v2

    invoke-virtual {v7, v8}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto/16 :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_8
    const-wide/16 v6, 0xfa

    if-nez p2, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    sub-float/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x42a00000    # 80.0f

    mul-float/2addr v9, v8

    float-to-long v6, v9

    const-wide/16 v9, 0xc8

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_9
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLeft()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getTop()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    invoke-static {v3, v8, v9, v10, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$31;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v3, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    :cond_a
    :goto_4
    return-void
.end method

.method private setDCircleAlphaAnimator(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    goto :goto_0

    :cond_0
    const/16 v1, 0x59

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    :goto_1
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDCircleAlphaAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    aput v2, v1, v0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setDCircleAlphaAnimatorInSecured()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mDCircleAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private setDCircleAnimator(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(ZZ)V

    return-void
.end method

.method private setDCircleAnimator(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    :goto_0
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDCircleAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    const-wide/16 v1, 0x96

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x15e

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineInOut33:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewAlphaAnimator(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaStart:I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    goto :goto_0

    :cond_0
    const/16 v1, 0x59

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEnd:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaStart:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEnd:I

    :goto_1
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewAlphaAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaStart:I

    aput v2, v1, v0

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEnd:I

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewAlphaShrinker()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewAnimator(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewScaleAnimator(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaAnimator(Z)V

    return-void
.end method

.method private setPreviewClipRect(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private setPreviewColor(F)V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isSecure()Z

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    div-float v0, p1, v0

    :goto_0
    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    sub-float v0, p1, v0

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    sub-float/2addr v4, v5

    div-float/2addr v0, v4

    add-float/2addr v0, v3

    div-float/2addr v0, v2

    :goto_1
    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_2

    :cond_3
    const v0, 0x3e4ccccd    # 0.2f

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    return-void
.end method

.method private setPreviewColorRevealer(FF)V
    .locals 3

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewColorRevealer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewScaleAnimator(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScale:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleStart:F

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleStart:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    :goto_0
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewScaleAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleStart:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleStart:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEnd:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setPreviewShrinker(Z)V
    .locals 3

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewShrinker:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Lcom/samsung/android/graphics/spr/animation/interpolator/CubicEaseIn;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private showHidePreview(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startRtAlphaFadeIn()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    new-instance v1, Landroid/view/RenderNodeAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    const/4 v3, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    invoke-virtual {v1, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    :cond_0
    return-void
.end method

.method private startRtCircleFadeOut(J)V
    .locals 4

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHwCirclePaint:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateCircleColor()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxCircleSize:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartRadius:F

    sub-float/2addr v3, v4

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateIconColor()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMinBackgroundRadius:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mNormalColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInverseColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private veilWithCurrentVelocity(F)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewScaleAnimator(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public cancelDAAffordance()V
    .locals 0

    return-void
.end method

.method public finishAnimation(FLjava/lang/Runnable;)V
    .locals 9

    const-string v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFinishing:Z

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleStartRadius:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSupportHardware:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initHwProperties()V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getRtAnimatorToRadius(F)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startRtAlphaFadeIn()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getAnimatorToRadius(F)Landroid/animation/ValueAnimator;

    move-result-object v2

    :goto_0
    move-object v8, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    move-object v3, v8

    move v5, v1

    move v6, p1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$30;

    invoke-direct {v2, p0, p2, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$30;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;F)V

    invoke-virtual {v8, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/Animator;->start()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getTop()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    invoke-static {v0, v2, v3, v4, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    move v5, v1

    move v6, p1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSupportHardware:Z

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->startRtCircleFadeOut(J)V

    :cond_1
    return-void
.end method

.method public getCircleRadius()F
    .locals 2

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    :goto_0
    return v0
.end method

.method public getRestingAlpha()F
    .locals 2

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRestingAlpha:F

    :goto_0
    return v0
.end method

.method public getShaderPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    return v0
.end method

.method public init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public instantFinishAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "GED"

    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleRadius:F

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    return-void
.end method

.method public isPlayingHintAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return v0
.end method

.method public isWaitingLaunchAppInSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07021a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchBoundary:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawCircle(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSupportHardware:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    const-string v0, "SEP"

    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxCircleSize:F

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isInCallForOnlyTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->checkIfShaderReady()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v1
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->performClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public releaseShader()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardCircleAffordanceView"

    const-string/jumbo v1, "releaseShader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setAlpha(F)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-void
.end method

.method public setCircleRadius(FZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCircleRadius(FZZ)V

    return-void
.end method

.method public setCircleRadiusWithoutAnimation(F)V
    .locals 2

    const-string v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCircleRadius(FZZ)V

    :cond_0
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 7

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p8

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v7, "mIconAlphaAnimator"

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    const v6, 0x433f4000    # 191.25f

    mul-float/2addr v6, p1

    float-to-int v6, v6

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez p2, :cond_2

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(I)V

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setArrowImageAlpha(I)V

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-object/from16 v5, p7

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v8, v9, v4

    aput v6, v9, v5

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$24;

    invoke-direct {v5, v0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$24;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p7, :cond_4

    if-eqz v3, :cond_3

    iget-object v9, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    iget-object v9, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_1
    move-object v5, v9

    goto :goto_2

    :cond_4
    move-object/from16 v5, p7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, -0x1

    cmp-long v9, p3, v9

    if-nez v9, :cond_5

    sub-int v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v9, 0x43480000    # 200.0f

    mul-float/2addr v9, v2

    float-to-long v9, v9

    goto :goto_3

    :cond_5
    move-wide/from16 v9, p3

    :goto_3
    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide/from16 v11, p5

    invoke-virtual {v4, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz v1, :cond_6

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_4
    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 15

    move-object v9, p0

    move-object/from16 v10, p6

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-object v0, v9

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v7, p5

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    move/from16 v0, p1

    :goto_0
    move-wide/from16 v13, p3

    move-object/from16 v8, p5

    goto/16 :goto_5

    :cond_0
    iget-object v0, v9, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {v9, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget-boolean v0, v9, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mLaunchingAffordance:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move/from16 v0, p1

    :goto_1
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, v0, v2

    float-to-int v3, v3

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez p2, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    invoke-virtual {v9, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v6, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, v9, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;

    invoke-direct {v8, v9, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, v9, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_5

    cmpl-float v1, v0, v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_2
    move-object v8, v1

    goto :goto_3

    :cond_5
    move-object/from16 v8, p5

    :goto_3
    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, -0x1

    cmp-long v1, p3, v11

    if-nez v1, :cond_6

    sub-int v1, v6, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long v1, v2

    move-wide v13, v1

    goto :goto_4

    :cond_6
    move-wide/from16 v13, p3

    :goto_4
    invoke-virtual {v7, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_7

    invoke-direct {v9, v10}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    :goto_5
    return-void
.end method

.method public setImageScale(FZ)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 3

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    :goto_0
    if-nez p2, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$22;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$22;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_3

    const-string v1, "GED"

    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    move-object p5, v1

    :cond_3
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e4ccccc    # 0.19999999f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long p3, v2

    :cond_4
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method public setIsShortcutForCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    return-void
.end method

.method public setLaunchingAffordance(Z)V
    .locals 2

    const-string v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mLaunchingAffordance:Z

    :cond_0
    return-void
.end method

.method public setPreviewView(I)V
    .locals 3

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewView: mRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 4

    const-string v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewView: mRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",preview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->checkIfShaderReady()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mLaunchingAffordance:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    nop

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setRestingAlpha(F)V
    .locals 2

    const-string v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRestingAlpha:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    :cond_0
    return-void
.end method

.method public setRight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    return-void
.end method

.method public setShortcutForPhone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsShortcutForPhone:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    return-void
.end method

.method public startHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHintAnimationPhase1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mCiradius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public startHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "KeyguardCircleAffordanceView"

    const-string/jumbo v1, "startHintAnimationPhase2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAnimator(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
