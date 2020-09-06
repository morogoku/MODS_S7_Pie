.class public final Lcom/android/server/accessibility/SamsungMagnifierWindow;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$State;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    }
.end annotation


# static fields
.field private static final CLOSE_TYPE:I = 0x3

.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = true

.field private static final DEBUG_WINDOW_POLICY:Z = false

.field private static final DEFAULT_OF_MAGNIFIER_REGION:I = 0x0

.field private static final HANDLER_MESSAGE_HIDE_CONTROL:I = 0x0

.field private static final HANDLER_MESSAGE_SHOW_CONTROL:I = 0x1

.field private static final HORIZONTAL_LOCK_TYPE:I = 0x2

.field private static final INSIDE_OF_MAGNIFIER_REGION:I = 0x1

.field private static final INTENT_ACTION_SIP_AVAILABLE:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final INTENT_ACTION_SIP_NAME:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final INTENT_ACTION_TEXT_SELECTION_CHANGED:Ljava/lang/String; = "TextSelectionChanged_For_MagnifierWindow"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_SCALE:F = 8.0f

.field private static final MIN_SCALE:F = 1.0f

.field private static final MY_PID:I

.field private static final NONE_TYPE:I = 0x0

.field private static final OUTSIDE_OF_MAGNIFIER_REGION:I = 0x2

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_PANNING_SCALING:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3

.field private static final WINDOW_ANIMATION_PERIOD_SIZE:I = 0x5

.field private static final WINDOW_SIZE_COUNT_MAX:I = 0x3

.field private static final WINDOW_SIZE_LARGE:I = 0x2

.field private static final WINDOW_SIZE_MEDIUM:I = 0x1

.field private static final WINDOW_SIZE_SMALL:I = 0x0

.field private static final WINDOW_SIZE_TYPE:I = 0x1

.field private static mCurrentFollowingStatus:Z

.field private static mCurrentTouchEventAction:Z

.field private static mDefaultDisplayName:Ljava/lang/String;

.field private static mDisplayInfo:Landroid/view/DisplayInfo;

.field private static mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private static mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private static mInputDeviceSource:I

.field private static mIsHidedByShortcutTriggered:Z

.field private static mIsNeedToConfigWindow:Z

.field private static mIsShowMagnifyController:Z

.field private static mIsWindowStateChanged:Z

.field private static mNavigationBarGestureWhileHidden:Z

.field private static mNavigationBarHeightButtonP:I

.field private static mNavigationBarHeightGesture:I

.field private static mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private static mWindowmanager:Landroid/view/WindowManager;

.field private static magnifier_editBox_right:I

.field private static magnifier_offset_X:F

.field private static magnifier_offset_Y:F

.field private static magnifier_text_cursor_X:I

.field private static magnifier_text_cursor_Y:I


# instance fields
.field private final ADD_BORDER_BOUNDAY_MOVE_SIZE:I

.field private final ADD_BORDER_BOUNDAY_SIZE:I

.field private final HORIZONTAL_FOCUS_LOCK_DEGREE:I

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

.field private final mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

.field private final mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

.field private mDisplay:Landroid/hardware/display/DisplayManager;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mIsShowSamsungMagnifierWindow:Z

.field private final mMagnificationSettingsObserver:Landroid/database/ContentObserver;

.field private final mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

.field private mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

.field private mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

.field private mShowMoveAnimationRunnable:Ljava/lang/Runnable;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTimeHandler:Landroid/os/Handler;

.field private final mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

.field private originalOffsetX:F

