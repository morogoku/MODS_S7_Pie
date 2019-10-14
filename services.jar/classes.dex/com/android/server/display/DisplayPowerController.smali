.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;,
        Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AB_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.turbo"

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x104

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xa0

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final FORCE_SUSTAINABLE_HBM_BATTERY_LEVEL:I = 0xf

.field private static final FORCE_UPDATE_AB_INTERVAL:I = 0x36ee80

.field private static final FORCE_UPDATE_AB_JOB_ID:I = 0x68

.field static final MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I = 0xea60

.field static final MAX_BRIGHTNESS_LOWER_THRESHOLD:I = 0xe6

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_FORCE_UPDATE_AB_JOB:I = 0xa

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SEAMLESS_AOD_READY:I = 0x8

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_SUSTAINABLE_HBM:I = 0x9

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xfa

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z = false

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final SUSTAINABLE_HBM_EXCEEDED_TIMEOUT:I = 0x927c0

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false


# instance fields
.field private final ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

.field private final AVAILABLE_ADAPTIVE_CONTROL:Z

.field private final AVAILABLE_COLOR_WEAKNESS_MODE:Z

.field private final BRIGHTNESS_MODE_CLEAR_VIEW:I

.field private final BRIGHTNESS_MODE_COLOR_WEAKNESS:I

.field private final BRIGHTNESS_MODE_NONE:I

.field private final CLEAR_VIEW_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

.field private final CLEAR_VIEW_BRIGHTNESS_MODE_RATIO:F

.field private final COLOR_WEAKNESS_MODE_PATH:Ljava/lang/String;

.field private final COLOR_WEAKNESS_MODE_RATIO:F

