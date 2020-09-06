.class Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SamsungAccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final ANGLE_THRESHOLD:F = 0.0f

.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0x96L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x12cL

.field private static final DEBUG:Z = false

.field private static final DIRECTIONS_TO_GESTURE_ID:[[I

.field private static final DOWN:I = 0x3

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LEFT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungAccessibilityGestureDetector"

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_INCHES_BETWEEN_SAMPLES:F = 0.1f

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final MSG_MULTI_FINGER_HOLD:I = 0x1

.field private static final MSG_MULTI_FINGER_STOP:I = 0x2

.field private static final MSG_MULTI_FINGER_TAP:I = 0x0

.field private static final MULTI_FINGER_DETECTION_TIMEOUT:J = 0x7d0L

.field private static final MULTI_FINGER_LONG_PRESS_TIMEOUT:J

.field private static final MULTI_FINGER_MAX:I = 0x4

.field private static final MULTI_FINGER_RECOGNIZE_TIMEOUT:J = 0x64L

.field private static final MULTI_FINGER_TAP_TIMEOUT:J = 0xc8L

.field private static final MULTI_FINGER_TAP_TIMEOUT_OFFSET:J = 0x1eL

.field private static final RIGHT:I = 0x1

.field private static final STATE_DONE:I = 0x1

.field private static final STATE_READY:I = 0x0

.field private static final STATE_THREE_FINGER_DETECTION:I = 0x3

.field private static final STATE_TWO_FINGER_DETECTION:I = 0x2

.field private static final TOUCH_TOLERANCE:I = 0x3

.field private static final UP:I = 0x2


# instance fields
.field public TOUCH_SLOP:I

.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private final mContext:Landroid/content/Context;

.field private mDoubleTapDetected:Z

.field private mFingerNumberByPointerId:[I

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureStarted:Z

.field private mLastNumberOfFingers:I

.field private final mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mMultiFingerDetectionState:I

.field private mMultiFingerDownTime:[J

.field private mMultiFingerDownX:[F

.field private mMultiFingerDownY:[F

.field private mMultiFingerGestureState:Z

.field private final mMultiFingerHandler:Landroid/os/Handler;

.field private mMultiFingerPreviousX:[F

.field private mMultiFingerPreviousY:[F

.field private final mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiFingerTapTimes:I

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mPrimaryPointerId:I

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTwoFingerGestureEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_2e

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_3a

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_46

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->MULTI_FINGER_LONG_PRESS_TIMEOUT:J

    return-void

    nop

    :array_2e
    .array-data 4
        0x3
        0x5
        0x9
        0xa
    .end array-data

    :array_3a
    .array-data 4
        0x6
        0x4
        0xb
        0xc
    .end array-data

    :array_46
    .array-data 4
        0xd
        0xe
        0x1
        0x7
    .end array-data

    :array_52
    .array-data 4
        0xf
        0x10
        0x8
        0x2
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;)V
    .registers 7

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mTwoFingerGestureEnabled:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$1;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    const-string v0, "SamsungAccessibilityGestureDetector"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mContext:Landroid/content/Context;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetectionThreshold:F

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->initMultiFingerDetection(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float v3, v2, v0

    iput v3, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection(I)V

    return-void
.end method

.method private addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    aget v0, v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_12

    if-gez v0, :cond_a

    goto :goto_12

    :cond_a
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_12
    :goto_12
    return-void
.end method

.method private cancelGesture()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mRecognizingGesture:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private clearMultiFingerDetection()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection(I)V

    return-void
.end method

.method private clearMultiFingerDetection(I)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const-string v0, "SamsungAccessibilityGestureDetector"

    const-string v3, "GestureCancelled"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    iget v3, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    invoke-interface {v0, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onMultiFingerStopped(I)V

    iput p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    iput v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I

    iput v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    const/4 v3, -0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private initMultiFingerDetection(Landroid/content/Context;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    return-void
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    return-object v3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_62

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, 0x6

    const/4 v6, 0x5

    if-eq v2, v6, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v5, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v4, :cond_26

    goto :goto_62

    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v6, :cond_2e

    const/4 v2, 0x0

    goto :goto_31

    :cond_2e
    if-ne v2, v5, :cond_31

    const/4 v2, 0x1

    :cond_31
    :goto_31
    iget-wide v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondPointerDownTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    move v7, v2

    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v3

    return-object v3

    :cond_62
    :goto_62
    return-object v3
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private onMotionEventForMultiFinger(Landroid/view/MotionEvent;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const-wide/16 v8, 0x64

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    packed-switch v7, :pswitch_data_336

    :pswitch_1b
    move/from16 v22, v5

    goto/16 :goto_32c

    :pswitch_1f
    iget v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    if-eqz v7, :cond_78

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget-object v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    aget v8, v8, v6

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    aget v9, v9, v6

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float v9, v7, v9

    if-gez v9, :cond_4d

    iget v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_71

    :cond_4d
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v9, v6

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v9, v6

    new-instance v9, Landroid/gesture/GesturePoint;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-direct {v9, v10, v13, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-direct {v0, v6, v9}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    :cond_71
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v11, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    :cond_78
    return v11

    :pswitch_79
    const/4 v7, 0x4

    if-gt v4, v7, :cond_10c

    iget v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    const/4 v13, -0x1

    if-ne v7, v13, :cond_83

    goto/16 :goto_10c

    :cond_83
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget-object v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    iget v15, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    aget-wide v15, v7, v15

    sub-long/2addr v13, v15

    int-to-long v2, v4

    mul-long/2addr v8, v2

    cmp-long v2, v13, v8

    if-gez v2, :cond_108

    iput v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mLastNumberOfFingers:I

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v6

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v6

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v6

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v6

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    aput-wide v7, v2, v6

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    add-int/lit8 v3, v4, -0x1

    aput v3, v2, v6

    new-instance v2, Landroid/gesture/GesturePoint;

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    aget v3, v3, v6

    iget-object v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    aget v7, v7, v6

    iget-object v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    aget-wide v8, v8, v6

    invoke-direct {v2, v3, v7, v8, v9}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-direct {v0, v6, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    iget v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    if-ge v2, v12, :cond_f6

    iput v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    iget v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    invoke-interface {v2, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onMultiFingerStarted(I)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v2, v10, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10b

    :cond_f6
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    sget-wide v7, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->MULTI_FINGER_LONG_PRESS_TIMEOUT:J

    invoke-virtual {v2, v12, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10b

    :cond_108
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    :goto_10b
    return v11

    :cond_10c
    :goto_10c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    return v11

    :pswitch_110
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    return v11

    :pswitch_114
    iget v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    if-nez v7, :cond_119

    return v11

    :cond_119
    iget v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    if-ne v7, v12, :cond_11e

    return v12

    :cond_11e
    move v7, v6

    move v6, v11

    :goto_120
    if-ge v6, v4, :cond_179

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    aget v14, v14, v7

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    iget-object v15, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    aget v15, v15, v7

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v15, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float v15, v13, v15

    if-gez v15, :cond_14c

    iget v15, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float v15, v14, v15

    if-ltz v15, :cond_172

    :cond_14c
    iget-object v15, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    aput v16, v15, v7

    iget-object v15, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    aput v16, v15, v7

    new-instance v15, Landroid/gesture/GesturePoint;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    move/from16 v17, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v15, v11, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-direct {v0, v7, v15}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    :cond_172
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v8, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_120

    :cond_179
    iget-boolean v6, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    if-eqz v6, :cond_181

    move-wide v8, v2

    :cond_17e
    const/4 v3, 0x1

    goto/16 :goto_21a

    :cond_181
    const-wide/16 v8, 0xc8

    const/4 v6, 0x0

    move-wide v11, v8

    move-wide v8, v2

    const/4 v2, 0x0

    :goto_187
    if-ge v2, v4, :cond_1e8

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    aget v13, v13, v7

    sub-float/2addr v3, v13

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    aget v14, v14, v7

    sub-float/2addr v13, v14

    float-to-double v14, v3

    move-wide/from16 v18, v11

    float-to-double v10, v13

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    iget v12, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    int-to-double v14, v12

    cmpl-double v12, v10, v14

    if-lez v12, :cond_1d1

    const-string v12, "SamsungAccessibilityGestureDetector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isMoving "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, " , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_1ea

    :cond_1d1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    aget-wide v20, v12, v7

    sub-long v8, v14, v20

    cmp-long v12, v18, v8

    if-lez v12, :cond_1e2

    move-wide v10, v8

    move-wide v11, v10

    goto :goto_1e4

    :cond_1e2
    move-wide/from16 v11, v18

    :goto_1e4
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    goto :goto_187

    :cond_1e8
    move-wide/from16 v18, v11

    :goto_1ea
    iget v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_205

    iget-boolean v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mTwoFingerGestureEnabled:Z

    if-nez v2, :cond_205

    iget v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_21a

    if-nez v6, :cond_200

    const-wide/16 v2, 0x64

    cmp-long v2, v18, v2

    if-lez v2, :cond_203

    :cond_200
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    :cond_203
    const/4 v2, 0x0

    return v2

    :cond_205
    const/4 v2, 0x0

    if-eqz v6, :cond_17e

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureStarted()Z

    :cond_21a
    :goto_21a
    return v3

    :pswitch_21b
    iget v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2d2

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    aget v8, v8, v6

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    aget v9, v9, v6

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float v9, v7, v9

    if-gez v9, :cond_24b

    iget v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_26f

    :cond_24b
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    aput v10, v9, v6

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    aput v10, v9, v6

    new-instance v9, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-direct {v0, v6, v9}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    :cond_26f
    iget-boolean v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    if-eqz v9, :cond_288

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeMultiFingerGesture()I

    move-result v9

    if-lez v9, :cond_283

    iget-object v10, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v10, v9}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    const/4 v10, 0x1

    return v10

    :cond_283
    nop

    move/from16 v22, v5

    const/4 v5, 0x1

    goto :goto_2d5

    :cond_288
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    iget-object v11, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    iget v12, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    aget-wide v11, v11, v12

    sub-long/2addr v9, v11

    const-string v2, "SamsungAccessibilityGestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MultiFinger TAP - Pressed State Duration "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0xc8

    cmp-long v11, v9, v2

    if-gez v11, :cond_2cb

    iget v11, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerTapTimes:I

    iget-object v11, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v11, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x1e

    move/from16 v22, v5

    move/from16 v23, v6

    int-to-long v5, v4

    mul-long/2addr v13, v5

    add-long/2addr v2, v13

    invoke-virtual {v11, v12, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v5, 0x1

    return v5

    :cond_2cb
    move/from16 v22, v5

    move/from16 v23, v6

    const/4 v5, 0x1

    move-wide v2, v9

    goto :goto_2d5

    :cond_2d2
    move/from16 v22, v5

    const/4 v5, 0x1

    :goto_2d5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    goto :goto_32c

    :pswitch_2d9
    move/from16 v22, v5

    move v5, v12

    iget v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    if-ne v7, v5, :cond_2e3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    :cond_2e3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPrimaryPointerId:I

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    aput v7, v5, v6

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    aput v7, v5, v6

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousX:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    aput v7, v5, v6

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerPreviousY:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    aput v7, v5, v6

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    aput-wide v7, v5, v6

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFingerNumberByPointerId:[I

    const/4 v7, 0x0

    aput v7, v5, v6

    new-instance v5, Landroid/gesture/GesturePoint;

    iget-object v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownX:[F

    aget v7, v7, v6

    iget-object v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownY:[F

    aget v8, v8, v6

    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDownTime:[J

    aget-wide v9, v9, v6

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-direct {v0, v6, v5}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->addMultiFingerGesturePoint(ILandroid/gesture/GesturePoint;)V

    nop

    :goto_32c
    iget v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    if-eqz v5, :cond_332

    const/4 v5, 0x1

    return v5

    :cond_332
    const/4 v5, 0x0

    return v5

    nop

    nop

    :pswitch_data_336
    .packed-switch 0x0
        :pswitch_2d9
        :pswitch_21b
        :pswitch_114
        :pswitch_110
        :pswitch_1b
        :pswitch_79
        :pswitch_1f
    .end packed-switch
.end method

.method private recognizeGesture(Ljava/util/ArrayList;)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p1

    if-eqz v0, :cond_e3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    goto/16 :goto_e3

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GesturePoint;

    iget v4, v4, Landroid/gesture/GesturePoint;->x:F

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v3, v3, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    move v9, v6

    move v6, v4

    move v4, v3

    move-object v3, v2

    const/4 v2, 0x1

    :goto_39
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_bc

    new-instance v10, Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/gesture/GesturePoint;

    iget v11, v11, Landroid/gesture/GesturePoint;->x:F

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/gesture/GesturePoint;

    iget v12, v12, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v7, v10

    if-lez v5, :cond_98

    int-to-float v10, v5

    div-float v10, v4, v10

    int-to-float v11, v5

    div-float v11, v6, v11

    new-instance v12, Landroid/graphics/PointF;

    mul-float v13, v9, v10

    iget v14, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v14

    mul-float v14, v9, v11

    iget v15, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v15

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    iget v14, v7, Landroid/graphics/PointF;->y:F

    iget v15, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    mul-float v15, v13, v13

    mul-float v16, v14, v14

    add-float v15, v15, v16

    move/from16 v17, v9

    float-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v13, v8

    div-float/2addr v14, v8

    mul-float v9, v10, v13

    mul-float v15, v11, v14

    add-float/2addr v9, v15

    const/4 v15, 0x0

    cmpg-float v15, v9, v15

    if-gez v15, :cond_9a

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v12

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    goto :goto_9a

    :cond_98
    move/from16 v17, v9

    :cond_9a
    :goto_9a
    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v9, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget v9, v7, Landroid/graphics/PointF;->y:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    mul-float v10, v8, v8

    mul-float v11, v9, v9

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/4 v11, 0x1

    add-int/2addr v5, v11

    div-float v12, v8, v10

    add-float/2addr v4, v12

    div-float v12, v9, v10

    add-float/2addr v6, v12

    add-int/lit8 v2, v2, 0x1

    move v9, v10

    goto/16 :goto_39

    :cond_bc
    move/from16 v17, v9

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "SamsungAccessibilityGestureDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesturePath(Ljava/util/ArrayList;)I

    move-result v8

    return v8

    :cond_e3
    :goto_e3
    move-object/from16 v2, p0

    const/4 v1, -0x1

    return v1
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_16

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v3, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v3

    return v3

    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GesturePoint;

    iget v5, v5, Landroid/gesture/GesturePoint;->x:F

    iget-object v7, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/GesturePoint;

    iget v6, v6, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    move v11, v8

    move v8, v6

    move v6, v5

    move-object v5, v4

    const/4 v4, 0x1

    :goto_46
    iget-object v12, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_e3

    new-instance v12, Landroid/graphics/PointF;

    iget-object v13, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/gesture/GesturePoint;

    iget v13, v13, Landroid/gesture/GesturePoint;->x:F

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/gesture/GesturePoint;

    iget v14, v14, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v9, v12

    if-lez v7, :cond_b3

    int-to-float v12, v7

    div-float v12, v6, v12

    int-to-float v13, v7

    div-float v13, v8, v13

    new-instance v14, Landroid/graphics/PointF;

    mul-float v15, v11, v12

    iget v10, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v15, v10

    mul-float v10, v11, v13

    move/from16 v16, v6

    iget v6, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v6

    invoke-direct {v14, v15, v10}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v6, v14

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v14

    iget v14, v9, Landroid/graphics/PointF;->y:F

    iget v15, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    mul-float v15, v10, v10

    mul-float v17, v14, v14

    add-float v15, v15, v17

    move/from16 v18, v7

    move/from16 v19, v8

    float-to-double v7, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    div-float/2addr v10, v7

    div-float/2addr v14, v7

    mul-float v8, v12, v10

    mul-float v15, v13, v14

    add-float/2addr v8, v15

    const/4 v15, 0x0

    cmpg-float v15, v8, v15

    if-gez v15, :cond_b9

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    move/from16 v18, v7

    goto :goto_bd

    :cond_b3
    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    :cond_b9
    move/from16 v15, v16

    move/from16 v16, v19

    :goto_bd
    iget v6, v9, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v9, Landroid/graphics/PointF;->y:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    mul-float v8, v6, v6

    mul-float v10, v7, v7

    add-float/2addr v8, v10

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    const/4 v8, 0x1

    add-int/lit8 v10, v18, 0x1

    div-float v12, v6, v11

    add-float/2addr v12, v15

    div-float v13, v7, v11

    add-float v6, v16, v13

    add-int/lit8 v4, v4, 0x1

    move v8, v6

    move v7, v10

    move v6, v12

    goto/16 :goto_46

    :cond_e3
    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "SamsungAccessibilityGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v4

    return v4
.end method

.method private recognizeGesturePath(Ljava/util/ArrayList;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->toDirection(FF)I

    move-result v7

    packed-switch v7, :pswitch_data_6a

    goto :goto_68

    :pswitch_28
    return v4

    :pswitch_29
    return v3

    :pswitch_2a
    const/4 v1, 0x4

    return v1

    :pswitch_2c
    return v1

    :cond_2d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_68

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v3, v4}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->toDirection(FF)I

    move-result v7

    invoke-static {v5, v6}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->toDirection(FF)I

    move-result v8

    sget-object v9, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    aget-object v9, v9, v7

    aget v9, v9, v8

    return v9

    :cond_68
    :goto_68
    const/4 v0, -0x1

    return v0

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_45

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->toDirection(FF)I

    move-result v7

    packed-switch v7, :pswitch_data_8e

    goto :goto_86

    :pswitch_28
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v1, v4}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v1

    return v1

    :pswitch_2f
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v1, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v1

    return v1

    :pswitch_36
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v1

    return v1

    :pswitch_3e
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v3, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v1

    return v1

    :cond_45
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_86

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v3, v4}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->toDirection(FF)I

    move-result v7

    invoke-static {v5, v6}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->toDirection(FF)I

    move-result v8

    sget-object v9, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    aget-object v9, v9, v7

    aget v9, v9, v8

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v10, v9}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v10

    return v10

    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_36
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method private recognizeMultiFingerGesture()I
    .registers 7

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_49

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Ljava/util/ArrayList;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v1, v2, v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Ljava/util/ArrayList;)I

    move-result v1

    const-string v2, "SamsungAccessibilityGestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recognizeMultiFingerGesture : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_48

    packed-switch v0, :pswitch_data_b2

    goto :goto_48

    :pswitch_3c
    const/16 v2, 0x14

    return v2

    :pswitch_3f
    const/16 v2, 0x13

    return v2

    :pswitch_42
    const/16 v2, 0x12

    return v2

    :pswitch_45
    const/16 v2, 0x11

    return v2

    :cond_48
    :goto_48
    goto :goto_a7

    :cond_49
    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_a7

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Ljava/util/ArrayList;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v1, v2, v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Ljava/util/ArrayList;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerStrokeBuffer:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Ljava/util/ArrayList;)I

    move-result v2

    const-string v3, "SamsungAccessibilityGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recognizeMultiFingerGesture : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_a7

    if-ne v0, v2, :cond_a7

    packed-switch v0, :pswitch_data_be

    :pswitch_94
    goto :goto_a7

    :pswitch_95
    const/16 v3, 0x20

    return v3

    :pswitch_98
    const/16 v3, 0x1f

    return v3

    :pswitch_9b
    const/16 v3, 0x1c

    return v3

    :pswitch_9e
    const/16 v3, 0x1b

    return v3

    :pswitch_a1
    const/16 v3, 0x1a

    return v3

    :pswitch_a4
    const/16 v3, 0x19

    return v3

    :cond_a7
    :goto_a7
    const-string v0, "SamsungAccessibilityGestureDetector"

    const-string/jumbo v1, "recognizeMultiFingerGesture : Invalid gesture"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_94
        :pswitch_94
        :pswitch_98
        :pswitch_95
    .end packed-switch
.end method

.method private static toDirection(FF)I
    .registers 4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_15

    cmpg-float v0, p0, v1

    if-gez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1b

    const/4 v0, 0x2

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x3

    :goto_1c
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->cancelGesture()V

    return-void
.end method

.method public firstTapDetected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPolicyFlags:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->maybeSendLongPress(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v3, :cond_18

    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->onMotionEventForMultiFinger(Landroid/view/MotionEvent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_20

    return v4

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPolicyFlags:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_156

    :pswitch_36
    goto/16 :goto_135

    :pswitch_38
    iget-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    if-eqz v4, :cond_135

    iget-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-eqz v4, :cond_135

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v4

    return v4

    :pswitch_45
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->cancelGesture()V

    iget v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerDetectionState:I

    if-eqz v8, :cond_4d

    return v9

    :cond_4d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_5a

    iput-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    iput-wide v6, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondPointerDownTime:J

    goto/16 :goto_135

    :cond_5a
    iput-boolean v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    goto/16 :goto_135

    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    goto/16 :goto_135

    :pswitch_63
    iget-boolean v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mRecognizingGesture:Z

    if-eqz v8, :cond_135

    iget v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseX:F

    sub-float/2addr v8, v3

    iget v10, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseY:F

    sub-float/2addr v10, v5

    float-to-double v11, v8

    float-to-double v13, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    iget v13, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetectionThreshold:F

    float-to-double v13, v13

    cmpl-double v13, v11, v13

    if-lez v13, :cond_91

    iput v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseX:F

    iput v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseY:F

    iput-wide v6, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseTime:J

    iput-boolean v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    iput-boolean v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    iget-boolean v13, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    if-nez v13, :cond_b0

    iput-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v4}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureStarted()Z

    move-result v4

    return v4

    :cond_91
    iget-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    if-nez v4, :cond_b0

    iget-wide v13, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseTime:J

    sub-long v13, v6, v13

    iget-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    if-eqz v4, :cond_a0

    const-wide/16 v15, 0x12c

    goto :goto_a2

    :cond_a0
    const-wide/16 v15, 0x96

    :goto_a2
    cmp-long v4, v13, v15

    if-lez v4, :cond_b0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->cancelGesture()V

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;

    invoke-interface {v4, v1, v2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v4

    return v4

    :cond_b0
    iget v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v13, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureY:F

    sub-float v13, v5, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float v14, v4, v14

    if-gez v14, :cond_cc

    iget v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float v14, v13, v14

    if-ltz v14, :cond_da

    :cond_cc
    iput v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureX:F

    iput v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureY:F

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v15, Landroid/gesture/GesturePoint;

    invoke-direct {v15, v3, v5, v6, v7}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_da
    goto :goto_135

    :pswitch_db
    iget-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-eqz v4, :cond_e4

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v4

    return v4

    :cond_e4
    iget-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    if-eqz v4, :cond_135

    iget v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float v9, v4, v9

    if-gez v9, :cond_104

    iget v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_10e

    :cond_104
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-direct {v10, v3, v5, v6, v7}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10e
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->recognizeGesture(Landroid/view/MotionEvent;I)Z

    move-result v9

    return v9

    :pswitch_113
    iput-boolean v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mDoubleTapDetected:Z

    iput-boolean v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    iput-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mRecognizingGesture:Z

    iput-boolean v9, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureStarted:Z

    iput v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureX:F

    iput v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mPreviousGestureY:F

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v8, Landroid/gesture/GesturePoint;

    invoke-direct {v8, v3, v5, v6, v7}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseX:F

    iput v5, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseY:F

    iput-wide v6, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mBaseTime:J

    nop

    :cond_135
    :goto_135
    iget-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    if-eqz v4, :cond_14a

    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    if-nez v4, :cond_140

    return v9

    :cond_140
    iget-object v8, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, v4}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v8

    :cond_14a
    iget-boolean v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mRecognizingGesture:Z

    if-nez v4, :cond_14f

    return v9

    :cond_14f
    iget-object v4, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_113
        :pswitch_db
        :pswitch_63
        :pswitch_5e
        :pswitch_36
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mFirstTapDetected:Z

    const/4 v0, 0x0

    return v0
.end method

.method public resetMultiFingerGestureState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mMultiFingerGestureState:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clearMultiFingerDetection()V

    return-void
.end method

.method public setTwoFingerEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->mTwoFingerGestureEnabled:Z

    return-void
.end method
