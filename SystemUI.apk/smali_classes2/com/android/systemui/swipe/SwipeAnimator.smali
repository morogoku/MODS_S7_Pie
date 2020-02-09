.class public Lcom/android/systemui/swipe/SwipeAnimator;
.super Ljava/lang/Object;
.source "SwipeAnimator.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;,
        Lcom/android/systemui/swipe/SwipeAnimator$Direction;
    }
.end annotation


# instance fields
.field private mAffordancePivotX:I

.field private mAffordancePivotY:I

.field private mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

.field private mBottomViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceOut:Lcom/android/systemui/interpolator/BounceEaseOut;

.field private mClockView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentNotiScale:F

.field private mDexAnimSet:Landroid/animation/AnimatorSet;

.field private mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDistance:D

.field private mFloatingShortcutView:Landroid/view/View;

.field private mFullModeStartTime:J

.field private mFullScreenAnimSet:Landroid/animation/AnimatorSet;

.field private mFullScreenModeEnabled:Z

.field private mIconSlotView:Landroid/view/View;

.field private mIndicationAreaView:Landroid/view/View;

.field protected mIntercepting:Z

.field private mIrisTextPreview:Landroid/view/View;

.field private mIsDynamicLockEnabled:Z

.field private mIsFullScreenModeShown:Z

.field private mIsTouching:Z

.field private mLeftShortcutView:Landroid/view/View;

.field private mLockIconView:Landroid/view/View;

.field private mLongPressAllowHeight:I

.field private mLongPressCallback:Ljava/lang/Runnable;

.field private mNonSwipeMode:I

.field private mNotificationPanelView:Landroid/view/View;

.field private mNotificationStackScrollerView:Landroid/view/View;

.field private mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

.field private mRestoreAnimSet:Landroid/animation/AnimatorSet;

.field private mRightShortcutView:Landroid/view/View;

.field private mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

.field private final mSineIn33:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private final mSineOut33:Landroid/view/animation/Interpolator;

.field private mStatusBarView:Landroid/view/View;

.field private mSwipeUnlockRadius:I

.field private mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

.field private mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchSlop:I

.field private mUnlockExecuted:Z

