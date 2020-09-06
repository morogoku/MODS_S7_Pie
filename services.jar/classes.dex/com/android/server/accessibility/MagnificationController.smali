.class public Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$SettingsBridge;,
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final INVALID_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field public static final MAX_SCALE:F = 5.0f

.field public static final MIN_SCALE:F = 1.0f

.field private static final MSG_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x3

.field private static final MSG_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x4

.field private static final MSG_ON_USER_CONTEXT_CHANGED:I = 0x5

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x2

.field private static final MSG_SEND_SPEC_TO_ANIMATION:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mHandler:Landroid/os/Handler;

.field private mIdOfLastServiceToMagnify:I

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMainThreadId:J

.field mRegistered:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private final mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field private mUserId:I

.field private final mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .registers 13

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v8, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;-><init>(Landroid/content/ContentResolver;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    iput-object p4, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    iput-object p7, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$SettingsBridge;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method private getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentScale()F

    move-result v0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetY()F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    neg-float v3, v1

    float-to-int v3, v3

    neg-float v4, v2

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    return-void
.end method

.method private getMinOffsetXLocked()F
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getMinOffsetYLocked()F
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getSentOffsetX()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method private getSentOffsetY()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method private getSentScale()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method private onMagnificationChangedLocked()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(Landroid/graphics/Region;FFF)V

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    :cond_20
    return-void
.end method

.method private onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    :cond_31
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private onScreenTurnedOff()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestRectangleOnScreen(IIII)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    if-nez v2, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    sub-int v3, p3, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_35

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-nez v3, :cond_2e

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    goto :goto_33

    :cond_2e
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v4

    int-to-float v4, v4

    :goto_33
    move v3, v4

    goto :goto_4a

    :cond_35
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v3, :cond_3f

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    :goto_3e
    goto :goto_4a

    :cond_3f
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le p3, v3, :cond_49

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    goto :goto_3e

    :cond_49
    move v3, v5

    :goto_4a
    sub-int v4, p4, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v4, v6, :cond_58

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    int-to-float v5, v4

    :goto_57
    goto :goto_6d

    :cond_58
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v4, :cond_62

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, p2, v4

    int-to-float v5, v4

    goto :goto_57

    :cond_62
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le p4, v4, :cond_6c

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p4, v4

    int-to-float v5, v4

    goto :goto_57

    :cond_6c
    nop

    :goto_6d
    move v4, v5

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v5

    mul-float v6, v3, v5

    mul-float v7, v4, v5

    const/4 v8, -0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(FFI)V

    monitor-exit v0

    return-void

    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method private resetLocked(Z)Z
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    :cond_16
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    return v1
.end method

.method private sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    .registers 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    goto :goto_1f

    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1f
    return-void
.end method

.method private setScaleAndCenterLocked(FFFZI)Z
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->updateMagnificationSpecLocked(FFF)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1, p4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    if-eq p5, v1, :cond_14

    iput p5, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    :cond_14
    return v0
.end method

.method private unregisterInternalLocked()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    :cond_1c
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    return-void
.end method

.method private updateCurrentSpecWithOffsetsLocked(FF)Z
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v3, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v0, 0x1

    :cond_19
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    move-result v3

    invoke-static {p2, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v2, v3, Landroid/view/MagnificationSpec;->offsetY:F

    const/4 v0, 0x1

    :cond_30
    return v0
.end method

.method private updateMagnificationSpecLocked(FFF)Z
    .registers 9

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result p2

    :cond_a
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result p3

    :cond_14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result p1

    :cond_1e
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->scale:F

    const/4 v0, 0x1

    :cond_36
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    mul-float v4, p2, v1

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    mul-float v3, p3, v1

    sub-float/2addr v4, v3

    invoke-direct {p0, v2, v4}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_64

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    :cond_64
    return v0
.end method


# virtual methods
.method public getCenterX()F
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getCenterY()F
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getIdOfLastServiceToMagnify()I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method public getMagnificationBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getOffsetX()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getPersistedScale()F
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    goto :goto_46

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/server/accessibility/MagnificationController;->requestRectangleOnScreen(IIII)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_46

    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Region;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_46

    :pswitch_31
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    goto :goto_46

    :pswitch_35
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3b

    move v1, v2

    nop

    :cond_3b
    move v0, v1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MagnificationSpec;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    nop

    :goto_46
    return v2

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_35
        :pswitch_31
        :pswitch_1f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public isMagnifying()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isRegisteredLocked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    return v0
.end method

.method public magnificationRegionContains(FF)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public offsetMagnifiedRegion(FFI)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v2, p2

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    :cond_1c
    const/4 v3, -0x1

    if-eq p3, v3, :cond_21

    iput p3, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    :cond_21
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public persistScale()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/MagnificationController$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$2;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public register()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->register()V

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(Landroid/graphics/Region;)V

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public reset(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method resetIfNeeded(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_f
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setCenter(FFZI)Z
    .registers 13

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_a
    const/high16 v3, 0x7fc00000    # Float.NaN

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method setForceShowMagnifiableBounds(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setForceShowMagnifiableBounds(Z)V

    :cond_9
    return-void
.end method

.method public setScale(FFFZI)Z
    .registers 26

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_5
    iget-boolean v0, v7, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_7d

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :try_start_a
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_c

    return v0

    :catchall_c
    move-exception v0

    move/from16 v9, p1

    goto/16 :goto_81

    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40a00000    # 5.0f

    move/from16 v2, p1

    :try_start_17
    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_7b

    move v9, v0

    :try_start_1c
    iget-object v0, v7, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget-object v1, v7, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object v10, v1

    iget v1, v10, Landroid/view/MagnificationSpec;->scale:F

    move v11, v1

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v10, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-float v12, v1, v11

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v2, v10, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float v13, v1, v11

    iget v1, v10, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v1, p2, v1

    div-float v14, v1, v11

    iget v1, v10, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v1, p3, v1

    div-float v15, v1, v11

    sub-float v1, v12, v14

    div-float v2, v11, v9

    mul-float v16, v1, v2

    sub-float v1, v13, v15

    div-float v2, v11, v9

    mul-float v17, v1, v2

    add-float v18, v14, v16

    add-float v19, v15, v17

    move/from16 v6, p5

    iput v6, v7, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    move-object v1, v7

    move v2, v9

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result v1

    monitor-exit v8

    return v1

    :catchall_7b
    move-exception v0

    goto :goto_80

    :catchall_7d
    move-exception v0

    move/from16 v2, p1

    :goto_80
    move v9, v2

    :goto_81
    monitor-exit v8
    :try_end_82
    .catchall {:try_start_1c .. :try_end_82} :catchall_83

    throw v0

    :catchall_83
    move-exception v0

    goto :goto_81
.end method

.method public setScaleAndCenter(FFFZI)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_a
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setUserId(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-eq v0, p1, :cond_18

    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1

    :cond_18
    :goto_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationController{mCurrentMagnificationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIdOfLastServiceToMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnregisterPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    goto :goto_13

    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z

    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
