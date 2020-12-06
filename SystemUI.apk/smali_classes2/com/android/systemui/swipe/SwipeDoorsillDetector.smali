.class public Lcom/android/systemui/swipe/SwipeDoorsillDetector;
.super Ljava/lang/Object;
.source "SwipeDoorsillDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;,
        Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

.field private mDistance:D

.field private mIntercepting:Z

.field private mIsDynamicLockEnabled:Z

.field private mIsMultiTouch:Z

.field private mIsTouching:Z

.field private mNonSwipeMode:I

.field private mStartX:F

.field private mStartY:F

.field private mSwipeUnlockRadius:I

.field private mTouchSlop:I

.field private mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

.field private mUnlockExecuted:Z

.field private mUserActivityInvokedTime:J

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUserActivityInvokedTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUserActivityInvokedTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->initDimens()V

    return-void
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

.method private getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;
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

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object v2

    :cond_1
    const-wide v2, -0x3fa9800000000000L    # -90.0

    sub-double v4, v2, v0

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_2

    add-double/2addr v2, v0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_2

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object v2

    :cond_2
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v4, v2, v0

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_3

    add-double/2addr v2, v0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_3

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object v2

    :cond_3
    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object v2

    :cond_4
    :goto_0
    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    return-object v2
.end method

.method private initDynamicLock()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getNonSwipeMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    :cond_0
    return-void
.end method

.method private isLoggableEvent(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

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

.method private isUnlockPossible()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    iget v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "SwipeDoorsillDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUnlockPossible(): mStartX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mStartY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mIsMultiTouch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mUnlockExecuted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDeviceInteractive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method static synthetic lambda$unlockExecute$0()V
    .locals 0

    return-void
.end method

.method private unlockExecute()V
    .locals 2

    const-string v0, "SwipeDoorsillDetector"

    const-string v1, "unlockExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/swipe/-$$Lambda$SwipeDoorsillDetector$sFp3plxk2SNRJzZFusytZhWK34c;->INSTANCE:Lcom/android/systemui/swipe/-$$Lambda$SwipeDoorsillDetector$sFp3plxk2SNRJzZFusytZhWK34c;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwipedUnlockRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onUnlock()V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->onUnlockExecuted()V

    return-void
.end method

.method private userActivityForMove()V
    .locals 8

    const-wide/16 v0, 0x9c4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x9c4

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUserActivityInvokedTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v4}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->userActivity()V

    iput-wide v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUserActivityInvokedTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public initDimens()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v10, v0, 0xff

    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {v9, v10}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SwipeDoorsillDetector"

    const-string v2, "onTouchEvent(): Unlock is started already"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    if-nez v0, :cond_3

    invoke-direct {v9, v10}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SwipeDoorsillDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent(): mIntercepting is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {v9, v10}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SwipeDoorsillDetector"

    const-string v1, "isSupportSimPermDisabled!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v11

    :cond_5
    const/4 v0, 0x5

    if-eq v10, v0, :cond_16

    packed-switch v10, :pswitch_data_0

    :goto_0
    move/from16 v17, v10

    goto/16 :goto_4

    :pswitch_0
    const-string v0, "SwipeDoorsillDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent(): ACTION_CANCEL mDistance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v11, :cond_6

    iput-boolean v1, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string v0, "SwipeDoorsillDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent(): ACTION_CANCEL mIsMultiTouch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-boolean v1, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    if-nez v0, :cond_7

    return v1

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->userActivityForMove()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    sub-float/2addr v0, v1

    float-to-int v13, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    sub-float/2addr v0, v1

    float-to-int v14, v0

    int-to-double v0, v13

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double v4, v14

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    iget-boolean v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_10

    iget v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    if-eqz v0, :cond_10

    const/16 v15, 0x46

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    float-to-double v1, v0

    iget v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    float-to-double v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    move/from16 v16, v13

    float-to-double v12, v0

    move-object v0, v9

    move v11, v7

    move/from16 v17, v10

    move v10, v8

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getAngle(DDDD)D

    move-result-wide v0

    if-gt v11, v15, :cond_9

    if-le v10, v15, :cond_8

    goto :goto_1

    :cond_8
    iget v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->TAP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto/16 :goto_2

    :cond_9
    :goto_1
    iget-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    if-eqz v2, :cond_a

    iget-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    sget-object v3, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->TAP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    if-eq v2, v3, :cond_a

    iget-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    sget-object v3, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    if-ne v2, v3, :cond_18

    iget-wide v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    int-to-double v4, v15

    sub-double/2addr v2, v4

    iput-wide v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    goto/16 :goto_4

    :cond_a
    iget v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    if-le v11, v15, :cond_b

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v2, v3}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->LEFT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto :goto_2

    :cond_b
    iget v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    if-le v11, v15, :cond_c

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v2, v3}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->RIGHT:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto :goto_2

    :cond_c
    iget v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_d

    if-le v10, v15, :cond_d

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v2, v3}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->UP:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto :goto_2

    :cond_d
    iget v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_e

    if-le v10, v15, :cond_e

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->getDirection(D)Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-virtual {v2, v3}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->DOWN:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    goto :goto_2

    :cond_e
    iget-wide v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    int-to-double v4, v15

    sub-double/2addr v2, v4

    iput-wide v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    iput-object v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    :cond_f
    :goto_2
    goto/16 :goto_4

    :cond_10
    move/from16 v17, v10

    goto/16 :goto_4

    :pswitch_2
    move/from16 v17, v10

    const-string v0, "SwipeDoorsillDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent(): ACTION_UP (T/D/R)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->setIntercept(Z)V

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->userActivity()V

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    if-eqz v0, :cond_11

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    sget-object v2, Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;->SWIPE:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    if-ne v0, v2, :cond_14

    :cond_11
    iget-wide v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    iget v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    int-to-double v4, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_12

    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->onAffordanceTap()V

    goto :goto_3

    :cond_12
    iget v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    int-to-double v2, v0

    iget-wide v4, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isUnlockPossible()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "SwipeDoorsillDetector#unlockExecute"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->unlockExecute()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_13
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->reset()V

    :cond_14
    iput-boolean v1, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_15

    const/4 v1, 0x1

    nop

    :cond_15
    iput-boolean v1, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string v0, "SwipeDoorsillDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent(): ACTION_UP mIsMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_3
    move/from16 v17, v10

    iput-boolean v1, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDirection:Lcom/android/systemui/swipe/SwipeDoorsillDetector$Direction;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->initDynamicLock()V

    goto :goto_4

    :cond_16
    move/from16 v17, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_17

    const/4 v1, 0x1

    nop

    :cond_17
    iput-boolean v1, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string v0, "SwipeDoorsillDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent(): ACTION_POINTER_DOWN mIsMultiTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_18
    :goto_4
    iget-object v0, v9, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    iput v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mNonSwipeMode:I

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsDynamicLockEnabled:Z

    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    return-void
.end method