.field private mAdaptiveControlValues:[Ljava/lang/String;

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedForceDimming:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutoBrightnessEnabled:Z

.field private mAutoBrightnessScaleFactorSetting:I

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mBatteryLevelCritical:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBeforeScreenBrightness:I

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBrightnessLevelBin:I

.field private mBrightnessLevelDuration:[J

.field private mBrightnessLevelTriggeredTime:[J

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessRampRateFast:I

.field private final mBrightnessRampRateSlow:I

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mClearViewColorWeaknessEnabledMode:I

.field private final mColorFadeEnabled:Z

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:I

.field private mDisplayBlanksAfterDozeConfig:Z

.field private mDisplayReadyLocked:Z

.field private mDozing:Z

.field private mEarlyWakeUp:Z

.field private mFinalScreenBrightnessDiff:I

.field private mForceSlowChange:Z

.field private mForcedSustainableHbmByTimeout:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mInitialAutoBrightness:I

.field private mInitialAutoBrightnessUpdated:Z

.field private mIsOutdoorModeEnabled:Z

.field private mLastAdaptiveControlState:Z

.field private mLastAmbientLux:F

.field private mLastAutomaticScreenBrightness:I

.field private mLastBatteryLevelCriticalTime:J

.field private mLastBrightnessConfigurationTime:J

.field private mLastCoverClosedState:Z

.field private mLastNotifiedBrightness:I

.field private mLastOriginalTarget:I

.field private mLastScreenBrightnessSettingBeforeForceDim:I

.field private mLastScreenBrightnessSettingChangedTime:J

.field private mLastSustainableHbmExceededTime:J

.field private mLastUserSetScreenBrightness:I

.field private mLcdFlashModeEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPassRampAnimation:Z

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingAutoBrightnessScaleFactorSetting:I

.field private mPendingEarlyWakeUpLocked:Z

.field private mPendingForceSlowChangeLocked:Z

.field private mPendingForceUpdateAb:Z

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:I

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnByAodReady:Z

.field private mPendingScreenOnEvenThoughProximityPositiveLocked:Z

.field private mPendingScreenOnFromDozeSuspend:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedInternalScreenStateToPolicy:I

.field private mReportedScreenStateToPolicy:I

.field private mResetBrightnessConfiguration:Z

.field private final mScreenBrightnessDefault:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessForVr:I

.field private final mScreenBrightnessForVrDefault:I

.field private final mScreenBrightnessForVrRangeMaximum:I

.field private final mScreenBrightnessForVrRangeMinimum:I

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBrightnessRangeForClearView:[I

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mScreenBrightnessSustainableHbmThresholdConfig:I

.field private final mScreenExtendedBrightnessRangeMaximum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnEvenThoughProximityPositive:Z

.field private mScreenTurnedOnWhileProximityPositive:Z

.field private mSeamlessAodReady:Z

.field private mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorNegativeDebounceDelay:I

.field private mSensorPositiveDebounceDelay:I

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mSustainableHbmExceeded:Z

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:I

.field private mUnfinishedBusiness:Z

.field private mUseHbmAtManualMax:Z

.field private mUseLuxErrorCorrection:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUseSustainbleHBMConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .registers 52

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_MODE_NONE:I

    const/4 v11, 0x1

    iput v11, v15, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_MODE_COLOR_WEAKNESS:I

    const/4 v0, 0x2

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_MODE_CLEAR_VIEW:I

    const-string v1, "/sys/class/backlight/panel/weakness_hbm_comp"

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->CLEAR_VIEW_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/backlight/panel/weakness_hbm_comp"

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->COLOR_WEAKNESS_MODE_PATH:Ljava/lang/String;

    const-string v1, "/sys/class/lcd/panel/adaptive_control"

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->ADAPTIVE_CONTROL_PATH:Ljava/lang/String;

    const v1, 0x3f553f7d    # 0.833f

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->CLEAR_VIEW_BRIGHTNESS_MODE_RATIO:F

    const/high16 v1, 0x3f200000    # 0.625f

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->COLOR_WEAKNESS_MODE_RATIO:F

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    iput-boolean v11, v15, Lcom/android/server/display/DisplayPowerController;->mLastAdaptiveControlState:Z

    const/4 v12, 0x0

    iput-object v12, v15, Lcom/android/server/display/DisplayPowerController;->mAdaptiveControlValues:[Ljava/lang/String;

    iput-object v12, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeForClearView:[I

    const/4 v10, -0x1

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const-wide/16 v1, -0x1

    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    iput-object v12, v15, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    iput-object v12, v15, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:I

    const/4 v0, 0x3

    new-array v3, v0, [J

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    new-array v0, v0, [J

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:I

    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    new-instance v0, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v0, Lcom/android/server/display/BrightnessTracker;

    invoke-direct {v0, v13, v12}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v15, v1}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    move-object/from16 v9, p2

    iput-object v9, v15, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v8, p4

    iput-object v8, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-class v0, Lcom/samsung/android/aod/AODManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/aod/AODManagerInternal;

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    move-object/from16 v7, p5

    iput-object v7, v15, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iput-object v13, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v0, 0x10e00bc

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v5

    const v0, 0x10e00b4

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    const v0, 0x10e00b3

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    iget v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    const v0, 0x10e00bb

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const v0, 0x10e00ba

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    const v0, 0x10e00b8

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    const v0, 0x10e00b7

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    const v0, 0x10e00b6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    iget v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const v1, 0x10e00b5

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:I

    const v0, 0x10e00bd

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    iget v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:I

    iget v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    if-le v0, v1, :cond_175

    iput-boolean v11, v15, Lcom/android/server/display/DisplayPowerController;->mUseSustainbleHBMConfig:Z

    :cond_175
    const v0, 0x1120026

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    const v0, 0x112000f

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v0, :cond_193

    const v0, 0x10e002c

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_195

    :cond_193
    const/16 v0, 0x7d0

    :goto_195
    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    const v0, 0x10e002d

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    iget-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v0, :cond_339

    const v0, 0x1130003

    invoke-virtual {v6, v0, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v23

    const v0, 0x107004e

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    const v0, 0x107004f

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const v0, 0x1070050

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const v0, 0x1070051

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    new-instance v0, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    move-object/from16 v16, v0

    const v0, 0x10e001e

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v11, v0

    const v0, 0x10e001f

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v14, v0

    const v0, 0x1120022

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    const v0, 0x10e0074

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v28

    const v0, 0x10e0022

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move-object/from16 v29, v1

    const/16 v1, 0x32

    if-ne v1, v10, :cond_203

    move v1, v0

    move/from16 v33, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    goto :goto_233

    :cond_203
    if-le v1, v0, :cond_22d

    const-string v10, "DisplayPowerController"

    move-object/from16 v31, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v3

    const-string v3, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_231

    :cond_22d
    move-object/from16 v31, v2

    move-object/from16 v32, v3

    :goto_231
    move/from16 v33, v1

    :goto_233
    const v1, 0x10e0020

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-gez v1, :cond_23f

    const v1, 0x9c40

    :cond_23f
    move/from16 v34, v1

    const v1, 0x10e0081

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v35

    const v1, 0x10e007f

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v36

    const v1, 0x10e0080

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v37

    if-ltz v35, :cond_26b

    if-ltz v36, :cond_26b

    if-gez v37, :cond_262

    move-wide/from16 v38, v14

    const/4 v14, 0x1

    move-object/from16 v15, p0

    goto :goto_270

    :cond_262
    move-wide/from16 v38, v14

    const/4 v14, 0x1

    move-object/from16 v15, p0

    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mUseLuxErrorCorrection:Z

    const/4 v10, 0x0

    goto :goto_273

    :cond_26b
    move-wide/from16 v38, v14

    const/4 v14, 0x1

    move-object/from16 v15, p0

    :goto_270
    const/4 v10, 0x0

    iput-boolean v10, v15, Lcom/android/server/display/DisplayPowerController;->mUseLuxErrorCorrection:Z

    :goto_273
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessScaleFactorSetting()I

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    const/4 v3, -0x1

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    invoke-static {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_324

    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v2, v15, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessScaleFactor(I)Z

    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v17

    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v10, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v14, v15, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:I

    iget-boolean v13, v15, Lcom/android/server/display/DisplayPowerController;->mUseLuxErrorCorrection:Z

    move/from16 v42, v13

    iget-object v13, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move/from16 v24, v0

    move-object v0, v2

    move-object/from16 v18, v1

    move-object/from16 v25, v29

    move-object v1, v15

    move-object/from16 v43, v2

    move-object/from16 v26, v31

    move-object/from16 v2, v17

    move/from16 v17, v3

    move-object/from16 v29, v32

    move-object v3, v8

    move-object/from16 v30, v4

    move-object/from16 v4, v18

    move/from16 v31, v5

    move/from16 v5, v28

    move-object/from16 v44, v6

    move v6, v10

    move v7, v14

    move/from16 v8, v23

    move/from16 v9, v24

    const/4 v14, 0x0

    move/from16 v10, v33

    move-wide/from16 v40, v11

    move-object/from16 v22, v13

    move/from16 v18, v42

    move-wide/from16 v13, v38

    move/from16 v15, v27

    move/from16 v17, v34

    move/from16 v19, v35

    move/from16 v20, v36

    move/from16 v21, v37

    invoke-direct/range {v0 .. v22}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;IZIIILandroid/content/Context;)V

    move-object/from16 v1, v43

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v2, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->hasPersonalizedAutoBrightnessControl()Z

    move-result v1

    if-eqz v1, :cond_322

    const-string v1, "DisplayPowerController"

    const-string v2, "[PAB] Load PAC point"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pac_offset_list"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "pac_0lux_changed"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_313

    const/4 v3, 0x1

    goto :goto_314

    :cond_313
    move v3, v5

    :goto_314
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    instance-of v4, v4, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;

    if-eqz v4, :cond_321

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    check-cast v4, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SecMappingStrategy;->loadPoint(Ljava/lang/String;Z)V

    :cond_321
    goto :goto_33f

    :cond_322
    const/4 v5, 0x0

    goto :goto_33f

    :cond_324
    move/from16 v24, v0

    move-object/from16 v30, v4

    move-object/from16 v44, v6

    move-wide/from16 v40, v11

    move-object v0, v15

    move-object/from16 v25, v29

    move-object/from16 v26, v31

    move-object/from16 v29, v32

    move/from16 v31, v5

    move v5, v10

    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto :goto_33f

    :cond_339
    move/from16 v31, v5

    move-object/from16 v44, v6

    move v5, v14

    move-object v0, v15

    :goto_33f
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const v1, 0x112001f

    move-object/from16 v3, v44

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    const v1, 0x112004c

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const v1, 0x112004d

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_380

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    :cond_380
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/backlight/panel/weakness_hbm_comp"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b3

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_COLOR_WEAKNESS_MODE:Z

    goto :goto_3b5

    :cond_3b3
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_COLOR_WEAKNESS_MODE:Z

    :goto_3b5
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/lcd/panel/adaptive_control"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d7

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_ADAPTIVE_CONTROL:Z

    const v1, 0x107005a

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveControlValues:[Ljava/lang/String;

    const v1, 0x10700a6

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeForClearView:[I

    goto :goto_3d9

    :cond_3d7
    iput-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_ADAPTIVE_CONTROL:Z

    :goto_3d9
    new-instance v1, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->resetScreenBrightnessLevelDuration()V

    new-instance v1, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/server/display/DisplayPowerController;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/display/DisplayPowerController;F)F
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayPowerController;)F
    .registers 2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayPowerController;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method private addScreenBrightnessLevelDuration()V
    .registers 9

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    if-ltz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    aget-wide v2, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    aget-wide v6, v6, v7

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    :cond_23
    return-void
.end method

.method private animateScreenBrightness(II)V
    .registers 7

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (PSM:, AB limit:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") MB Limit:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", sf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6e

    :cond_6c
    const-string v2, ""

    :goto_6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_9f

    const-wide/32 v0, 0x20000

    const-string v2, "TargetScreenBrightness"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :try_start_88
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->updateScreenBrightnessLevelDuration(I)V

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mUseLuxErrorCorrection:Z

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->onBrightnessChanged(I)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_9d} :catch_9e

    :cond_9d
    goto :goto_9f

    :catch_9e
    move-exception v0

    :cond_9f
    :goto_9f
    return-void
.end method

.method private animateScreenStateChange(IIIZ)V
    .registers 12

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateScreenStateChange: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetInternal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dualScreenPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3c
    if-eq p1, v1, :cond_3f

    return-void

    :cond_3f
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    :cond_41
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_62

    move v5, v1

    goto :goto_64

    :cond_62
    nop

    move v5, v2

    :goto_64
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_70
    if-eq p1, v3, :cond_74

    move v0, v3

    goto :goto_75

    :cond_74
    move v0, v2

    :goto_75
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    :cond_78
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_88

    if-eq p1, v3, :cond_88

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    :cond_88
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v0, :cond_94

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnFromDozeSuspend:Z

    if-eqz v0, :cond_94

    if-eq p1, v1, :cond_94

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnFromDozeSuspend:Z

    :cond_94
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-ne p1, v1, :cond_df

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v6, :cond_ab

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v6

    if-ne v6, v5, :cond_ab

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnFromDozeSuspend:Z

    :cond_ab
    invoke-direct {p0, v1, p2, p3, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v1

    if-nez v1, :cond_b2

    return-void

    :cond_b2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v1

    if-nez v1, :cond_c6

    const-string v0, "DisplayPowerController"

    const-string v1, "animateScreenStateChange is returned because lux is not yet valid!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c6
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUp:Z

    if-eqz v1, :cond_d3

    const-string v1, "DisplayPowerController"

    const-string v3, "animateScreenStateChange : Display.STATE_ON, set mEarlyWakeUp as false"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUp:Z

    :cond_d3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1e1

    :cond_df
    const/4 v6, 0x5

    if-ne p1, v6, :cond_106

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-ne v2, v1, :cond_f3

    return-void

    :cond_f3
    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_fa

    return-void

    :cond_fa
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1e1

    :cond_106
    if-ne p1, v4, :cond_12c

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v3}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_119

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-ne v3, v1, :cond_119

    return-void

    :cond_119
    invoke-direct {p0, v4, p2, p3, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v1

    if-nez v1, :cond_120

    return-void

    :cond_120
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1e1

    :cond_12c
    if-ne p1, v5, :cond_15d

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_13f

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_13f

    return-void

    :cond_13f
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_151

    invoke-direct {p0, v4, p2, p3, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v1

    if-nez v1, :cond_14e

    return-void

    :cond_14e
    invoke-direct {p0, v5, p2, p3, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    :cond_151
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1e1

    :cond_15d
    const/4 v5, 0x6

    if-ne p1, v5, :cond_18e

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_171

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-eq v2, v5, :cond_171

    return-void

    :cond_171
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-eq v2, v5, :cond_183

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_180

    return-void

    :cond_180
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    :cond_183
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_1e1

    :cond_18e
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v5, 0x0

    if-nez v0, :cond_19a

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    :cond_19a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_1af

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_1e1

    :cond_1af
    const/4 v0, 0x2

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-nez v2, :cond_1bb

    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    if-eqz v2, :cond_1b9

    goto :goto_1ba

    :cond_1b9
    move v4, v3

    :goto_1ba
    move v0, v4

    :cond_1bb
    if-eqz p4, :cond_1d5

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1d5

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-eq v2, v3, :cond_1d5

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1e1

    :cond_1d5
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :goto_1e1
    return-void
.end method

.method private animateScreenStateChange(IZ)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p1, v0, p2}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIIZ)V

    return-void
.end method

.method private blockScreenOff()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_22

    const-wide/32 v0, 0x20000

    const-string v2, "Screen off blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method private blockScreenOn()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_22

    const-wide/32 v0, 0x20000

    const-string v2, "Screen on blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .registers 4

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessExtended(I)I
    .registers 4

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(I)I
    .registers 4

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .registers 5

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    :cond_11
    return-void
.end method

.method private convertToNits(I)F
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    :cond_b
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_34

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_26

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_34

    :cond_26
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_34
    :goto_34
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnEvenThoughProximityPositive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenTurnedOnWhileProximityPositive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy(internal)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_35a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_35a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_378

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastBrightnessConfigurationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessConfigurationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForceUpdateAb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_3ad

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    :cond_3ad
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3b6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    :cond_3b6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_3c2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    :cond_3c2
    return-void
.end method

.method private forceUpdateAbJob()V
    .registers 6

    const-string v0, "DisplayPowerController"

    const-string/jumbo v1, "forceUpdateAbJob"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    const-string v1, "com.google.android.apps.turbo"

    const/4 v2, 0x0

    const/16 v3, 0x68

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerInternal;->executeJobForPackageAndJobId(Ljava/lang/String;IIZ)I

    return-void
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v2

    :goto_1a
    return v2
.end method

.method private getAutoBrightnessScaleFactorSetting()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_limit"

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

    if-eqz v2, :cond_f

    const/16 v2, 0x5a

    goto :goto_11

    :cond_f
    const/16 v2, 0x64

    :goto_11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getFinalBrightness(I)I
    .registers 10

    move v0, p1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mFinalScreenBrightnessDiff:I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_45

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_45

    const-string v3, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFinalBrightness: screenBrightnessScaleFactor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v6, v0

    mul-float/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v3, v0

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessExtended(I)I

    move-result v0

    invoke-static {v4}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_48

    :cond_45
    invoke-static {v4}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    :goto_48
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    const/4 v5, 0x2

    if-ltz v3, :cond_80

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    if-ge v0, v3, :cond_80

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    const-string v3, "DisplayPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getFinalBrightness : [mPowerRequest.minBrightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]  modiTarget  -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_83

    :cond_80
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    :goto_83
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    if-ltz v3, :cond_ba

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    if-le v0, v3, :cond_ba

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    const-string v3, "DisplayPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getFinalBrightness : [mPowerRequest.maxBrightness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]  modiTarget  -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_bd

    :cond_ba
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    :goto_bd
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mUseSustainbleHBMConfig:Z

    const/16 v5, 0x10

    if-eqz v3, :cond_ca

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->updateSustainableHbm(I)I

    move-result v0

    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    :cond_ca
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    sub-int v3, v0, p1

    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mFinalScreenBrightnessDiff:I

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v3, :cond_152

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    const/4 v5, 0x4

    if-ltz v3, :cond_110

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-le v0, v3, :cond_10d

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    const-string v3, "DisplayPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getFinalBrightness : [autoBrightnessUpperLimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] modiTarget  -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_110

    :cond_10d
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    :cond_110
    :goto_110
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ltz v3, :cond_152

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v3, :cond_152

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v3, :cond_152

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ge v0, v3, :cond_14f

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    const-string v3, "DisplayPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getFinalBrightness : [autoBrightnessLowerLimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " modiTarget  -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_152

    :cond_14f
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    :cond_152
    :goto_152
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    const/16 v5, 0x8

    if-eqz v3, :cond_167

    const-string v3, "DisplayPowerController"

    const-string/jumbo v6, "forceLcdBacklightOff!"

    invoke-static {v3, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_16a

    :cond_167
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    :goto_16a
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-nez v3, :cond_176

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    if-eqz v3, :cond_197

    :cond_176
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_197

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:I

    const/16 v3, 0xff

    if-le v1, v3, :cond_186

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:I

    goto :goto_188

    :cond_186
    const/16 v0, 0xff

    :goto_188
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    if-eqz v1, :cond_1ab

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    goto :goto_1ab

    :cond_197
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    if-eqz v3, :cond_1ab

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v3, :cond_1ab

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    if-eqz v3, :cond_1ab

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    :cond_1ab
    :goto_1ab
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-eq v1, v3, :cond_1c1

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v1, :cond_1c1

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    :cond_1c1
    const-string v1, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFinalBrightness : Summary is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$History;->reasonChanged()Z

    move-result v1

    if-eqz v1, :cond_203

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFinalBrightness : Summary is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil$History;->addChangeReason(Ljava/lang/String;)V

    :cond_203
    return v0
.end method

.method private getScreenBrightnessForVrSetting()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_for_vr"

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(I)I

    move-result v1

    return v1
.end method

.method private getScreenBrightnessModeSetting()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getScreenBrightnessSetting()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    return v1
.end method

.method private handleProximitySensorEvent(JZ)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_3f

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_b

    if-nez p3, :cond_b

    return-void

    :cond_b
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    if-eqz p3, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eqz p3, :cond_2c

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    if-eq v1, v2, :cond_26

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    nop

    :cond_26
    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_3c

    :cond_2c
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    if-eq v0, v2, :cond_35

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    goto :goto_37

    :cond_35
    const/16 v0, 0xfa

    :goto_37
    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    :goto_3c
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    :cond_3f
    return-void
.end method

.method private handleSettingsChange(Z)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    if-eqz p1, :cond_1a

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1a

    const-string v0, "ShortTermModel: reset data, user switch"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil$History;->addAutoBrightness(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_1a
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:I

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v1

    if-eq v0, v1, :cond_41

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3e

    const-string v0, "ShortTermModel: reset data, manual"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil$History;->addAutoBrightness(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_3e
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    :cond_41
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessScaleFactorSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sm: %1d sb: %3d abAdj: %2.3f sbVr: %3d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] handleSettingsChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_99

    const-string v3, " userSwitch"

    goto :goto_9b

    :cond_99
    const-string v3, ""

    :goto_9b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method private initialize()V
    .registers 7

    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    new-instance v2, Lcom/android/server/display/ColorFade;

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_f4

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xa0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_fc

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_54
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerState;->setColorFadeStateRunnable(Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;)V

    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    :try_start_6d
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_83} :catch_84

    goto :goto_85

    :catch_84
    move-exception v0

    :goto_85
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_99

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    :cond_99
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_for_vr"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_limit"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :array_f4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_fc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private notifyBrightnessChanged(IZZ)V
    .registers 11

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    if-nez p2, :cond_18

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessScaleFactorValue()F

    move-result v1

    div-float/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v1, :cond_44

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    :goto_31
    move v4, v1

    goto :goto_36

    :cond_33
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_31

    :goto_36
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v6

    move v2, v0

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    :cond_44
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "Positive"

    return-object v0

    :pswitch_b
    const-string v0, "Negative"

    return-object v0

    :pswitch_e
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .registers 5

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putAutoBrightnessAdjustmentSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method private putScreenBrightnessSetting(II)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v0, :cond_56

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    if-ne v0, p1, :cond_d

    goto :goto_56

    :cond_d
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putScreenBrightnessSetting: transitionTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_transition_time"

    const/4 v2, -0x2

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putScreenBrightnessSetting: brightness="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_56
    :goto_56
    return-void
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    :pswitch_b
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    :pswitch_e
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private resetScreenBrightnessLevelDuration()V
    .registers 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendUpdatePowerState()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .registers 7

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    :cond_d
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .registers 7

    if-eqz p1, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_42

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    const-string v0, "DisplayPowerController"

    const-string/jumbo v1, "setProximitySensorEnabled::registerListener"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_42

    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    const-string v0, "DisplayPowerController"

    const-string/jumbo v1, "setProximitySensorEnabled::unregisterListener"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    :cond_42
    :goto_42
    return-void
.end method

.method private setReportedScreenState(I)V
    .registers 5

    const-string v0, "ReportedScreenStateToPolicy"

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    return-void
.end method

.method private setScreenState(I)Z
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(II)Z
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IIIZ)Z
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-ne v3, p1, :cond_21

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenStateInternal()I

    move-result v3

    if-ne v3, p2, :cond_21

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getDualScreenPolicyInternal()I

    move-result v3

    if-eq v3, p3, :cond_d6

    :cond_21
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-eq v3, v5, :cond_34

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-ne v3, v4, :cond_32

    goto :goto_34

    :cond_32
    move v3, v1

    goto :goto_35

    :cond_34
    :goto_34
    move v3, v0

    :goto_35
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_5c

    if-eqz v3, :cond_58

    if-ne p1, v7, :cond_58

    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    if-nez v6, :cond_58

    const-string v4, "DisplayPowerController"

    const-string/jumbo v5, "setScreenState(): mSeamlessAodReady : false AOD"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/aod/AODManagerInternal;->screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    :cond_57
    return v1

    :cond_58
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    :cond_5c
    if-ne p1, v7, :cond_60

    move v6, v0

    goto :goto_61

    :cond_60
    move v6, v1

    :goto_61
    if-ne p2, v7, :cond_65

    move v8, v0

    goto :goto_66

    :cond_65
    move v8, v1

    :goto_66
    if-eqz v6, :cond_96

    if-eqz v8, :cond_7e

    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    if-nez v9, :cond_98

    const-string v9, "DisplayPowerController"

    const-string/jumbo v10, "mWindowManagerPolicy.internalScreenTurningOn"

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->internalScreenTurningOn()V

    iput v7, p0, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    goto :goto_98

    :cond_7e
    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    if-ne v9, v7, :cond_98

    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v9, v7, :cond_93

    const-string v9, "DisplayPowerController"

    const-string/jumbo v10, "mWindowManagerPolicy.internalScreenTurningOff"

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->internalScreenTurningOff()V

    :cond_93
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    goto :goto_98

    :cond_96
    iput v7, p0, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    :cond_98
    :goto_98
    if-eqz v2, :cond_c0

    iget-boolean v9, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v9, :cond_c0

    iget v9, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v9, v7, :cond_bb

    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    const-string v7, "DisplayPowerController"

    const-string/jumbo v9, "mWindowManagerPolicy.screenTurningOff()"

    invoke-static {v7, v9}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v7, v9}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    goto :goto_c0

    :cond_bb
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v7, :cond_c0

    return v1

    :cond_c0
    :goto_c0
    if-nez p4, :cond_d6

    const-wide/32 v9, 0x20000

    const-string v7, "ScreenState"

    invoke-static {v9, v10, v7, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/display/DisplayPowerState;->setScreenState(III)V

    :try_start_cf
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_d4} :catch_d5

    goto :goto_d6

    :catch_d5
    move-exception v7

    :cond_d6
    :goto_d6
    if-eq p1, v5, :cond_dd

    if-ne p1, v4, :cond_db

    goto :goto_dd

    :cond_db
    move v3, v1

    goto :goto_de

    :cond_dd
    :goto_dd
    move v3, v0

    :goto_de
    if-eqz v2, :cond_fc

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v4, :cond_fc

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v4, :cond_fc

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    const-string v4, "DisplayPowerController"

    const-string/jumbo v5, "mWindowManagerPolicy.screenTurnedOff()"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_115

    :cond_fc
    if-nez v2, :cond_115

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v4, v5, :cond_115

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    const-string v4, "DisplayPowerController"

    const-string/jumbo v5, "mWindowManagerPolicy.screenTurnedOff()(transitional)"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    :cond_115
    :goto_115
    if-nez v2, :cond_149

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v4, :cond_149

    if-nez v3, :cond_149

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_12f

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_132

    :cond_12f
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    :goto_132
    const-string v4, "DisplayPowerController"

    const-string/jumbo v5, "mWindowManagerPolicy.screenTurningOn() +"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    const-string v4, "DisplayPowerController"

    const-string/jumbo v5, "mWindowManagerPolicy.screenTurningOn() -"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_149
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v4, :cond_14e

    goto :goto_14f

    :cond_14e
    move v0, v1

    :goto_14f
    return v0
.end method

.method private setScreenState(IZ)Z
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p1, v0, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v0

    return v0
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    :pswitch_b
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    :pswitch_e
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private unblockScreenOff()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen off after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x20000

    const-string v4, "Screen off blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_32
    return-void
.end method

.method private unblockScreenOn()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x20000

    const-string v4, "Screen on blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_32
    return-void
.end method

.method private updateAdaptiveControlState(ZI)V
    .registers 8

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeForClearView:[I

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeForClearView:[I

    array-length v1, v1

    if-lez v1, :cond_21

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeForClearView:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-gt v1, p2, :cond_24

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeForClearView:[I

    aget v1, v1, v2

    if-gt p2, v1, :cond_24

    xor-int/lit8 v1, p1, 0x1

    move v0, v1

    goto :goto_24

    :cond_21
    xor-int/lit8 v1, p1, 0x1

    move v0, v1

    :cond_24
    :goto_24
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastAdaptiveControlState:Z

    if-eq v0, v1, :cond_94

    const-string v1, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AdaptiveControl] : brightness("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), useClearView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "), adaptiveControlState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "), mLastAdaptiveControlState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastAdaptiveControlState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_79

    const-string v1, "DisplayPowerController"

    const-string v3, "[AdaptiveControl]: ACL ON"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_67
    move v1, v2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_92

    const-string v2, "/sys/class/lcd/panel/adaptive_control"

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_67

    :cond_79
    const-string v1, "DisplayPowerController"

    const-string v3, "[AdaptiveControl]: ACL OFF"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    :goto_84
    if-ltz v1, :cond_92

    const-string v2, "/sys/class/lcd/panel/adaptive_control"

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_84

    :cond_92
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastAdaptiveControlState:Z

    :cond_94
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .registers 4

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_17

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    return v1

    :cond_17
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    return v0
.end method

.method private updateAutoBrightnessScaleFactor()Z
    .registers 5

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    if-ne v0, v3, :cond_10

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    return v1

    :cond_10
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    const/4 v0, 0x1

    return v0
.end method

.method private updateColorWeaknessMode(ZZ)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_COLOR_WEAKNESS_MODE:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    if-nez p2, :cond_e

    return-void

    :cond_e
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    if-eqz p2, :cond_16

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    goto :goto_1f

    :cond_16
    if-eqz p1, :cond_1c

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    goto :goto_1f

    :cond_1c
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    :goto_1f
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    if-eq v0, v1, :cond_42

    const-string v1, "/sys/class/backlight/panel/weakness_hbm_comp"

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorWeakness] mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void
.end method

.method private updateForceUpdateAbJob()V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessConfigurationTime:J

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_35

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    if-nez v4, :cond_35

    if-nez v0, :cond_35

    if-eqz v1, :cond_35

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->appliedShortTermModel()Z

    move-result v4

    if-nez v4, :cond_35

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->forceUpdateAbJob()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    :cond_35
    return-void
.end method

.method private updateLastBrightnessSettingChangedTime()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    return-void
.end method

.method private updatePowerState()V
    .registers 65

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_f

    monitor-exit v3

    return-void

    :cond_f
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_44

    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v4, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpLocked:Z

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUp:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpLocked:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    const/4 v2, 0x1

    goto :goto_83

    :cond_44
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v4, :cond_83

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v4, v5

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    or-int/2addr v4, v5

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    or-int/2addr v4, v5

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUp:Z

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpLocked:Z

    or-int/2addr v4, v5

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUp:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpLocked:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_764

    :cond_83
    :goto_83
    :try_start_83
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    monitor-exit v3
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_760

    if-eqz v2, :cond_8d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    :cond_8d
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUp:Z

    if-eqz v3, :cond_ad

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_ad

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v3

    if-eq v3, v5, :cond_a7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v3

    if-nez v3, :cond_ad

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-ne v3, v6, :cond_ad

    :cond_a7
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v3, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    goto :goto_af

    :cond_ad
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUp:Z

    :goto_af
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    invoke-direct {v1, v3, v6}, Lcom/android/server/display/DisplayPowerController;->updateColorWeaknessMode(ZZ)V

    const/4 v3, -0x1

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v7, v9, :cond_e1

    packed-switch v7, :pswitch_data_768

    move v7, v10

    goto :goto_e3

    :pswitch_c9
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v7, :cond_d4

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    goto :goto_d5

    :cond_d4
    const/4 v7, 0x3

    :goto_d5
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v11, :cond_e3

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_e3

    :pswitch_de
    const/4 v7, 0x1

    const/4 v6, 0x1

    goto :goto_e3

    :cond_e1
    const/4 v7, 0x5

    nop

    :cond_e3
    :goto_e3
    nop

    nop

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v11, :cond_159

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v11, :cond_103

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v11, :cond_103

    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_12e

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v5, :cond_12e

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    goto :goto_12e

    :cond_103
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v11, :cond_11f

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_11f

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v5, :cond_11f

    if-eq v7, v5, :cond_11f

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    if-nez v11, :cond_11f

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v11, :cond_11f

    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_12e

    :cond_11f
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-nez v11, :cond_12e

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    :cond_12e
    :goto_12e
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_136

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    if-eqz v11, :cond_147

    :cond_136
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v11, v5, :cond_147

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-nez v11, :cond_142

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    :cond_142
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    :cond_147
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_15b

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v11, v5, :cond_15b

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v11, :cond_15b

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_15b

    :cond_159
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    :cond_15b
    :goto_15b
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_16b

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-nez v11, :cond_16b

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    if-nez v11, :cond_16b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    const/4 v7, 0x1

    :cond_16b
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    if-eqz v12, :cond_179

    move v12, v5

    goto :goto_17a

    :cond_179
    move v12, v7

    :goto_17a
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    invoke-direct {v1, v7, v12, v13, v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIIZ)V

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v7

    if-eq v7, v5, :cond_18f

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    if-eqz v14, :cond_190

    :cond_18f
    const/4 v3, 0x0

    :cond_190
    const/4 v14, 0x5

    if-ne v7, v14, :cond_195

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    :cond_195
    const/16 v15, 0x20

    if-gez v3, :cond_1a9

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-ltz v14, :cond_1a9

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-static {v15}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_1ae

    :cond_1a9
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-static {v15}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    :goto_1ae
    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v14, :cond_1ba

    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v14

    if-eqz v14, :cond_1ba

    move v14, v5

    goto :goto_1bb

    :cond_1ba
    move v14, v0

    :goto_1bb
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v15, :cond_1cd

    if-eq v7, v10, :cond_1c5

    if-eqz v14, :cond_1cd

    :cond_1c5
    if-gez v3, :cond_1cd

    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v15, :cond_1cd

    move v15, v5

    goto :goto_1ce

    :cond_1cd
    move v15, v0

    :goto_1ce
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eq v10, v15, :cond_1d8

    iput-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eqz v15, :cond_1d8

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    :cond_1d8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v10

    if-nez v10, :cond_1e4

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    if-ne v9, v8, :cond_1e7

    :cond_1e4
    const/4 v8, -0x1

    iput v8, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    :cond_1e7
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    const/16 v9, 0x40

    if-ltz v8, :cond_1f5

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_1fa

    :cond_1f5
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    :goto_1fa
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v8

    if-eqz v8, :cond_204

    const/high16 v9, 0x7fc00000    # Float.NaN

    iput v9, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    :cond_204
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessScaleFactor()Z

    move-result v9

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_216

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    :goto_214
    move v5, v0

    goto :goto_21c

    :cond_216
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    goto :goto_214

    :goto_21c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v0, :cond_22a

    if-eqz v3, :cond_22a

    const/16 v3, 0xff

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_22d

    :cond_22a
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    :goto_22d
    const/4 v0, 0x0

    sget-boolean v17, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

    if-eqz v17, :cond_292

    move/from16 v29, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-nez v0, :cond_263

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-eq v3, v0, :cond_247

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    move/from16 v30, v2

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-ne v0, v2, :cond_265

    goto :goto_249

    :cond_247
    move/from16 v30, v2

    :goto_249
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v0, :cond_265

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    if-nez v0, :cond_265

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_265

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_265

    const/4 v0, 0x1

    goto :goto_267

    :cond_263
    move/from16 v30, v2

    :cond_265
    move/from16 v0, v29

    :goto_267
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    if-eq v2, v0, :cond_28b

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    const-string v2, "DisplayPowerController"

    move/from16 v31, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v6

    const-string/jumbo v6, "updatePowerState : mUseHbmAtManualMax : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28f

    :cond_28b
    move/from16 v31, v0

    move/from16 v32, v6

    :goto_28f
    move/from16 v29, v31

    goto :goto_298

    :cond_292
    move/from16 v29, v0

    move/from16 v30, v2

    move/from16 v32, v6

    :goto_298
    const/4 v0, 0x0

    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    if-eqz v2, :cond_2a2

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    :cond_2a2
    move v2, v0

    if-gez v3, :cond_2ab

    if-nez v8, :cond_2a9

    if-eqz v10, :cond_2ab

    :cond_2a9
    const/4 v0, 0x1

    goto :goto_2ac

    :cond_2ab
    const/4 v0, 0x0

    :goto_2ac
    move v6, v0

    const/4 v0, 0x0

    move/from16 v33, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_2ff

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v0

    move/from16 v34, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v15, :cond_2ca

    move/from16 v35, v12

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUp:Z

    if-eqz v12, :cond_2c7

    goto :goto_2cc

    :cond_2c7
    const/16 v18, 0x0

    goto :goto_2ce

    :cond_2ca
    move/from16 v35, v12

    :goto_2cc
    const/16 v18, 0x1

    :goto_2ce
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    move/from16 v36, v13

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move/from16 v37, v14

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    int-to-float v14, v14

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v21, v14, v17

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v38, v4

    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    move-object/from16 v17, v0

    move/from16 v19, v12

    move-object/from16 v20, v13

    move/from16 v22, v10

    move/from16 v23, v5

    move/from16 v24, v8

    move/from16 v25, v14

    move/from16 v26, v2

    move/from16 v27, v4

    move/from16 v28, v9

    invoke-virtual/range {v17 .. v28}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZZLandroid/hardware/display/BrightnessConfiguration;FZFZIZIZ)V

    move/from16 v4, v34

    goto :goto_309

    :cond_2ff
    move/from16 v38, v4

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v37, v14

    move/from16 v4, v33

    :goto_309
    const/4 v0, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "sys.display.transition.weight"

    const/16 v14, 0x2d

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x0

    const-wide v17, 0x408f400000000000L    # 1000.0

    if-gez v3, :cond_421

    move/from16 v19, v5

    if-eqz v15, :cond_331

    move/from16 v39, v0

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v3

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v19

    move/from16 v0, v19

    goto :goto_335

    :cond_331
    move/from16 v39, v0

    move/from16 v0, v19

    :goto_335
    if-ltz v3, :cond_403

    move/from16 v40, v9

    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:I

    if-eq v3, v9, :cond_343

    const/4 v12, 0x1

    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:I

    :cond_343
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessExtended(I)I

    move-result v3

    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v9, :cond_3ec

    if-nez v8, :cond_3ec

    if-eqz v12, :cond_3ec

    const/4 v9, 0x1

    sget-boolean v19, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v19, :cond_3db

    move/from16 v41, v3

    move/from16 v42, v3

    move/from16 v43, v8

    const/4 v8, 0x1

    if-ge v3, v8, :cond_361

    const/16 v41, 0x1

    move/from16 v3, v41

    :cond_361
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v8}, Lcom/android/server/display/RampAnimator;->getTarget()I

    move-result v8

    move/from16 v44, v9

    const/4 v9, 0x1

    if-ge v8, v9, :cond_36d

    const/4 v8, 0x1

    :cond_36d
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v9}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v9

    move/from16 v45, v10

    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    const/16 v19, 0x0

    cmpg-float v20, v9, v19

    if-gtz v20, :cond_380

    const v9, 0x3f666666    # 0.9f

    :cond_380
    cmpg-float v19, v10, v19

    if-gtz v19, :cond_387

    const v10, 0x3f666666    # 0.9f

    :cond_387
    if-ge v3, v8, :cond_3c9

    move/from16 v46, v12

    const/16 v12, 0xff

    if-gt v8, v12, :cond_3c2

    move/from16 v47, v11

    int-to-double v11, v13

    move/from16 v48, v13

    div-int v13, v8, v3

    int-to-float v13, v13

    div-float v19, v10, v9

    mul-float v13, v13, v19

    move/from16 v49, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->log10(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    mul-double v11, v11, v17

    const-wide v13, 0x40ed4c0000000000L    # 60000.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v13, v11, v13

    if-lez v13, :cond_3d1

    const-wide v13, 0x406fe00000000000L    # 255.0

    div-double/2addr v13, v11

    mul-double v13, v13, v17

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v14, v13

    goto :goto_3d3

    :cond_3c2
    move/from16 v47, v11

    move/from16 v48, v13

    move/from16 v49, v14

    goto :goto_3d1

    :cond_3c9
    move/from16 v47, v11

    move/from16 v46, v12

    move/from16 v48, v13

    move/from16 v49, v14

    :cond_3d1
    :goto_3d1
    move/from16 v14, v49

    :goto_3d3
    iput v9, v1, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    nop

    move/from16 v3, v42

    move/from16 v12, v46

    goto :goto_419

    :cond_3db
    move/from16 v42, v3

    move/from16 v43, v8

    move/from16 v44, v9

    move/from16 v45, v10

    move/from16 v47, v11

    move/from16 v46, v12

    move/from16 v48, v13

    move/from16 v49, v14

    goto :goto_419

    :cond_3ec
    move/from16 v42, v3

    move/from16 v43, v8

    move/from16 v45, v10

    move/from16 v47, v11

    move/from16 v46, v12

    move/from16 v48, v13

    move/from16 v49, v14

    move/from16 v44, v39

    move/from16 v3, v42

    move/from16 v12, v46

    :goto_400
    move/from16 v14, v49

    goto :goto_419

    :cond_403
    move/from16 v43, v8

    move/from16 v40, v9

    move/from16 v45, v10

    move/from16 v47, v11

    move/from16 v48, v13

    move/from16 v49, v14

    if-eqz v15, :cond_413

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:I

    :cond_413
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    move/from16 v44, v39

    goto :goto_400

    :goto_419
    cmpl-float v8, v5, v0

    if-eqz v8, :cond_420

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    :cond_420
    goto :goto_434

    :cond_421
    move/from16 v39, v0

    move/from16 v43, v8

    move/from16 v40, v9

    move/from16 v45, v10

    move/from16 v47, v11

    move/from16 v48, v13

    move/from16 v49, v14

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    move/from16 v44, v39

    :goto_434
    const/4 v0, 0x3

    if-eq v7, v0, :cond_43d

    const/4 v0, 0x4

    if-ne v7, v0, :cond_43b

    goto :goto_43d

    :cond_43b
    const/4 v0, 0x0

    goto :goto_43e

    :cond_43d
    :goto_43d
    const/4 v0, 0x1

    :goto_43e
    move v8, v0

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v0, :cond_44d

    if-gez v3, :cond_44d

    if-nez v8, :cond_44b

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-eqz v0, :cond_44d

    :cond_44b
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:I

    :cond_44d
    if-gez v3, :cond_457

    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_457

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    :cond_457
    if-gez v3, :cond_47c

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v0

    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v3, :cond_465

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:I

    :cond_465
    move v3, v0

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    if-eqz v0, :cond_47c

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-ne v3, v0, :cond_47c

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v0

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-le v0, v9, :cond_47c

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessExtended(I)I

    move-result v3

    :cond_47c
    const/4 v0, 0x0

    const/4 v9, 0x0

    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eq v10, v11, :cond_498

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eqz v10, :cond_492

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    :cond_492
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iput-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    :cond_498
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    if-eqz v10, :cond_4b0

    iget-wide v10, v1, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    move/from16 v50, v12

    iget-wide v12, v1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_4b2

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-nez v10, :cond_4b2

    if-nez v8, :cond_4b2

    const/4 v0, 0x1

    goto :goto_4b2

    :cond_4b0
    move/from16 v50, v12

    :cond_4b2
    :goto_4b2
    move v10, v0

    if-eqz v10, :cond_4c6

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v0, :cond_4c6

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-nez v0, :cond_4c4

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:I

    :cond_4c4
    const/4 v9, 0x1

    goto :goto_4d7

    :cond_4c6
    if-nez v10, :cond_4d7

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v0, :cond_4d7

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-nez v0, :cond_4d6

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:I

    move v3, v0

    :cond_4d6
    const/4 v9, 0x1

    :cond_4d7
    :goto_4d7
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v0, :cond_4ed

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v0, :cond_4ed

    add-int/lit8 v0, v3, -0xa

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4ed
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x2

    if-ne v0, v11, :cond_516

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v0, :cond_50b

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v0, :cond_50b

    add-int/lit8 v0, v3, -0xa

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    :cond_50b
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v0, :cond_512

    const/4 v0, 0x0

    move/from16 v44, v0

    :cond_512
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto :goto_51f

    :cond_516
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v0, :cond_51f

    const/16 v44, 0x0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    :cond_51f
    :goto_51f
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v0, :cond_548

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v0, :cond_53d

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v12, v3

    mul-float/2addr v12, v0

    float-to-int v12, v12

    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    :cond_53d
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v0, :cond_544

    const/4 v0, 0x0

    move/from16 v44, v0

    :cond_544
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto :goto_551

    :cond_548
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v0, :cond_551

    const/16 v44, 0x0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    :cond_551
    :goto_551
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:I

    if-eq v0, v3, :cond_557

    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:I

    :cond_557
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v0, :cond_564

    const/16 v44, 0x1

    const-string v0, "DisplayPowerController"

    const-string v12, "ForceSlowChange is requested, set slowChange as true"

    invoke-static {v0, v12}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_564
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v0, :cond_6b4

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v0, :cond_59a

    const/4 v0, 0x2

    if-ne v7, v0, :cond_597

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v0, :cond_57d

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v0, :cond_57d

    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_59a

    :cond_57d
    const/4 v0, 0x1

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v12, v0, :cond_58e

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v0, :cond_58e

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    if-eq v3, v0, :cond_58e

    const/4 v0, 0x2

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_59a

    :cond_58e
    const/4 v0, 0x2

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v12, v0, :cond_59a

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_59a

    :cond_597
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    :cond_59a
    :goto_59a
    const/4 v0, 0x5

    if-eq v7, v0, :cond_5a4

    move/from16 v12, v47

    if-ne v12, v0, :cond_5a2

    goto :goto_5a6

    :cond_5a2
    const/4 v0, 0x0

    goto :goto_5a7

    :cond_5a4
    move/from16 v12, v47

    :goto_5a6
    const/4 v0, 0x1

    :goto_5a7
    const/4 v13, 0x2

    if-ne v7, v13, :cond_5b0

    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v13, :cond_5b0

    const/4 v13, 0x1

    goto :goto_5b1

    :cond_5b0
    const/4 v13, 0x0

    :goto_5b1
    if-eqz v15, :cond_5bb

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    if-eqz v11, :cond_5b9

    if-eqz v2, :cond_5bb

    :cond_5b9
    const/4 v11, 0x1

    goto :goto_5bc

    :cond_5bb
    const/4 v11, 0x0

    :goto_5bc
    nop

    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v16

    if-eqz v16, :cond_5cb

    move/from16 v51, v2

    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v2, :cond_5cd

    const/4 v2, 0x1

    goto :goto_5ce

    :cond_5cb
    move/from16 v51, v2

    :cond_5cd
    const/4 v2, 0x0

    :goto_5ce
    move/from16 v52, v5

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v5, :cond_5e2

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v5

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v16

    if-nez v5, :cond_5e2

    const/4 v5, 0x1

    goto :goto_5e3

    :cond_5e2
    const/4 v5, 0x0

    :goto_5e3
    move/from16 v53, v8

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    if-nez v8, :cond_5f0

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v8, :cond_5ee

    goto :goto_5f0

    :cond_5ee
    const/4 v8, 0x0

    goto :goto_5f1

    :cond_5f0
    :goto_5f0
    const/4 v8, 0x1

    :goto_5f1
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->getFinalBrightness(I)I

    move-result v3

    move/from16 v54, v10

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    invoke-direct {v1, v10, v3}, Lcom/android/server/display/DisplayPowerController;->updateAdaptiveControlState(ZI)V

    const/4 v10, 0x0

    move/from16 v55, v10

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v10}, Lcom/android/server/display/RampAnimator;->getTarget()I

    move-result v10

    if-nez v13, :cond_662

    if-nez v2, :cond_662

    if-nez v0, :cond_662

    if-eqz v5, :cond_662

    if-eqz v8, :cond_61b

    move/from16 v56, v0

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v0, :cond_618

    goto :goto_61d

    :cond_618
    :goto_618
    move/from16 v58, v2

    goto :goto_666

    :cond_61b
    move/from16 v56, v0

    :goto_61d
    const/4 v0, 0x1

    if-eq v12, v0, :cond_65f

    invoke-static {v12}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_65f

    invoke-static {v7}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_65f

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    if-nez v0, :cond_65f

    if-nez v11, :cond_65f

    if-eqz v9, :cond_635

    goto :goto_618

    :cond_635
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    if-eqz v44, :cond_644

    if-lez v14, :cond_63f

    move/from16 v57, v0

    move v0, v14

    goto :goto_643

    :cond_63f
    move/from16 v57, v0

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    :goto_643
    goto :goto_646

    :cond_644
    move/from16 v57, v0

    :goto_646
    move/from16 v58, v2

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->getTarget()I

    move-result v2

    if-eq v2, v3, :cond_653

    invoke-direct {v1, v3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    :cond_653
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_66c

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    goto :goto_66c

    :cond_65f
    move/from16 v58, v2

    goto :goto_666

    :cond_662
    move/from16 v56, v0

    move/from16 v58, v2

    :goto_666
    const/4 v0, 0x0

    invoke-direct {v1, v3, v0}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    move/from16 v0, v55

    :cond_66c
    :goto_66c
    if-nez v8, :cond_671

    invoke-direct {v1, v3, v6, v4}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    :cond_671
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-nez v2, :cond_67d

    if-eqz v9, :cond_678

    goto :goto_67d

    :cond_678
    move/from16 v60, v4

    move/from16 v62, v9

    goto :goto_6c2

    :cond_67d
    :goto_67d
    const/4 v2, 0x0

    if-lez v0, :cond_69f

    move/from16 v59, v2

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mFinalScreenBrightnessDiff:I

    sub-int v2, v3, v2

    sub-int v2, v10, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v60, v4

    move/from16 v61, v5

    int-to-double v4, v2

    move/from16 v63, v8

    move/from16 v62, v9

    int-to-double v8, v0

    div-double/2addr v4, v8

    mul-double v4, v4, v17

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    goto :goto_6a9

    :cond_69f
    move/from16 v59, v2

    move/from16 v60, v4

    move/from16 v61, v5

    move/from16 v63, v8

    move/from16 v62, v9

    :goto_6a9
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mFinalScreenBrightnessDiff:I

    sub-int v4, v3, v4

    invoke-direct {v1, v4, v2}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(II)V

    goto :goto_6c2

    :cond_6b4
    move/from16 v51, v2

    move/from16 v60, v4

    move/from16 v52, v5

    move/from16 v53, v8

    move/from16 v62, v9

    move/from16 v54, v10

    move/from16 v12, v47

    :goto_6c2
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_6cf

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    instance-of v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    if-eqz v0, :cond_6cf

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateForceUpdateAbJob()V

    :cond_6cf
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_6f7

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_6e7

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_6f7

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_6f7

    :cond_6e7
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_6f7

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v0, :cond_6f7

    const/4 v0, 0x1

    goto :goto_6f8

    :cond_6f7
    const/4 v0, 0x0

    :goto_6f8
    move v2, v0

    if-eqz v2, :cond_705

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_705

    const/4 v0, 0x1

    goto :goto_706

    :cond_705
    const/4 v0, 0x0

    :goto_706
    move v4, v0

    if-eqz v2, :cond_721

    const/4 v0, 0x1

    if-eq v7, v0, :cond_721

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v0, :cond_721

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    const-string v0, "DisplayPowerController"

    const-string/jumbo v5, "mWindowManagerPolicy.screenTurnedOn()"

    invoke-static {v0, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    :cond_721
    if-nez v4, :cond_72f

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_72f

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    :cond_72f
    if-eqz v2, :cond_747

    if-eqz v38, :cond_747

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_736
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_73e

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto :goto_73f

    :cond_73e
    const/4 v0, 0x1

    :goto_73f
    monitor-exit v5
    :try_end_740
    .catchall {:try_start_736 .. :try_end_740} :catchall_744

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_748

    :catchall_744
    move-exception v0

    :try_start_745
    monitor-exit v5
    :try_end_746
    .catchall {:try_start_745 .. :try_end_746} :catchall_744

    throw v0

    :cond_747
    const/4 v0, 0x1

    :goto_748
    if-eqz v4, :cond_757

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v5, :cond_757

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v8}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_758

    :cond_757
    const/4 v5, 0x0

    :goto_758
    const/4 v8, 0x2

    if-eq v7, v8, :cond_75c

    goto :goto_75d

    :cond_75c
    move v0, v5

    :goto_75d
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    return-void

    :catchall_760
    move-exception v0

    move/from16 v30, v2

    goto :goto_765

    :catchall_764
    move-exception v0

    :goto_765
    :try_start_765
    monitor-exit v3
    :try_end_766
    .catchall {:try_start_765 .. :try_end_766} :catchall_764

    throw v0

    nop

    :pswitch_data_768
    .packed-switch 0x0
        :pswitch_de
        :pswitch_c9
    .end packed-switch
.end method

.method private updateScreenBrightnessLevelDuration(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    :cond_e
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-gt p1, v1, :cond_15

    const/4 v0, 0x0

    goto :goto_22

    :cond_15
    const/16 v1, 0xe6

    const/16 v2, 0xff

    if-lt p1, v1, :cond_1f

    if-gt p1, v2, :cond_1f

    const/4 v0, 0x1

    goto :goto_22

    :cond_1f
    if-le p1, v2, :cond_22

    const/4 v0, 0x2

    :cond_22
    :goto_22
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    if-eq v1, v0, :cond_35

    if-ltz v0, :cond_30

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    :cond_30
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->addScreenBrightnessLevelDuration()V

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    :cond_35
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    if-nez p1, :cond_4d

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->addScreenBrightnessLevelDuration()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->updateDuration([J)V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->resetScreenBrightnessLevelDuration()V

    :cond_4d
    return-void
.end method

.method private updateSustainableHbm(I)I
    .registers 12

    move v0, p1

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_3c

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    if-le v0, v1, :cond_3c

    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFinalBrightness : batteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    :cond_3c
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    const/16 v3, 0x9

    if-le v0, v2, :cond_9d

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mSustainableHbmExceeded:Z

    const-wide/32 v4, 0x927c0

    if-nez v2, :cond_66

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mForcedSustainableHbmByTimeout:Z

    if-nez v2, :cond_66

    const-string v2, "DisplayPowerController"

    const-string/jumbo v6, "over sustainable hbm"

    invoke-static {v2, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mSustainableHbmExceeded:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    iput-wide v6, p0, Lcom/android/server/display/DisplayPowerController;->mLastSustainableHbmExceededTime:J

    goto :goto_9d

    :cond_66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/display/DisplayPowerController;->mLastSustainableHbmExceededTime:J

    sub-long/2addr v6, v8

    cmp-long v2, v6, v4

    if-ltz v2, :cond_9d

    const-string v2, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFinalBrightness : sustainableHbmDuration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    const/4 v1, 0x1

    :cond_9d
    :goto_9d
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    if-gt v0, v2, :cond_bd

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mSustainableHbmExceeded:Z

    if-eqz v2, :cond_bd

    const-string v2, "DisplayPowerController"

    const-string/jumbo v4, "under sustainable hbm"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_ba

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    :cond_ba
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mSustainableHbmExceeded:Z

    :cond_bd
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mForcedSustainableHbmByTimeout:Z

    return v0
.end method

.method private updateUserSetScreenBrightness()Z
    .registers 5

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v3, -0x1

    if-ne v0, v2, :cond_10

    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    return v1

    :cond_10
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_316

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenExtendedBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateFast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateSlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --SEC_PMS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AUTO_BRIGHTNESS_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessSustainableHbmThresholdConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessSustainableHbmThresholdConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastSustainableHbmExceededTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastSustainableHbmExceededTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AVAILABLE_ADAPTIVE_CONTROL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_ADAPTIVE_CONTROL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_ADAPTIVE_CONTROL:Z

    if-eqz v0, :cond_2dd

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    :goto_274
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveControlValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_294

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveControlValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_274

    :cond_294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   mAdaptiveControlValues= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2a9
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeForClearView:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2c9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeForClearView:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a9

    :cond_2c9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   mScreenBrightnessRangeForClearView= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AVAILABLE_COLOR_WEAKNESS_MODE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_COLOR_WEAKNESS_MODE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mClearViewColorWeaknessEnabledMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_316
    move-exception v1

    :try_start_317
    monitor-exit v0
    :try_end_318
    .catchall {:try_start_317 .. :try_end_318} :catchall_316

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenBrightness()I
    .registers 2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    return v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastAutomaticScreenBrightness()I
    .registers 2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:I

    return v0
.end method

.method public getLastUserSetScreenBrightnessTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    return-wide v0
.end method

.method public isProximitySensorAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onShortTermReset()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    return-void
.end method

.method public onUserPointAdded(FI)V
    .registers 6

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:I

    invoke-interface {v1, v0, p2, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onAutoBrightnessAdjutmentApplied(III)V

    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_12

    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_12

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    const/4 v1, 0x1

    goto :goto_12

    :catchall_f
    move-exception v1

    goto/16 :goto_94

    :cond_12
    :goto_12
    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    if-eqz v3, :cond_36

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    if-nez v3, :cond_36

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    const/4 v1, 0x1

    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPendingScreenOnEvenThoughProximityPositiveLocked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    if-eqz v3, :cond_41

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    if-nez v3, :cond_41

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    const/4 v1, 0x1

    :cond_41
    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    if-eqz v3, :cond_65

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpLocked:Z

    if-nez v3, :cond_65

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpLocked:Z

    const/4 v1, 0x1

    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPendingEarlyWakeUpLocked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v3, :cond_72

    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x1

    goto :goto_80

    :cond_72
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_80

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    const/4 v1, 0x1

    :cond_80
    :goto_80
    if-eqz v1, :cond_85

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    :cond_85
    if-eqz v1, :cond_90

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_90

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    :cond_90
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    :goto_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_7 .. :try_end_95} :catchall_f

    throw v1
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x0

    if-nez p1, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessConfigurationTime:J

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    return-void
.end method

.method public setTemporaryBrightness(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-ltz p1, :cond_10

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    :cond_10
    return-void
.end method

.method public setTemporaryBrightnessForSlowChange(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateBrightness()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method
