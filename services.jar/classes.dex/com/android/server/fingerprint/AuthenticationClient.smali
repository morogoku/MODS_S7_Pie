.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1

.field private static final MOTION_EVENT_MOVE:I = 0x2

.field private static final MOTION_EVENT_NO_MOVE:I = 0x1

.field private static final SEM_STATUS_SCREEN_OFF:I = 0x1

.field private static final SEM_STATUS_SCREEN_ON:I


# instance fields
.field private final DVFS_TIMEOUT:I

.field private final NEED_WAKELOCK:I

.field private final NO_NEED_WAKELOCK:I

.field private final SEM_DOZE_RESET_TIME:I

.field private final SEM_FINGER_ICON_TRIGGER_BAD_QUALITY:I

.field private final SEM_FINGER_ICON_TRIGGER_MOVE:I

.field private final SEM_FINGER_ICON_TRIGGER_NO_MATCH:I

.field private final SEM_FINGER_ICON_TRIGGER_TAP:I

.field private USE_AOSP_PROMPT:Z

.field private final VIEW_FAILTEXT:I

.field private final VIEW_FINGERPRINT_ICON:I

.field private bSelfStop:Z

.field private mAlreadyShowing:Z

.field private mBundle:Landroid/os/Bundle;

.field private mCaptureStartTime:J

.field private mDexWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mDialogDismissed:Z

.field protected mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayState:I

.field private mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mFingerIconHideTime:J

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasReceivedCaptureFailedEvent:Z

.field private mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

.field private mInLockout:Z

.field private mIsAdaptiveIconEnabled:Z

.field private mIsFingerIconShowing:Z

.field private mIsHLPMOn:Z

.field private mLatestError:I

.field private mLimitDisplayState:Z

.field private mMoveMotionSensor:Landroid/hardware/Sensor;

.field private mMoveSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mOpId:J

.field private mOrientationScreen:I

.field private mPendingDoze:Ljava/lang/Runnable;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreOrientationScreen:I

.field private mPromptPrivilegedFlag:I

.field private mQualityErrorCount:I

.field private mRejectCount:I

.field private mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

.field private mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

.field private mScreenStatus:I

.field private final mSemHideFingerIconRunnable:Ljava/lang/Runnable;

.field private mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSkipSystemUiMessage:Z

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTimeForTouchDown:J

.field private mTouchDownPress:Z