.field private originalOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->MY_PID:I

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightButtonP:I

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightGesture:I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    const-string v0, ""

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->ADD_BORDER_BOUNDAY_SIZE:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->ADD_BORDER_BOUNDAY_MOVE_SIZE:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->HORIZONTAL_FOCUS_LOCK_DEGREE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->originalOffsetX:F

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->originalOffsetY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$4;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightButtonP:I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightGesture:I

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_97
    sget-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v3, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    sget-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v3, v1}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_a1} :catch_a2

    goto :goto_a6

    :catch_a2
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a6
    sget v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_c6

    sget v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_c6

    sget-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sput v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    sget-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sput v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    :cond_c6
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hover_zoom_magnifier_size"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hover_zoom_value"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "magnifier_window_horizontal_focus_lock"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigation_bar_gesture_while_hidden"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "TextSelectionChanged_For_MagnifierWindow"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "ResponseAxT9Info"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    new-instance v4, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    invoke-direct {v4, p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    new-instance v4, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    new-instance v4, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    invoke-direct {v4, p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    const-string/jumbo v4, "display"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    new-instance v4, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;

    invoke-direct {v4, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    if-eqz v4, :cond_16a

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v4, v5, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_16a
    sput-boolean v2, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_17f

    goto :goto_180

    :cond_17f
    move v1, v2

    :goto_180
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/hardware/display/DisplayManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$1000()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .registers 1

    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(FF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1302(F)F
    .registers 1

    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    return p0
.end method

.method static synthetic access$1402(F)F
    .registers 1

    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->enableMagnifierWindowController(Z)V

    return-void
.end method

.method static synthetic access$1600()Landroid/util/DisplayMetrics;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/view/WindowManager;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/view/DisplayInfo;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/view/DisplayInfo;)Landroid/view/DisplayInfo;
    .registers 1

    sput-object p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method static synthetic access$1900()Landroid/hardware/display/IDisplayManager;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    return v0
.end method

.method static synthetic access$2100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z

    return p0
.end method

.method static synthetic access$2200()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightGesture:I

    return v0
.end method

.method static synthetic access$2300()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightButtonP:I

    return v0
.end method

.method static synthetic access$2400()Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged()V

    return-void
.end method

.method static synthetic access$2600()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .registers 1

    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I

    return p0
.end method

.method static synthetic access$2700()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .registers 1

    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$2900()I
    .registers 1

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    return v0
.end method

.method static synthetic access$2972(I)I
    .registers 2

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    and-int/2addr v0, p0

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/SamsungMagnifierWindow;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setFollowingMagnifierWindow(FF)V

    return-void
.end method

.method static synthetic access$3102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    return-void
.end method

.method static synthetic access$3602(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    return-object v0
.end method

.method static synthetic access$3901(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleEventWith(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2

    invoke-static {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method private configChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    :try_start_12
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, v0}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1f
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1d

    goto :goto_23

    :catchall_1d
    move-exception v1

    goto :goto_27

    :catch_1f
    move-exception v1

    :try_start_20
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    :goto_23
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    goto :goto_2b

    :goto_27
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    throw v1

    :cond_2b
    :goto_2b
    return-void
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithController(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_35

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getControlButtonType()I

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    :cond_2c
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V

    goto :goto_3c

    :cond_35
    :goto_35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleMotionEventOnMagnifierWindow(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V

    return-void

    :cond_3c
    :goto_3c
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private enableMagnifierWindowController(Z)V
    .registers 3

    :try_start_0
    sput-boolean p1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->enableMagnifierWindowController(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method private handleEventWith(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->access$800(Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->access$900(Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    if-eq p1, v0, :cond_1e

    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1e
    return-void
.end method

.method private handleFollowingMagnifierWindow(ZZ)V
    .registers 9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_61

    if-nez p2, :cond_61

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isChangedFollowDisplayHeight()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleFollowingMagnifierWindow: offSetY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v5

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", NewOffSetY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v3, v4, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    :cond_61
    return-void
.end method

.method private handleMotionEventOnMagnifierWindow(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_250

    :pswitch_c
    goto/16 :goto_24d

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24d

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder. action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_24d

    :pswitch_3f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(Landroid/view/MotionEvent;)V

    return-void

    :cond_4b
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24d

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindowWithController. action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :pswitch_72
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getControlButtonType()I

    move-result v0

    const/4 v2, -0x2

    packed-switch v0, :pswitch_data_262

    goto :goto_f8

    :pswitch_81
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f8

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionEvent: ControlButtonType is 3"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->stopMagnifier()V

    goto :goto_f8

    :pswitch_95
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f8

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionEvent: ControlButtonType is 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getHorizontalFocusLock()I

    move-result v0

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "magnifier_window_horizontal_focus_lock"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_f8

    :pswitch_cd
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f8

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onMotionEvent: ControlButtonType is 1"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSize()I

    move-result v0

    add-int/2addr v0, v4

    if-lt v0, v1, :cond_e7

    const/4 v0, 0x0

    :cond_e7
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "hover_zoom_magnifier_size"

    invoke-static {v1, v4, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_f8

    :pswitch_f4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    nop

    :cond_f8
    :goto_f8
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getControlButtonType()I

    move-result v0

    if-eqz v0, :cond_24d

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    goto/16 :goto_24d

    :cond_107
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    goto/16 :goto_24d

    :cond_116
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24d

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindowWithController. action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_24d

    :pswitch_13e
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v0, :cond_1e9

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15e

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: isOnCloseBtn"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    goto/16 :goto_1e8

    :cond_15e
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16d

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    goto/16 :goto_1e8

    :cond_16d
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    goto :goto_1e8

    :cond_17c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnUpperLeftSideWithoutController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1cc

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnUpperRightSideWithoutController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1cc

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLowerSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1cc

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLeftSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1cc

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnRightSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    goto :goto_1cc

    :cond_1a5
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindowWithoutBorder. action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_1e8

    :cond_1cc
    :goto_1cc
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionEvent: For moving when controller is ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    if-eqz v0, :cond_1e8

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    :cond_1e8
    :goto_1e8
    return-void

    :cond_1e9
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnUpperSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_231

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLowerSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_231

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLeftSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_231

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnRightSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_20a

    goto :goto_231

    :cond_20a
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindow(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24d

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindow. action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_24d

    :cond_231
    :goto_231
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionEvent: For moving when controller is OFF"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    if-eqz v0, :cond_24d

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    :cond_24d
    :goto_24d
    return-void

    nop

    nop

    :pswitch_data_250
    .packed-switch 0x0
        :pswitch_13e
        :pswitch_72
        :pswitch_3f
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_cd
        :pswitch_95
        :pswitch_81
    .end packed-switch
.end method

.method private handleTouchEventAction(Landroid/view/MotionEvent;I)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    if-eqz p1, :cond_30

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_26

    sget-boolean v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    if-nez v4, :cond_26

    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    :cond_26
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_30
    const-wide/16 v4, 0xbb8

    packed-switch p2, :pswitch_data_fc

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTouchEventAction: Unknown region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fa

    :pswitch_4e
    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_fa

    :cond_59
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_fa

    :pswitch_60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v1, :cond_a8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_91

    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_fa

    :cond_91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v1, :cond_fa

    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sput-boolean v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    goto :goto_fa

    :cond_a8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v1, :cond_fa

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_da

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_bc

    goto :goto_da

    :cond_bc
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eq v6, v1, :cond_c9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_fa

    :cond_c9
    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sput-boolean v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    goto :goto_fa

    :cond_da
    :goto_da
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_fa

    :pswitch_e6
    if-nez p1, :cond_fa

    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    if-eqz v1, :cond_fa

    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    if-nez v1, :cond_fa

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_fa
    :goto_fa
    return-void

    nop

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_60
        :pswitch_4e
    .end packed-switch
.end method

.method private hideMagnifier()V
    .registers 4

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideMagnifier: offsetX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", offsetY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    :cond_37
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    :try_start_4b
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z

    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_5c
    return-void
.end method

.method private isNeedToConfigWindow(FF)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMaxWindowSizeWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMaxWindowSizeHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v5, p1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v1

    if-gtz v5, :cond_39

    sub-float v5, p2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_3a

    :cond_39
    const/4 v0, 0x1

    :cond_3a
    sget-boolean v5, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    if-nez v5, :cond_43

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    const/4 v0, 0x1

    :cond_43
    sget v5, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I

    int-to-float v5, v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_4b

    const/4 v0, 0x0

    :cond_4b
    return v0
.end method

.method private moveWindow(FF)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedX()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedY()F

    move-result v2

    sub-float v2, p2, v2

    sget-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getHorizontalFocusLock()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_48

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->selectDirectionForMove(FF)I

    move-result v7

    if-ne v7, v6, :cond_44

    const/4 v2, 0x0

    goto :goto_48

    :cond_44
    const/4 v8, 0x2

    if-ne v7, v8, :cond_48

    const/4 v0, 0x0

    :cond_48
    :goto_48
    add-int/lit8 v7, v3, -0x1e

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_55

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_55

    const/high16 v2, 0x41200000    # 10.0f

    :cond_55
    const/high16 v7, 0x41f00000    # 30.0f

    cmpg-float v8, p2, v7

    if-gez v8, :cond_61

    cmpg-float v8, v2, v1

    if-gtz v8, :cond_61

    const/high16 v2, -0x3ee00000    # -10.0f

    :cond_61
    add-int/lit8 v8, v4, -0x1e

    int-to-float v8, v8

    cmpl-float v8, p1, v8

    if-lez v8, :cond_6e

    cmpl-float v8, v0, v1

    if-ltz v8, :cond_6e

    const/high16 v0, 0x41200000    # 10.0f

    :cond_6e
    cmpg-float v7, p1, v7

    if-gez v7, :cond_78

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_78

    const/high16 v0, -0x3ee00000    # -10.0f

    :cond_78
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, v6, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v6

    iget v6, v6, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v7

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v7, v2

    invoke-virtual {v1, v6, v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    return-void
.end method

.method private moveWindow(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(FF)V

    return-void
.end method

.method private static recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private selectDirectionForMove(FF)I
    .registers 10

    const/4 v0, 0x0

    div-float v1, p2, p1

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    float-to-double v4, v1

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_14

    const/4 v0, 0x1

    goto :goto_1a

    :cond_14
    float-to-double v4, v1

    cmpl-double v4, v4, v2

    if-lez v4, :cond_1a

    const/4 v0, 0x2

    :cond_1a
    :goto_1a
    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectDirectionForMove - direction : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getBorderSize()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    int-to-float v7, v6

    add-float/2addr v4, v7

    int-to-float v7, v6

    add-float/2addr v5, v7

    iget-object v7, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    new-array v8, v8, [Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    new-array v15, v9, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v9, 0x0

    :goto_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ge v9, v10, :cond_7e

    new-instance v10, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v10, v15, v9

    aget-object v10, v15, v9

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v8, v9

    aget-object v10, v8, v9

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v10, v8, v9

    aget-object v11, v8, v9

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v11, v4

    div-float/2addr v11, v7

    add-float/2addr v11, v2

    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v10, v8, v9

    aget-object v11, v8, v9

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v11, v5

    div-float/2addr v11, v7

    add-float/2addr v11, v3

    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    :cond_7e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    invoke-static {v9}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "sec_touchscreen2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v14, v9

    sget-object v9, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "displayId of Injecting event : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v24

    move/from16 v25, v14

    move/from16 v14, v16

    move-object/from16 v26, v15

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v9

    const/high16 v10, 0x40000000    # 2.0f

    or-int v10, p3, v10

    const/4 v11, 0x0

    invoke-super {v0, v9, v11, v10}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    sget-object v11, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sendComputedMotionEvent - mEvent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setCurrentFollowingStatus(Z)V
    .registers 3

    :try_start_0
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    invoke-direct {p0, v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleFollowingMagnifierWindow(ZZ)V

    sput-boolean p1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setCurrentFollowingStatus(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return-void
.end method

.method private setFollowingMagnifierWindow(FF)V
    .registers 7

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isNeedToConfigWindow(FF)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    if-nez v1, :cond_2a

    new-instance v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;FFLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_32

    :cond_2a
    sput p1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    sput p2, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    :goto_32
    return-void
.end method

.method private setMagnificationSettings(Z)V
    .registers 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "magnifier_window_horizontal_focus_lock"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v0, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v5, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hover_zoom_value"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    add-float/2addr v3, v7

    sget-object v5, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    sget-object v6, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v5, 0x3

    if-lt v0, v5, :cond_3d

    const/4 v0, 0x2

    :cond_3d
    move v5, v0

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMagnificationSettings: size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", scale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", horizontalFocusLock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setScale(F)Z

    move-result v6

    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setWindowSize(I)Z

    move-result v7

    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setHorizontalFocusLock(I)Z

    move-result v8

    if-nez v6, :cond_7f

    if-nez v7, :cond_7f

    if-nez v8, :cond_7f

    if-eqz p1, :cond_13c

    :cond_7f
    sget v9, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    iget-object v10, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "mobile_keyboard"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_94

    const/4 v10, 0x1

    goto :goto_95

    :cond_94
    move v10, v4

    :goto_95
    if-eqz v10, :cond_ca

    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v13, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "window"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v14, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v0

    int-to-float v11, v14

    cmpl-float v4, v4, v11

    if-lez v4, :cond_ca

    iget-object v4, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v14, v4

    int-to-float v0, v4

    :cond_ca
    move v4, v0

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setMagnificationSettings: offSetX "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", offSetY "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v11, v9

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    cmpl-double v0, v11, v13

    if-eqz v0, :cond_106

    float-to-double v11, v4

    cmpl-double v0, v11, v13

    if-eqz v0, :cond_106

    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput v9, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput v4, v0, Landroid/view/MagnificationSpec;->offsetY:F

    :cond_106
    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    :try_start_10b
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v11, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v11}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v12}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v12

    iget-object v13, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()F

    move-result v13

    invoke-interface {v0, v11, v12, v13}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v11, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v11}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v11

    invoke-interface {v0, v11}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    const/4 v0, 0x0

    const/4 v11, 0x0

    invoke-direct {v1, v0, v11}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_137} :catch_138

    goto :goto_13c

    :catch_138
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_13c
    :goto_13c
    return-void
.end method

.method private setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method private stopMagnifier()V
    .registers 5

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopMagnifier()"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    .registers 7

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->nameOf(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->nameOf(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    if-ne v0, v1, :cond_5f

    const/4 v0, 0x0

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I

    :cond_5f
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clear()V

    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->clearEvents(I)V

    return-void
.end method

.method public clearEvents(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public isShowWindow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z

    return v0
.end method

.method public notifyShortcutTriggered()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V

    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    goto :goto_13

    :cond_d
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    :goto_13
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_b
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_20
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleEventWith(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public setMagnifierWindowInputSource(I)V
    .registers 3

    and-int/lit16 v0, p1, 0x101

    if-eqz v0, :cond_a

    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    or-int/lit16 v0, v0, 0x101

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    :cond_a
    return-void
.end method

.method public bridge synthetic setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationGesture{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->nameOf(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->nameOf(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