.field private mUnlockViewHideAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    new-instance v1, Lcom/android/systemui/interpolator/BounceEaseOut;

    invoke-direct {v1}, Lcom/android/systemui/interpolator/BounceEaseOut;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBounceOut:Lcom/android/systemui/interpolator/BounceEaseOut;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iput v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/SwipeAnimator$1;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineInOut80:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDexAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullModeStartTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    new-instance v1, Lcom/android/systemui/interpolator/BounceEaseOut;

    invoke-direct {v1}, Lcom/android/systemui/interpolator/BounceEaseOut;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBounceOut:Lcom/android/systemui/interpolator/BounceEaseOut;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iput v5, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/SwipeAnimator$1;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mShortcutSwipingAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v4, v5, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineInOut80:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDexAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullModeStartTime:J

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    const v1, 0x7f0a03a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    const v1, 0x7f0a0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-direct {p0, p3}, Lcom/android/systemui/swipe/SwipeAnimator;->setBottomViewsList(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object p4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-virtual {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->initDimens()V

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setChildViewPivot()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/swipe/SwipeAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/swipe/SwipeAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/swipe/SwipeAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/swipe/SwipeAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/swipe/SwipeAnimator;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullModeStartTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    return-object v0
.end method

.method private getAngle(DDDD)D
    .locals 8

    sub-double v0, p5, p1

    sub-double v2, p7, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;
    .locals 6

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getNonSwipeModeAngle()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v2, v0

    cmpl-double v2, p1, v2

    if-gez v2, :cond_4

    const-wide v2, -0x3f99800000000000L    # -180.0

    add-double/2addr v2, v0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-double v2, v0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_1

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_1

    sget-object v2, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object v2

    :cond_1
    const-wide v2, -0x3fa9800000000000L    # -90.0

    sub-double v4, v2, v0

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_2

    add-double/2addr v2, v0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_2

    sget-object v2, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object v2

    :cond_2
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v4, v2, v0

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_3

    add-double/2addr v2, v0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_3

    sget-object v2, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object v2

    :cond_3
    sget-object v2, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object v2

    :cond_4
    :goto_0
    sget-object v2, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    return-object v2
.end method

.method private initDynamicLock()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getNonSwipeMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    const-string v0, "SwipeAnimator"

    const-string v1, "mNonSwipeMode: 0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isAnimationRunning()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isTapAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resetChildViewVI()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v0

    if-gt v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v0

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iput v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLockIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_8

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_8
    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    :goto_1
    return-void
.end method

.method private resetDynamicLock()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    return-void
.end method

.method private restoreChildViewVI()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v5, [F

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v10

    aput v10, v9, v8

    aput v7, v9, v1

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v5, [F

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v10

    aput v10, v9, v8

    aput v7, v9, v1

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v5, [F

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v9, v8

    aput v7, v9, v1

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLockIconView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLockIconView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v7, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_7
    :goto_1
    const-string v0, "SwipeAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreChildViewVI(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBottomViewsList(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLockIconView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockSecureIcon()Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getUSimCarrierTextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getEmergencyButtonView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    return-void
.end method

.method private setChildViewPivot()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v1, v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    iget v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_4
    goto :goto_3

    :cond_5
    return-void
.end method

.method private setFullScreenMode(Z)V
    .locals 13

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "KeyguardFingerPrintSwipe"

    const-string v2, "setFullScreenMode is true. FP will be stop!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_0

    :cond_0
    const-string v1, "KeyguardFingerPrintSwipe"

    const-string v2, "setFullScreenMode is false. FP will be start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isTapAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    const-wide/16 v3, 0x96

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x12c

    :goto_2
    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/swipe/SwipeAnimator$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/swipe/SwipeAnimator$2;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    const v3, 0x3f733333    # 0.95f

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v9, v8, [F

    iget-object v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F

    move-result v10

    const/4 v11, 0x0

    aput v10, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F

    move-result v10

    aput v10, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v10, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v9, v11

    const/4 v10, 0x0

    if-eqz p1, :cond_7

    move v12, v10

    goto :goto_4

    :cond_7
    move v12, v1

    :goto_4
    aput v12, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F

    move-result v12

    aput v12, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleY()F

    move-result v12

    aput v12, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F

    move-result v12

    aput v12, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleY()F

    move-result v12

    aput v12, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v9, v11

    if-eqz p1, :cond_9

    move v12, v10

    goto :goto_5

    :cond_9
    move v12, v1

    :goto_5
    aput v12, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v9, v11

    if-eqz p1, :cond_a

    move v12, v10

    goto :goto_6

    :cond_a
    move v12, v1

    :goto_6
    aput v12, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F

    move-result v12

    aput v12, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleY()F

    move-result v12

    aput v12, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v9, v11

    if-eqz p1, :cond_b

    move v12, v10

    goto :goto_7

    :cond_b
    move v12, v1

    :goto_7
    aput v12, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F

    move-result v12

    aput v12, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v8, [F

    iget-object v12, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getScaleY()F

    move-result v12

    aput v12, v9, v11

    aput v3, v9, v2

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v8, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v8, v11

    if-eqz p1, :cond_d

    move v1, v10

    nop

    :cond_d
    aput v1, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v11

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAnimatorCallback:Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    iget-boolean v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->onFullScreenMode(Z)V

    :cond_f
    return-void
.end method

.method private showTapAffordanceAnimation()V
    .locals 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/SwipeAnimator$3;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/swipe/SwipeAnimator$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/swipe/SwipeAnimator$4;-><init>(Lcom/android/systemui/swipe/SwipeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const v7, 0x3f733333    # 0.95f

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v6, v8

    const v9, 0x3f7d70a4    # 0.99f

    aput v9, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v2, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v9, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    aput v9, v6, v8

    aput v7, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v5, [F

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v10

    aput v10, v9, v8

    aput v7, v9, v1

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v5, [F

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v10

    aput v10, v9, v8

    aput v7, v9, v1

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateChildViewVI(D)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x0

    iget v8, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    sub-double v8, v8, p1

    iget v10, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v1, v6

    iget v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double v6, v6, p1

    iget v8, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide v8, 0x3fc9999980000000L    # 0.19999998807907104

    mul-double/2addr v6, v8

    const-wide v10, 0x3fe99999a0000000L    # 0.800000011920929

    add-double/2addr v6, v10

    double-to-float v3, v6

    iget v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v6, v6

    sub-double v6, v6, p1

    iget v12, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v12, v12

    div-double/2addr v6, v12

    mul-double/2addr v6, v8

    add-double/2addr v10, v6

    double-to-float v4, v10

    const-wide v6, 0x3fecccccc0000000L    # 0.8999999761581421

    iget v8, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v8, v8

    iget v10, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v10, v10

    sub-double v10, p1, v10

    sub-double/2addr v8, v10

    iget v10, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    const-wide v10, 0x3fb9999a00000000L    # 0.10000002384185791

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, 0x3f666666    # 0.9f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mClockView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIrisTextPreview:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleY(F)V

    iput v4, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationStackScrollerView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v6, v6

    cmpl-double v6, p1, v6

    if-lez v6, :cond_7

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mLeftShortcutView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mRightShortcutView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_7

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    iget-object v7, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/animation/Animator;

    iget-object v9, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v12, v11, [F

    iget-object v13, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mStatusBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    aput v2, v12, v7

    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    new-array v8, v7, [Landroid/animation/Animator;

    iget-object v9, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mLockIconView:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v11, [F

    iget-object v13, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mLockIconView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v14

    aput v2, v12, v7

    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mBottomViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    new-array v10, v7, [Landroid/animation/Animator;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v11, [F

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v15

    aput v15, v13, v14

    aput v2, v13, v7

    invoke-static {v8, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v10, v14

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    new-array v8, v7, [Landroid/animation/Animator;

    iget-object v9, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v11, [F

    iget-object v12, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mIndicationAreaView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v14

    aput v2, v11, v7

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v8, v14

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_6
    iget-object v2, v0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "SwipeAnimator state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCurrentNotiScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentNotiScale()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mCurrentNotiScale:F

    return v0
.end method

.method public initDimens()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotX:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mAffordancePivotY:I

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressAllowHeight:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    return-void
.end method

.method public isViRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v9, p0

    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_1

    return v10

    :cond_1
    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v13, v0, 0xff

    const/4 v0, 0x6

    if-eq v13, v0, :cond_e

    packed-switch v13, :pswitch_data_0

    move-object v2, v9

    move-wide/from16 v16, v11

    move v3, v13

    goto/16 :goto_7

    :pswitch_0
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    if-eqz v0, :cond_3

    return v10

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    sub-float v0, v7, v0

    float-to-int v5, v0

    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    sub-float v0, v8, v0

    float-to-int v6, v0

    int-to-double v0, v5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double v14, v6

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v0, v0

    iget-wide v2, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    iget-object v1, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_c

    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    if-eqz v0, :cond_c

    const/16 v14, 0x46

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v15

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    float-to-double v1, v0

    iget v0, v9, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    move-wide/from16 v16, v11

    float-to-double v10, v0

    move/from16 v18, v5

    move/from16 v19, v6

    float-to-double v5, v7

    move/from16 v20, v13

    float-to-double v12, v8

    move-object v0, v9

    move v9, v3

    move-wide v3, v10

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v18, v7

    move/from16 v19, v8

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/swipe/SwipeAnimator;->getAngle(DDDD)D

    move-result-wide v0

    if-gt v15, v14, :cond_6

    if-le v9, v14, :cond_5

    move v3, v9

    move-object/from16 v2, p0

    goto :goto_0

    :cond_5
    move v3, v9

    move-object/from16 v2, p0

    iget v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_10

    sget-object v4, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->TAP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto/16 :goto_2

    :cond_6
    move v3, v9

    move-object/from16 v2, p0

    :goto_0
    iget-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    sget-object v5, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->TAP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-eq v4, v5, :cond_7

    iget-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    sget-object v5, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-ne v4, v5, :cond_10

    iget-wide v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    int-to-double v6, v14

    sub-double/2addr v4, v6

    iput-wide v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget-wide v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/swipe/SwipeAnimator;->updateChildViewVI(D)V

    goto/16 :goto_2

    :cond_7
    iget v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    if-le v15, v14, :cond_8

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v4, v5}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    :cond_8
    iget v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    if-le v15, v14, :cond_9

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v4, v5}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    :cond_9
    iget v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_a

    if-le v3, v14, :cond_a

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v4, v5}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->UP:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    :cond_a
    iget v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_b

    if-le v3, v14, :cond_b

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->getDirection(D)Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    invoke-virtual {v4, v5}, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    :cond_b
    iget-wide v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    int-to-double v6, v14

    sub-double/2addr v4, v6

    iput-wide v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    sget-object v4, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    iput-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    goto :goto_1

    :cond_c
    move v10, v5

    move/from16 v18, v7

    move/from16 v19, v8

    move-object v2, v9

    move-wide/from16 v16, v11

    move/from16 v20, v13

    move v11, v6

    :goto_1
    iget-object v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-eqz v0, :cond_d

    iget-object v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    sget-object v1, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-ne v0, v1, :cond_10

    :cond_d
    iget-wide v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->updateChildViewVI(D)V

    goto/16 :goto_2

    :cond_e
    :pswitch_1
    move-object v2, v9

    move-wide/from16 v16, v11

    move/from16 v20, v13

    goto/16 :goto_3

    :pswitch_2
    move-object v2, v9

    move-wide/from16 v16, v11

    move/from16 v20, v13

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    iput-boolean v1, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->initDynamicLock()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->setChildViewPivot()V

    iget v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_10

    iget-boolean v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-nez v0, :cond_10

    iget-object v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    iget-object v1, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v3, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressAllowHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    iget-object v0, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mContext:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorAreaInDisplay()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownX:F

    float-to-int v4, v4

    iget v5, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchDownY:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "KeyguardFingerPrintSwipe"

    const-string v5, "mLongPressCallback canceled. Touch position is FP-InDisplay area!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_f
    iget-object v1, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    iget-object v3, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :cond_10
    :goto_2
    move/from16 v3, v20

    goto :goto_7

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->setIntercept(Z)V

    iget-object v3, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    iget-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v3, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    if-eqz v3, :cond_11

    invoke-direct {v2, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V

    :cond_11
    iget-wide v3, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v5, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mSwipeUnlockRadius:I

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-lez v3, :cond_13

    move/from16 v3, v20

    if-eq v3, v0, :cond_14

    const/4 v0, 0x3

    if-ne v3, v0, :cond_12

    goto :goto_4

    :cond_12
    move v0, v1

    goto :goto_5

    :cond_13
    move/from16 v3, v20

    :cond_14
    :goto_4
    const/4 v0, 0x1

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->isAnimationRunning()Z

    move-result v4

    if-nez v4, :cond_17

    iget-boolean v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-nez v4, :cond_17

    iget-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_17

    iget-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-eqz v4, :cond_15

    iget-object v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDirection:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    sget-object v5, Lcom/android/systemui/swipe/SwipeAnimator$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeAnimator$Direction;

    if-ne v4, v5, :cond_17

    :cond_15
    iget-wide v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mDistance:D

    iget v6, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mTouchSlop:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetChildViewVI()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->showTapAffordanceAnimation()V

    goto :goto_6

    :cond_16
    if-eqz v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->restoreChildViewVI()V

    :cond_17
    :goto_6
    iget-boolean v4, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    if-eqz v4, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetDynamicLock()V

    :cond_18
    iput-boolean v1, v2, Lcom/android/systemui/swipe/SwipeAnimator;->mIsTouching:Z

    nop

    :goto_7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_19

    const-string v4, "SwipeAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent(): Touch processing took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v4, 0x1

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUnlockExecuted()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    if-eqz v0, :cond_0

    const-string v0, "SwipeAnimator"

    const-string v1, "onUnlockExecuted(): Already Call Unlock!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mRestoreAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimShrinkSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mTapAnimRestoreSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockViewHideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mPreviewFocusAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->resetChildViewVI()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mUnlockExecuted:Z

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFullScreenModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsFullScreenModeShown:Z

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mNonSwipeMode:I

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIsDynamicLockEnabled:Z

    return-void
.end method

.method public setFloatingShortcutView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mFloatingShortcutView:Landroid/view/View;

    return-void
.end method

.method public setIconSlotView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIconSlotView:Landroid/view/View;

    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator;->mIntercepting:Z

    return-void
.end method