.field private mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;Landroid/hardware/display/DisplayManagerInternal;)V
    .registers 28

    move-object v10, p0

    move-object/from16 v11, p12

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    const/4 v1, 0x0

    iput-object v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->NO_NEED_WAKELOCK:I

    const/4 v2, 0x1

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->NEED_WAKELOCK:I

    iput-object v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mMoveMotionSensor:Landroid/hardware/Sensor;

    const/16 v3, 0x1388

    iput v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_DOZE_RESET_TIME:I

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->VIEW_FAILTEXT:I

    const/4 v3, 0x2

    iput v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->VIEW_FINGERPRINT_ICON:I

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_FINGER_ICON_TRIGGER_TAP:I

    iput v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_FINGER_ICON_TRIGGER_MOVE:I

    const/4 v3, 0x3

    iput v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_FINGER_ICON_TRIGGER_NO_MATCH:I

    const/4 v3, 0x4

    iput v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_FINGER_ICON_TRIGGER_BAD_QUALITY:I

    const/16 v3, 0x1f4

    iput v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->DVFS_TIMEOUT:I

    iput-object v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPreOrientationScreen:I

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mOrientationScreen:I

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mIsHLPMOn:Z

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    new-instance v3, Lcom/android/server/fingerprint/AuthenticationClient$1;

    invoke-direct {v3, v10}, Lcom/android/server/fingerprint/AuthenticationClient$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    iput-object v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    const-wide/16 v3, 0x0

    iput-wide v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerIconHideTime:J

    iput-object v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/server/fingerprint/AuthenticationClient$2;

    invoke-direct {v3, v10}, Lcom/android/server/fingerprint/AuthenticationClient$2;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    new-instance v3, Lcom/android/server/fingerprint/AuthenticationClient$6;

    invoke-direct {v3, v10}, Lcom/android/server/fingerprint/AuthenticationClient$6;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mMoveSensorEventListener:Landroid/hardware/SensorEventListener;

    move-wide/from16 v3, p8

    iput-wide v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    iput-object v11, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    move-object/from16 v5, p13

    iput-object v5, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object/from16 v6, p14

    iput-object v6, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "fingerprint"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v7, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v8, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {v7, v8}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;-><init>(Lcom/android/internal/statusbar/IStatusBarService;)V

    iput-object v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_fc

    iget-object v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "sem_bio_prompt"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_fa

    iget-object v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "sem_prompt_privileged_flag"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    sget-boolean v1, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v1, :cond_d0

    const-string v1, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AuthenticationClient : Prompt Privileged Flag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sem_debug_aosp_ux"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    goto :goto_e8

    :cond_d0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AuthenticationClient : P = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e8
    iget v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_f2

    iget v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPrivilegedAttr:I

    or-int/2addr v0, v2

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPrivilegedAttr:I

    :cond_f2
    new-instance v0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$radMK5Tbxv_kFy8ifmVk4QNVx3Y;

    invoke-direct {v0, v10}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$radMK5Tbxv_kFy8ifmVk4QNVx3Y;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    goto :goto_fc

    :cond_fa
    iput-object v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    :cond_fc
    :goto_fc
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_10c

    invoke-direct {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->initForInDisplaySensor()V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_10c

    move-object/from16 v0, p15

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    goto :goto_10e

    :cond_10c
    move-object/from16 v0, p15

    :goto_10e
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/AuthenticationClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->handleSystemUIEventForInDisplaySensor(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/AuthenticationClient;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/AuthenticationClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->semShowFingerIcon(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/display/DisplayManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/AuthenticationClient;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/AuthenticationClient;)I
    .registers 2

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/fingerprint/AuthenticationClient;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/AuthenticationClient;)I
    .registers 2

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    return v0
.end method

.method private acquireDVFS(I)V
    .registers 7

    const-string v0, "FingerprintService"

    const-string v1, "acquireDVFS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_26

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BIO_FACE_SERVICE"

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_26

    const-string v1, "FingerprintService"

    const-string v2, "acquireDVFS: can\'t get SemDvfsManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    const v2, 0x1e8480

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v1

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireDVFS: set="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_11
    return-void
.end method

.method private handleSystemUIEventForInDisplaySensor(I)V
    .registers 8

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSystemUIEventForInDisplaySensor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2711

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8d

    const/16 v0, 0x271a

    if-eq p1, v0, :cond_82

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_a6

    goto/16 :goto_a3

    :pswitch_27
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semDeliveryTouchEvent(Z)I

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleOverlayMaskView(Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleSensorView(Z)V

    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTouchDownPress:Z

    if-eqz v0, :cond_52

    iget-wide v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeForTouchDown:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$yrLsjDrI_Vxj7sq2LgQj6NIom8s;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$yrLsjDrI_Vxj7sq2LgQj6NIom8s;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_52
    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTouchDownPress:Z

    goto :goto_a3

    :pswitch_55
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->acquireDVFS(I)V

    iput-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeForTouchDown:J

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTouchDownPress:Z

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_a3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    if-nez v0, :cond_77

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    :cond_77
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleOverlayMaskView(Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleSensorView(Z)V

    goto :goto_a3

    :cond_82
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$MwncI4GBDM7aI9b0I4ku_W7IKNE;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$MwncI4GBDM7aI9b0I4ku_W7IKNE;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a3

    :cond_8d
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_a3

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    if-ne v0, v1, :cond_a3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$t7XBM9nrIWMGbMEbRXiQjjPtNvc;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$t7XBM9nrIWMGbMEbRXiQjjPtNvc;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a3
    :goto_a3
    return-void

    nop

    nop

    :pswitch_data_a6
    .packed-switch 0x4e21
        :pswitch_55
        :pswitch_27
    .end packed-switch
.end method

.method private initForInDisplaySensor()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "FingerprintService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsDualDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_36

    const v1, 0x1000000a

    const-string/jumbo v3, "finger icon show in desktop mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_36
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10039

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mMoveMotionSensor:Landroid/hardware/Sensor;

    :cond_53
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAdaptiveIconEnabled(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v1, :cond_7f

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$a1iGOoRXTNvdCQ03uRzM-lun_cc;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$a1iGOoRXTNvdCQ03uRzM-lun_cc;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    :cond_7f
    return-void
.end method

.method public static synthetic lambda$handleSystemUIEventForInDisplaySensor$4(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 4

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1b

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_c

    goto :goto_1b

    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semDozeControl(Z)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$7;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/AuthenticationClient$7;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    goto :goto_1e

    :cond_1b
    :goto_1b
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semShowFingerIcon(I)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static synthetic lambda$handleSystemUIEventForInDisplaySensor$5(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalError(II)V

    return-void
.end method

.method public static synthetic lambda$handleSystemUIEventForInDisplaySensor$6(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 4

    const/4 v0, 0x6

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    const/16 v1, 0x2714

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    return-void
.end method

.method public static synthetic lambda$initForInDisplaySensor$3(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeForTouchDown:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semDeliveryTouchEvent(Z)I

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalError(II)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$86KO7z9M7RpWIoHxhA7DzXG_vQE;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$86KO7z9M7RpWIoHxhA7DzXG_vQE;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$start$2(Lcom/android/server/fingerprint/AuthenticationClient;ILjava/util/ArrayList;)V
    .registers 3

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRequestApiResult:I

    return-void
.end method

.method private releaseDVFS()V
    .registers 3

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "releaseDVFS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_11
    return-void
.end method

.method private releaseWakeLock()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_11
    return-void
.end method

.method private semDexWakeLock()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsDualDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAttr:Landroid/os/Bundle;

    if-nez v0, :cond_f

    goto :goto_58

    :cond_f
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAttr:Landroid/os/Bundle;

    const-string v1, "DISPLAY_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_57

    if-nez v0, :cond_1d

    goto :goto_57

    :cond_1d
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_56

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_56

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semDexWakeLock acquire"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sem_fingerprint_dex_guide_toast"

    invoke-static {v2, v3}, Lcom/android/server/fingerprint/FingerprintUtils$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->semSetPreferredDisplayType(I)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_56
    return-void

    :cond_57
    :goto_57
    return-void

    :cond_58
    :goto_58
    return-void
.end method

.method private semHLPMState(Z)V
    .registers 4

    if-eqz p1, :cond_9

    const-string/jumbo v0, "fod_enable,1,1"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    goto :goto_14

    :cond_9
    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const-string/jumbo v0, "fod_enable,1,0"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_14
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHLPMControl(Z)V

    return-void
.end method

.method private semHideFingerIcon()V
    .registers 4

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-nez v0, :cond_9

    goto :goto_43

    :cond_9
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    if-eqz v0, :cond_1d

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    :cond_1d
    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_27

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2a

    :cond_27
    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semDozeControl(Z)V

    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsHLPMOn:Z

    if-eqz v0, :cond_31

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHLPMState(Z)V

    :cond_31
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideFingerprintGuideView(I)V

    :cond_3b
    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsHLPMOn:Z

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->releaseWakeLock()V

    return-void

    :cond_43
    :goto_43
    return-void
.end method

.method private semRegisterSensorEventListener()V
    .registers 5

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "semRegisterSensorEventListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mMoveMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mMoveSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mMoveMotionSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1e
    return-void
.end method

.method private semShowFingerIcon(I)V
    .registers 9

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semShowFingerIcon called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->acquireWakeLock()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsHLPMOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3d

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHLPMState(Z)V

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsHLPMOn:Z

    :cond_3d
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semMoveSensorIcon(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->startSensorIconAnimation(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerIconHideTime:J

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_68

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FPMV"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_68
    return-void
.end method

.method private semUnregisterSensorEventListener()V
    .registers 3

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "semUnRegisterSensorEventListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mMoveMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mMoveSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1b
    return-void
.end method

.method private semWriteEventLog(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    neg-int p1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_stop"

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private showPromptOrCue()V
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyShowing:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string v1, "AuthenticationClient: showPromptOrCue: Already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v0, :cond_6d

    :try_start_16
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_38

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorAreaWidth:Ljava/lang/String;

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorAreaHeight:Ljava/lang/String;

    aput-object v4, v0, v6

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorMarginBottom:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorMarginLeft:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorImageSize:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "sem_area"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_38
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_4d} :catch_4e

    goto :goto_56

    :catch_4e
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Unable to show fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_dd

    :cond_6d
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_dd

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorAreaWidth:Ljava/lang/String;

    aput-object v8, v5, v4

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorAreaHeight:Ljava/lang/String;

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorMarginBottom:Ljava/lang/String;

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorMarginLeft:Ljava/lang/String;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorImageSize:Ljava/lang/String;

    aput-object v2, v5, v1

    const-string/jumbo v1, "sem_area"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v1, "sem_adaptive_icon"

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v1

    if-eqz v1, :cond_b5

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v1, :cond_b4

    const/16 v7, 0x10

    goto :goto_b5

    :cond_b4
    const/4 v7, 0x2

    :cond_b5
    :goto_b5
    const-string/jumbo v1, "sem_ux_type"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v1, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v1, :cond_d6

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start : MASK TYPE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->showAuthenticationCue(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    :cond_dd
    :goto_dd
    iput-boolean v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyShowing:Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->bSelfStop:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semWriteEventLog(I)V

    return-void
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public onAcquired(II)Z
    .registers 13

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    if-nez p1, :cond_13

    const-string v1, "FingerprintService"

    const-string/jumbo v3, "onAcquired: Invalid capture feedback change to FINGERPRINT_ACQUIRED_IMAGER_DIRTY"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    :cond_13
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-eqz v3, :cond_56

    if-eqz p1, :cond_52

    if-eqz v1, :cond_52

    :try_start_23
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V

    goto :goto_52

    :cond_2d
    if-ne v4, p1, :cond_35

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, p2, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V

    goto :goto_52

    :cond_35
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3a} :catch_3d
    .catchall {:try_start_23 .. :try_end_3a} :catchall_3b

    goto :goto_52

    :catchall_3b
    move-exception v2

    goto :goto_4c

    :catch_3d
    move-exception v3

    :try_start_3e
    const-string v6, "FingerprintService"

    const-string v7, "Remote exception when sending acquired message"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    const/4 v0, 0x1

    if-nez p1, :cond_8e

    :goto_48
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    goto :goto_8e

    :goto_4c
    if-nez p1, :cond_51

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_51
    throw v2

    :cond_52
    :goto_52
    const/4 v0, 0x0

    if-nez p1, :cond_8e

    goto :goto_48

    :cond_56
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_8a

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v3

    if-nez v3, :cond_71

    if-eqz v1, :cond_71

    if-ne v4, p1, :cond_6c

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, p2, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V

    goto :goto_71

    :cond_6c
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V

    :cond_71
    :goto_71
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v3, :cond_8a

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    if-eqz v3, :cond_8a

    iget v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    if-ne v3, v5, :cond_8a

    if-ne v4, p1, :cond_85

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, p2, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V

    goto :goto_8a

    :cond_85
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V

    :cond_8a
    :goto_8a
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    :cond_8e
    :goto_8e
    if-ne p1, v4, :cond_152

    packed-switch p2, :pswitch_data_1a4

    goto/16 :goto_152

    :pswitch_95
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_a8
    iget v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    if-ne v3, v5, :cond_152

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    iget v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    and-int/2addr v3, v5

    if-nez v3, :cond_ba

    invoke-virtual {p0, v5}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    const/4 v0, 0x1

    goto/16 :goto_152

    :cond_ba
    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDone:Z

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/fingerprint/-$$Lambda$7N9c8BJ1q2kD2rOr-cJ8b4Oy3UU;

    invoke-direct {v4, p0}, Lcom/android/server/fingerprint/-$$Lambda$7N9c8BJ1q2kD2rOr-cJ8b4Oy3UU;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_152

    :pswitch_c9
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v3, :cond_152

    const/16 v3, 0x2716

    if-ne p2, v3, :cond_d3

    iput-boolean v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    :cond_d3
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleOverlayMaskView(Z)V

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleSensorView(Z)V

    goto :goto_152

    :pswitch_de
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    iget-wide v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    invoke-static {v3, v4}, Lcom/android/server/fingerprint/BioLoggingManager;->setStartTime(J)V

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_147

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v3, :cond_147

    iget v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    if-ne v3, v5, :cond_124

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAODShowState(Landroid/content/Context;IZ)Z

    move-result v3

    if-eqz v3, :cond_10a

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3, v5}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideFingerprintGuideView(I)V

    :cond_10a
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->acquireWakeLock()V

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerIconHideTime:J

    :cond_124
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    if-nez v3, :cond_133

    new-instance v3, Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/fingerprint/SemVisualEffectView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    :cond_133
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/fingerprint/SemVisualEffectView;->start(Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;)V

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    iget-object v3, v3, Lcom/android/server/fingerprint/SemVisualEffectView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPreOrientationScreen:I

    :cond_147
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_152

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_152
    :goto_152
    invoke-virtual {p0, p1, p2}, Lcom/android/server/fingerprint/AuthenticationClient;->semIsQualityFailedInfo(II)Z

    move-result v3

    if-eqz v3, :cond_19e

    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_18e

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    if-eqz v3, :cond_165

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {v3, v2, v2}, Lcom/android/server/fingerprint/SemVisualEffectView;->setReadTouchMap(ZZ)V

    :cond_165
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v2, :cond_18e

    iget v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    if-ne v2, v5, :cond_18e

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    if-eqz v2, :cond_18e

    iget v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v2, v3, :cond_18b

    iget v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    if-ne v2, v4, :cond_17c

    goto :goto_18b

    :cond_17c
    invoke-virtual {p0, v5}, Lcom/android/server/fingerprint/AuthenticationClient;->semDozeControl(Z)V

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    if-nez v2, :cond_18e

    new-instance v2, Lcom/android/server/fingerprint/AuthenticationClient$3;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/AuthenticationClient$3;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    goto :goto_18e

    :cond_18b
    :goto_18b
    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/AuthenticationClient;->semShowFingerIcon(I)V

    :cond_18e
    :goto_18e
    iget v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v2

    if-nez v2, :cond_19e

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    :cond_19e
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->semLoggingQualityErrorInfo(I)V

    return v0

    nop

    nop

    :pswitch_data_1a4
    .packed-switch 0x2712
        :pswitch_de
        :pswitch_c9
        :pswitch_95
        :pswitch_c9
        :pswitch_c9
        :pswitch_95
    .end packed-switch
.end method

.method public onAuthenticated(II)Z
    .registers 30

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_d

    move v0, v12

    goto :goto_e

    :cond_d
    move v0, v11

    :goto_e
    move v13, v0

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->releaseDVFS()V

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    iget v2, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    if-ne v2, v12, :cond_22

    move v2, v12

    goto :goto_23

    :cond_22
    move v2, v11

    :goto_23
    invoke-virtual {v0, v11, v2}, Lcom/android/server/fingerprint/SemVisualEffectView;->setReadTouchMap(ZZ)V

    :cond_26
    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_54

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] : onAuthenticated : fpId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    if-eqz v13, :cond_5a

    iput v12, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    iput-boolean v12, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    :cond_5a
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const v2, 0x1040978

    if-eqz v0, :cond_d5

    if-eqz v13, :cond_a0

    :try_start_63
    iget v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_98

    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_82

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetFingerprintName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V

    goto :goto_d3

    :cond_82
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetFingerprintName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onAuthenticatedName(Ljava/lang/String;)V

    goto :goto_d3

    :cond_98
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V

    goto :goto_d3

    :catch_9e
    move-exception v0

    goto :goto_cb

    :cond_a0
    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_b9

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104036b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V

    goto :goto_d3

    :cond_b9
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onAuthenticationFailed(Ljava/lang/String;)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_ca} :catch_9e

    goto :goto_d3

    :goto_cb
    nop

    const-string v2, "FingerprintService"

    const-string v3, "Failed to notify Authenticated:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    goto/16 :goto_14b

    :cond_d5
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_14b

    if-eqz v13, :cond_ff

    :try_start_db
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V

    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_fe

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_f3

    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    if-eqz v0, :cond_f3

    iput-boolean v11, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v11}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    :cond_f3
    iput v11, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_db .. :try_end_f5} :catch_f6

    goto :goto_fe

    :catch_f6
    move-exception v0

    const-string v2, "FingerprintService"

    const-string v3, "Failed to notify Authenticated:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_fe
    :goto_fe
    goto :goto_14b

    :cond_ff
    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_13a

    iget v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    if-ne v0, v12, :cond_13a

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onAuthenticationFailed(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    if-eqz v0, :cond_14b

    iget v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_136

    iget v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_127

    goto :goto_136

    :cond_127
    invoke-virtual {v1, v12}, Lcom/android/server/fingerprint/AuthenticationClient;->semDozeControl(Z)V

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    if-nez v0, :cond_14b

    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$4;

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$4;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    goto :goto_14b

    :cond_136
    :goto_136
    invoke-direct {v1, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semShowFingerIcon(I)V

    goto :goto_14b

    :cond_13a
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onAuthenticationFailed(Ljava/lang/String;)V

    :cond_14b
    :goto_14b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v14

    if-eqz v14, :cond_1d7

    :try_start_151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xfc

    invoke-static {v0, v2, v13}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-nez v13, :cond_169

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v14, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    const-string v0, "N"

    invoke-static {v0}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V

    goto :goto_1d6

    :cond_169
    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_19d

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticated(owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v0

    if-nez v0, :cond_1b2

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v3, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v6

    move-object v2, v0

    move v4, v9

    move v5, v8

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    goto :goto_1b3

    :cond_1b2
    const/4 v0, 0x0

    :goto_1b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v4

    invoke-interface {v14, v2, v3, v0, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    iput-boolean v12, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDone:Z

    const-string v2, "M"

    invoke-static {v2}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V
    :try_end_1c5
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_1c5} :catch_1c6
    .catch Ljava/lang/NullPointerException; {:try_start_151 .. :try_end_1c5} :catch_1c6

    goto :goto_1d6

    :catch_1c6
    move-exception v0

    const-string v2, "FingerprintService"

    const-string v3, "Failed to notify Authenticated:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x1

    iput v11, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    const-string v2, "E"

    invoke-static {v2}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V

    :goto_1d6
    goto :goto_1df

    :cond_1d7
    const/4 v10, 0x1

    iput v11, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    const-string v0, ""

    invoke-static {v0}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V

    :goto_1df
    if-nez v13, :cond_291

    if-eqz v14, :cond_1ee

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v0

    if-nez v0, :cond_1ee

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    :cond_1ee
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()I

    move-result v2

    if-eqz v2, :cond_25c

    :try_start_1f4
    iput-boolean v12, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    const-string v0, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing lockout (fp driver code should do this!), mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    iput v11, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    if-ne v2, v12, :cond_21a

    const/4 v0, 0x7

    goto :goto_21c

    :cond_21a
    const/16 v0, 0x9

    :goto_21c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v3

    invoke-interface {v14, v3, v4, v0, v11}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    iget-object v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_233

    iget-object v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, v0, v11}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V

    goto :goto_242

    :cond_233
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_242

    iget-object v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v4, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, v0, v11}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onError(ILjava/lang/String;)V

    :cond_242
    :goto_242
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "FPIB"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    const/16 v20, 0x3

    invoke-static/range {v15 .. v20}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_253
    .catch Landroid/os/RemoteException; {:try_start_1f4 .. :try_end_253} :catch_254

    goto :goto_25c

    :catch_254
    move-exception v0

    const-string v3, "FingerprintService"

    const-string v4, "Failed to notify lockout:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25c
    :goto_25c
    if-eqz v2, :cond_260

    move v11, v12

    nop

    :cond_260
    or-int v0, v10, v11

    iget v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    add-int/2addr v3, v12

    iput v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "FPIF"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    const/16 v20, 0x3

    invoke-static/range {v15 .. v20}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "FPTF"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    const-wide/16 v24, -0x1

    const/16 v26, 0x1

    invoke-static/range {v21 .. v26}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_2e2

    :cond_291
    or-int/lit8 v0, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FPIS"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "FPTS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    const/16 v20, 0x1

    invoke-static/range {v15 .. v20}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FPSF"

    iget v4, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "FPSQ"

    iget v2, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v20}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    :goto_2e2
    sget-boolean v2, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v2, :cond_308

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] : onAuthenticated : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_308
    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .registers 7

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->releaseDVFS()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    const/16 v0, 0x8

    if-ne p1, v0, :cond_19

    iput p2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    goto :goto_1e

    :cond_19
    const/4 v0, 0x5

    if-eq p1, v0, :cond_1e

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    return v1

    :cond_24
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3d

    :try_start_28
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception v0

    const-string v2, "FingerprintService"

    const-string v3, "Remote exception when sending error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3c
    goto :goto_73

    :cond_3d
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onError(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_73

    :try_start_62
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_6a

    goto :goto_73

    :catch_6a
    move-exception v0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "stop: failure to unregisterDisplayListener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_73
    :goto_73
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_96

    const-string/jumbo v0, "fod_enable,0"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    if-eqz v0, :cond_8d

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    :cond_8d
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    :cond_96
    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v0

    return v0
.end method

.method public onRemoved(III)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public abstract semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
.end method

.method public abstract semDozeControl(Z)V
.end method

.method public semGetRemainTimeFingerIcon()J
    .registers 6

    iget-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerIconHideTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_e

    return-wide v2

    :cond_e
    return-wide v0
.end method

.method public abstract semHLPMControl(Z)V
.end method

.method public abstract semHandleInternalAcquired(II)V
.end method

.method public abstract semHandleInternalError(II)V
.end method

.method semHandlePendingStatus()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->showPromptOrCue()V

    return-void
.end method

.method semHandleRequestCommand(I)I
    .registers 4

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_9

    goto :goto_17

    :cond_9
    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public semMoveSensorIcon(I)V
    .registers 3

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->moveSensorIcon(I)V

    :cond_9
    return-void
.end method

.method public semScreenStatus(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semScreenStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-nez v0, :cond_20

    return-void

    :cond_20
    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    packed-switch v0, :pswitch_data_60

    goto :goto_5d

    :pswitch_28
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onScreenOff()V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "fod_enable,1,0"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    goto :goto_5d

    :pswitch_38
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onScreenOn()V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "fod_enable,1,1"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    if-eqz v0, :cond_5d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    :cond_5d
    :goto_5d
    return-void

    nop

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_38
        :pswitch_28
    .end packed-switch
.end method

.method public start()I
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    const/4 v7, 0x3

    if-nez v0, :cond_12

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "start authentication: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_12
    :try_start_12
    const-string v1, "A"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/BioLoggingManager;->setType(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_a3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetAspLevel(Landroid/content/Context;I)I

    move-result v1

    move v8, v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v9, v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    new-instance v6, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$Tp0IKZYJemoYLZ7_x9pyQQR8pbA;

    invoke-direct {v6, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$Tp0IKZYJemoYLZ7_x9pyQQR8pbA;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    move-object v1, v0

    move v4, v8

    invoke-interface/range {v1 .. v6}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAuthentication("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") FP_FINISH ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms) RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRequestApiResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v1, :cond_9d

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    if-eqz v1, :cond_9d

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_9d

    new-instance v1, Lcom/android/server/fingerprint/AuthenticationClient$5;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/AuthenticationClient$5;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_9d
    const-string/jumbo v1, "fod_enable,1,1"

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_a3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->authenticate(JI)I

    move-result v3

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v3, :cond_ff

    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startAuthentication failed, result="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "fingeprintd_auth_start_error"

    invoke-static {v5, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    return v3

    :cond_ff
    sget-boolean v5, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v5, :cond_122

    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is authenticating..."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_122
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStart()V

    iput-boolean v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semDexWakeLock()V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->showPromptOrCue()V
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12d} :catch_12f

    nop

    return v4

    :catch_12f
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startAuthentication failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method public stop(Z)I
    .registers 12

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    iput-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->bSelfStop:Z

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1b
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_46

    :try_start_35
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3d

    goto :goto_46

    :catch_3d
    move-exception v0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "stop: failure to unregisterDisplayListener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    :goto_46
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_68

    const-string/jumbo v0, "fod_enable,0"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    if-eqz v0, :cond_5f

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLimitDisplayState:Z

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(I)V

    :cond_5f
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    :cond_68
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const/4 v2, 0x3

    if-nez v0, :cond_7b

    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7b
    :try_start_7b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v5

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_fa

    const-string v1, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopAuthentication failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_c1} :catch_15a
    .catchall {:try_start_7b .. :try_end_c1} :catchall_158

    nop

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v1, :cond_f9

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_ec

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v1, :cond_ec

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v1, :cond_ec

    :try_start_d2
    sget-boolean v1, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v1, :cond_de

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication : hideFingerprintDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_e3} :catch_e4

    goto :goto_ec

    :catch_e4
    move-exception v1

    const-string v2, "FingerprintService"

    const-string v6, "Unable to hide fingerprint dialog"

    invoke-static {v2, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ec
    :goto_ec
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_f9

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v1, :cond_f9

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    :cond_f9
    return v5

    :cond_fa
    :try_start_fa
    sget-boolean v6, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v6, :cond_11d

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is no longer authenticating"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_11d} :catch_15a
    .catchall {:try_start_fa .. :try_end_11d} :catchall_158

    :cond_11d
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v2, :cond_154

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_147

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_147

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_147

    :try_start_12d
    sget-boolean v2, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v2, :cond_139

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication : hideFingerprintDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_13e} :catch_13f

    goto :goto_147

    :catch_13f
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_147
    :goto_147
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_154

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_154

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    :cond_154
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    return v1

    :catchall_158
    move-exception v1

    goto :goto_19c

    :catch_15a
    move-exception v1

    :try_start_15b
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_163
    .catchall {:try_start_15b .. :try_end_163} :catchall_158

    nop

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v3, :cond_19b

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_18e

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v3, :cond_18e

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v3, :cond_18e

    :try_start_174
    sget-boolean v3, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v3, :cond_180

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication : hideFingerprintDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_180
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_185
    .catch Landroid/os/RemoteException; {:try_start_174 .. :try_end_185} :catch_186

    goto :goto_18e

    :catch_186
    move-exception v3

    const-string v4, "FingerprintService"

    const-string v5, "Unable to hide fingerprint dialog"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18e
    :goto_18e
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_19b

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v3, :cond_19b

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    :cond_19b
    return v2

    :goto_19c
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v2, :cond_1d3

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1c6

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_1c6

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_1c6

    :try_start_1ac
    sget-boolean v2, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v2, :cond_1b8

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication : hideFingerprintDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b8
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_1bd
    .catch Landroid/os/RemoteException; {:try_start_1ac .. :try_end_1bd} :catch_1be

    goto :goto_1c6

    :catch_1be
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c6
    :goto_1c6
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_1d3

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_1d3

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    :cond_1d3
    throw v1
.end method
