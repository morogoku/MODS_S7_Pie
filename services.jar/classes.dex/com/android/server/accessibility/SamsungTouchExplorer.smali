.class Lcom/android/server/accessibility/SamsungTouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungTouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapSlop:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

.field private final mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mMultiFingerDetected:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

.field private mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private final mTempPoint:Landroid/graphics/Point;

.field private mTouchExplorationInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    const/16 v2, 0x400

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    new-instance v0, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    const/high16 v2, 0x200000

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method private clear()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_13
    return-void
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .registers 6

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-eq v0, v1, :cond_14

    packed-switch v0, :pswitch_data_52

    goto :goto_18

    :pswitch_a
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_18

    :pswitch_10
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_18

    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    nop

    :goto_18
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    return-void

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->isLastExploreWindowIsSIPType(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_27

    return v4

    :cond_27
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v3

    if-eqz v3, :cond_39

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v5

    if-ne v3, v5, :cond_43

    :cond_39
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_42

    return v1

    :cond_42
    return v4

    :cond_43
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_4c

    return v1

    :cond_4c
    const/4 v1, 0x0

    return v1
.end method

.method private computeInjectionAction(II)I
    .registers 6

    if-eqz p1, :cond_15

    packed-switch p1, :pswitch_data_24

    return p1

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    return v2

    :cond_10
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 v1, v1, 0x6

    return v1

    :cond_15
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    return v1

    :cond_1f
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 v1, v1, 0x5

    return v1

    :pswitch_data_24
    .packed-switch 0x5
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method

.method private endGestureDetection()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->resetMultiFingerGestureState()V

    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_22

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "STATE_GESTURE_DETECTING"

    return-object v0

    :pswitch_18
    const-string v0, "STATE_DELEGATING"

    return-object v0

    :pswitch_1b
    const-string v0, "STATE_DRAGGING"

    return-object v0

    :pswitch_1e
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_3
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_46

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_45

    :pswitch_10
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_25

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_45

    :pswitch_3a
    const-string v0, "SamsungTouchExplorer"

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void

    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_10
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .registers 14

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_33

    const-string v1, "SamsungTouchExplorer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    goto :goto_37

    :cond_33
    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    shl-int v0, v3, v1

    :goto_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_e4

    :pswitch_3f
    goto/16 :goto_e1

    :pswitch_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v1, v4, :cond_52

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_52
    goto/16 :goto_e1

    :pswitch_54
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-eq v1, v2, :cond_5d

    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_5d
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_e1

    :pswitch_62
    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v1, v2, :cond_68

    goto/16 :goto_e1

    :cond_68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    packed-switch v1, :pswitch_data_f6

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_e1

    :pswitch_78
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_ae

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v5, v2, v4

    sub-float v6, v1, v3

    float-to-double v7, v5

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    iget v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v9, v9

    cmpl-double v9, v7, v9

    if-lez v9, :cond_a9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v5, v9

    div-float v9, v6, v9

    invoke-virtual {p1, v10, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_a9
    const/4 v9, 0x2

    invoke-direct {p0, p1, v9, v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_e1

    :cond_ae
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_e1

    :pswitch_b7
    goto :goto_e1

    :pswitch_b8
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v1, v4, :cond_d3

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_d3
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_e1

    :pswitch_d6
    const-string v1, "SamsungTouchExplorer"

    const-string v2, "Dragging state can be reached only if two pointers are already down"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void

    :goto_e1
    return-void

    nop

    nop

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_b8
        :pswitch_62
        :pswitch_3f
        :pswitch_3f
        :pswitch_54
        :pswitch_41
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_b7
        :pswitch_78
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1ae

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_1ba

    goto/16 :goto_1b9

    :pswitch_17
    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    shl-int v8, v6, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    packed-switch v9, :pswitch_data_1c4

    move/from16 v18, v7

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v2

    if-eqz v2, :cond_120

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    goto/16 :goto_123

    :pswitch_3e
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v9

    if-eqz v9, :cond_51

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_79

    :cond_51
    iget-boolean v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v9, :cond_79

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v9

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float/2addr v9, v11

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v11

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v11, v12

    float-to-double v12, v9

    float-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    int-to-double v14, v14

    cmpg-double v14, v12, v14

    if-gez v14, :cond_76

    goto/16 :goto_129

    :cond_76
    invoke-direct {v0, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :cond_79
    :goto_79
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    invoke-virtual {v4, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v13

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v4, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v14

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v4, v12}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v15

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v4, v12}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v16

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    sub-float v10, v16, v17

    move/from16 v18, v7

    float-to-double v6, v13

    move/from16 v19, v10

    float-to-double v9, v14

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    float-to-double v9, v15

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v2, v19

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    iget v9, v9, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    int-to-double v9, v9

    cmpg-double v9, v6, v9

    if-gez v9, :cond_d1

    iget v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_d1

    goto :goto_129

    :cond_d1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_fa

    const/4 v9, 0x2

    iput v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    iput v5, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x43480000    # 200.0f

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    const/4 v10, 0x0

    invoke-direct {v0, v1, v10, v8, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_100

    :cond_fa
    const/4 v9, 0x4

    iput v9, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-direct {v0, v1, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    :goto_100
    goto :goto_129

    :pswitch_101
    move/from16 v18, v7

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v2

    if-eqz v2, :cond_111

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_129

    :cond_111
    iget-boolean v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    if-eqz v2, :cond_129

    invoke-direct {v0, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    const/4 v2, -0x1

    if-eq v5, v2, :cond_129

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_129

    :cond_120
    invoke-direct {v0, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :goto_123
    const/4 v2, 0x4

    iput v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-direct {v0, v1, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    :cond_129
    :goto_129
    goto/16 :goto_1b9

    :pswitch_12b
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v5, 0x1

    shl-int/2addr v5, v2

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v6

    if-eqz v6, :cond_148

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v6, v1, v5, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    goto :goto_14b

    :cond_148
    invoke-direct {v0, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :goto_14b
    iget-object v6, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v6

    if-nez v6, :cond_1b9

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto :goto_1b9

    :pswitch_159
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    const/high16 v2, 0x100000

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_17a

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_17a
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_187

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_187
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->firstTapDetected()Z

    move-result v2

    if-nez v2, :cond_1b9

    iget-boolean v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    if-nez v2, :cond_1b9

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$200(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v2

    if-nez v2, :cond_1a8

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v2

    const/4 v5, 0x1

    shl-int v6, v5, v2

    iget-object v7, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v7, v1, v5, v6, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    goto :goto_1b9

    :cond_1a8
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto :goto_1b9

    :cond_1ae
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    nop

    :cond_1b9
    :goto_1b9
    return-void

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_159
        :pswitch_12b
        :pswitch_17
    .end packed-switch

    :pswitch_data_1c4
    .packed-switch 0x1
        :pswitch_101
        :pswitch_3e
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v17

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v19

    const v12, 0x3f067b80

    move/from16 v4, v17

    move v5, v3

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    invoke-static/range {v4 .. v12}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v4

    return v4
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .registers 28

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez v1, :cond_b

    if-nez v2, :cond_b

    return-object v0

    :cond_b
    move-object/from16 v3, p0

    iget v4, v3, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-static {v5}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v22

    invoke-static {v5}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v23

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v5, :cond_41

    aget-object v7, v22, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v7, v23, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-ne v6, v4, :cond_3e

    aget-object v7, v23, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v9, v1

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v7, v23, v6

    iget v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v9, v2

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private sendAccessibilityEvent(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v2, 0x200

    if-eq p1, v2, :cond_29

    const/16 v2, 0x400

    if-eq p1, v2, :cond_25

    goto :goto_2d

    :cond_25
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_2d

    :cond_29
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    nop

    :cond_2d
    :goto_2d
    return-void
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_a
    if-ge v1, v2, :cond_23

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_20

    const/4 v6, 0x1

    shl-int/2addr v6, v5

    or-int/2addr v4, v6

    invoke-direct {p0, v3, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v6

    invoke-direct {p0, p1, v6, v4, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_24

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_21
    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_24
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .registers 10

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_9

    move-object v0, p1

    goto :goto_f

    :cond_9
    :try_start_9
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_d} :catch_42

    move-object v0, v1

    nop

    :goto_f
    if-nez p2, :cond_19

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_22

    :cond_19
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setDownTime(J)V

    :goto_22
    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v1, :cond_30

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v0

    :cond_30
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p4, v1

    const/4 v1, 0x0

    invoke-super {p0, v0, v1, p4}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    if-eq v0, p1, :cond_41

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_41
    return-void

    :catch_42
    move-exception v1

    const-string v2, "SamsungTouchExplorer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_1e
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_23

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_20

    :cond_15
    const/4 v5, 0x1

    shl-int v6, v5, v4

    or-int/2addr v1, v6

    invoke-direct {p0, v5, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v5

    invoke-direct {p0, p1, v5, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_23
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    const/16 v2, 0x100

    if-eqz v1, :cond_1a

    if-ne v0, v2, :cond_1a

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-ne v0, v2, :cond_2e

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_2e
    const/16 v1, 0x20

    if-eq v0, v1, :cond_45

    const/16 v1, 0x80

    if-eq v0, v1, :cond_3e

    if-eq v0, v2, :cond_3e

    const v1, 0x8000

    if-eq v0, v1, :cond_4f

    goto :goto_6a

    :cond_3e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_6a

    :cond_45
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSIPisShown()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4f

    return-void

    :cond_4f
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$100(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$102(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_66
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    nop

    :goto_6a
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    return v3

    :cond_b
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_22
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_2f
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v5, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->isLastExploreWindowIsSIPType(I)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v2

    if-eqz v2, :cond_44

    return v4

    :cond_44
    const-string v2, "SamsungTouchExplorer"

    const-string v5, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    invoke-direct {v0, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v7

    if-nez v7, :cond_5c

    return v4

    :cond_5c
    new-array v15, v4, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v8, v15, v3

    aget-object v8, v15, v3

    invoke-virtual {v1, v2, v8}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-array v14, v4, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v8, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v8, v14, v3

    aget-object v8, v14, v3

    iget v9, v6, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v8, v14, v3

    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    move-object/from16 v24, v14

    move-object v14, v15

    move-object/from16 v25, v15

    move-object/from16 v15, v24

    invoke-static/range {v8 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v8

    if-ne v7, v4, :cond_b0

    move v3, v4

    nop

    :cond_b0
    move/from16 v9, p2

    invoke-direct {v0, v8, v9, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return v4
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
    .registers 9

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    if-nez v3, :cond_24

    return-void

    :cond_24
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;I)Z
    .registers 7

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_a

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->endGestureDetection()V

    return v1

    :cond_a
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    if-ne v0, v1, :cond_33

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_33

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    shl-int v2, v1, v0

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    const/4 v3, 0x7

    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return v1

    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method public onGestureCompleted(I)Z
    .registers 4

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->endGestureDetection()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onGestureStarted()Z
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_59

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_59

    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->onMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void

    :cond_2a
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_5e

    :pswitch_2f
    const-string v0, "SamsungTouchExplorer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_58

    :pswitch_4b
    goto :goto_58

    :pswitch_4c
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_58

    :pswitch_50
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_58

    :pswitch_54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    nop

    :goto_58
    return-void

    :cond_59
    :goto_59
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_54
        :pswitch_50
        :pswitch_2f
        :pswitch_4c
        :pswitch_4b
    .end packed-switch
.end method

.method public onMultiFingerStarted(I)V
    .registers 4

    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->setTwoFingerEnabled(Z)V

    :cond_10
    return-void
.end method

.method public onMultiFingerStopped(I)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    return-void
.end method

.method public onMultiFingerTapDetected(IIZ)V
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2f

    if-ne p2, v2, :cond_11

    if-eqz p3, :cond_d

    goto/16 :goto_6e

    :cond_d
    const/16 v0, 0x21

    goto/16 :goto_6e

    :cond_11
    if-ne p2, v4, :cond_1d

    if-eqz p3, :cond_19

    const/16 v0, 0x25

    goto/16 :goto_6e

    :cond_19
    const/16 v0, 0x23

    goto/16 :goto_6e

    :cond_1d
    if-ne p2, v3, :cond_27

    if-eqz p3, :cond_24

    const/16 v0, 0x2a

    goto :goto_6e

    :cond_24
    const/16 v0, 0x27

    goto :goto_6e

    :cond_27
    if-ne p2, v1, :cond_6e

    if-eqz p3, :cond_2c

    goto :goto_6e

    :cond_2c
    const/16 v0, 0x2c

    goto :goto_6e

    :cond_2f
    if-ne p1, v3, :cond_55

    if-ne p2, v2, :cond_39

    if-eqz p3, :cond_36

    goto :goto_6e

    :cond_36
    const/16 v0, 0x22

    goto :goto_6e

    :cond_39
    if-ne p2, v4, :cond_43

    if-eqz p3, :cond_40

    const/16 v0, 0x26

    goto :goto_6e

    :cond_40
    const/16 v0, 0x24

    goto :goto_6e

    :cond_43
    if-ne p2, v3, :cond_4d

    if-eqz p3, :cond_4a

    const/16 v0, 0x2b

    goto :goto_6e

    :cond_4a
    const/16 v0, 0x28

    goto :goto_6e

    :cond_4d
    if-ne p2, v1, :cond_6e

    if-eqz p3, :cond_52

    goto :goto_6e

    :cond_52
    const/16 v0, 0x2d

    goto :goto_6e

    :cond_55
    if-ne p1, v1, :cond_6e

    if-ne p2, v2, :cond_5f

    if-eqz p3, :cond_5c

    goto :goto_6e

    :cond_5c
    const/16 v0, 0x2e

    goto :goto_6e

    :cond_5f
    if-ne p2, v4, :cond_67

    if-eqz p3, :cond_64

    goto :goto_6e

    :cond_64
    const/16 v0, 0x2f

    goto :goto_6e

    :cond_67
    if-ne p2, v3, :cond_6e

    if-eqz p3, :cond_6c

    goto :goto_6e

    :cond_6c
    const/16 v0, 0x30

    :cond_6e
    :goto_6e
    const-string v1, "SamsungTouchExplorer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiFinger TAP GestureId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_8b

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    :cond_8b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SamsungTouchExplorer"

    return-object v0
.end method
